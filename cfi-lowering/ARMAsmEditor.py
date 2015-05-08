'''
#------------------------------ ARMAsmEditor.py -------------------------------#
#                                                                              #
#    This is an ARM-specific subclass for transforming annotated ARM asm.      #
#    Much of the implementation is ARM-specific, but this class can be used    #
#    as a model for lowering other architectures.                              #
#                                                                              #
#------------------------------------------------------------------------------#
'''
import re
import itertools
from AsmEditorBase import AsmEditorBase

class ARMAsmEditor(AsmEditorBase):

    ''' ARM Opcode specifics '''

    # program counter aliases
    pc_names = ['pc', 'r15']

    # store instruction aliases
    str_bases = ['str']

    # branch instructions
    branch_bases = ['b', 'bl', 'bx', 'blx']

    # ARM condition codes
    cond_codes = ['eq', 'ne', 'cs', 'hs',
                  'cc', 'lo', 'mi', 'pl',
                  'vs', 'vc', 'hi', 'ls',
                  'ge', 'lt', 'gt', 'le',
                  'al', '']

    # general purpose registers
    gpr_names = ['r0', 'r1', 'r2', 'r3',
                 'r4', 'r5', 'r6', 'r7',
                 'r8', 'r9', 'r10', 'r11',
                 'r12', 'r13', 'r14', 'r15'
                 'sp', 'lr', 'pc']

    # complete set of conditional branch instructions
    branch_codes = [a + b for \
            a, b in itertools.product(branch_bases, cond_codes)]

    # complete set of conditional store instructions
    str_codes = [a + b for a, b in itertools.product(str_bases, cond_codes)] 

    def error(self, msg):
        ''' print error message '''
        print("\nARMAsmEditorError: " + msg)

    def is_transfer_instr(self, split):
        ''' determine if instruction is a control transfer instruction.
        
        split:    instruction in stripped, split, string format
        
        return:         True if instruction is a transfer, else false
        ''' 

        # return False for blank links
        if len(split) < 2:
            return False
        
        opcode  = split[0]
        operand = split[1]

        if opcode in self.branch_codes:
            return True
        elif operand in self.pc_names:
            return True
        elif "ldm" in opcode or "pop" in opcode:
            #iterate through elements in instruction string
            #ex. ["ldmfd", "sp,", "r0-r5,", "r12-r15"]
            #TODO: better parsing of load (using semantics)
            for operand in split[2:]:
                if any(pc_name in operand for pc_name in self.pc_names):
                    return True
        return False

    def insert_id(self, asm_new, id_str):
        ''' insert a cfi id into the assembly.
        
        asm_new:        assembly instructions to insert ID into
        id_str:         id to insert, in format "#12345"
        
        No return value
        ''' 
        #default encoding is "movtne <id>"
        if self.encode_type in ["", "mov"]:
            #TODO: make sure id is only 16 bits long
            asm_new.append("\t@ [ ====== CFI ID end ====== ]\n")
            asm_new.append("\tmovtne r12, " + id_str + "\n")
            asm_new.append("\t@ [ ====== CFI ID begin ====== ]\n")
        else:
            self.error("Not supporting encoding type of \"" +
                       self.encode_type + "\"")

    def insert_ID_check(self, asm_new, id_str, r_temp, first_id):
        ''' insert a cfi check into the assembly.
        
        asm_new:        assembly instructions to insert ID into
        id_str:         id to check against, in format "#12345"
        r_temp:         temporary register to use
        first_id:       flag, True if this is the first id to check
        
        No return value
        ''' 
        if first_id:
            asm_new.append("\tmovtne r12, " + id_str + "\t@ ID encoding, nop\n")
            asm_new.append("\tldr r12, [pc, #-12] \t@ get ID encoding\n")
            asm_new.append("\tcmp " + r_temp + ", r12\n")
        else:
            asm_new.append("\tmovtne r12, " + id_str + "\t@ extra ID\n")
            asm_new.append("\tldrne r12, [pc, #-12]\n")
            asm_new.append("\tcmpne " + r_temp + ", r12\n")

    def insert_check(self, line, split, asm_new, ids, check_tar):
        ''' try to insert cfi id checking code into the asm. 
            An instruction is parsed to look for a transfer instruction,
            specifically an indirect transfer. When one is found, we lower
            a snippet of monitor code that "checks" the IDs that we've 
            accumulated for this transfer site.

        
        line:           asm line to insert check before
        split:          split version of asm line
        asm_new:        assembly instructions to insert check into
        ids:            list of IDs that need to be checked
        check_tar:      flag for type of check (check_tar vs check_ret)

        return:        True on sucessful insertion, else false
        ''' 

        if len(ids) < 1:
            self.error('insert_check: ids is empty')
            return False

        # only insert checks before possible transfer instructions
        if not self.is_transfer_instr(split):
            return False

        # flag if this instruction is a branch
        is_br = False
        # flag if this instruction uses r15
        uses_pc = False

        opcode  = split[0]
        operand = split[1]

        if opcode in self.branch_codes:
            is_br = True
        elif operand in self.pc_names:
            uses_pc = True

        # handle weird loads (not normal 3 register format)
        if "ldm" in opcode or "pop" in opcode:
            reserved_flag = False
            for r_dest in split[2:]:
                if any(reserved in r_dest for reserved in ['r12']):
                    reserved_flag = True 

            for r_dest in split[2:]:
                if any(pc_name in r_dest for pc_name in self.pc_names):
                    if reserved_flag:
                        raise Exception('indirect branch ldm/pop also \
                                loading to r12... we need to insert a \
                                `special case in check lowering')
                    '''
                    TODO: make sure r12-r14 are not being loaded to
                    '''
                    new_load = re.sub('|'.join(self.pc_names), "r12", line)

                    if check_tar:
                        asm_new.append("\t@ [ === CFI checktar begin === ]\n")
                    else:
                        asm_new.append("\t@ [ === CFI checkret begin === ]\n")
                    asm_new.append("\t@ [ === " + ' '.join(split) + " === ]\n")
                    asm_new.append(new_load)
                    asm_new.append("\tpush {r0, r1}\n")
                    asm_new.append("\tldr r0, [r12] \t@ get destination ID\n")
                    asm_new.append("\tmov r1, r12 \t@ preserve dest addr\n")
                    self.insert_ID_check(asm_new, ids.pop(0), "r0", True)
                    for extra_id in ids:
                        self.insert_ID_check(asm_new, extra_id, "r0", False)
                    asm_new.append("\tbne cfi_abort\n")
                    asm_new.append("\tmov r12, r1 \t@ restore dest addr\n")
                    asm_new.append("\tpop {r0, r1}\n")
                    if check_tar:
                        asm_new.append("\tmov lr, pc \t@ sorta sketchy\n")
                    asm_new.append("\tmov pc, r12\n")
                    asm_new.append("\t@ [ === CFI check end === ]\n")
                    return True
        # handle explicit branches, or any instruction to modifies pc
        elif is_br or uses_pc:
            r_temp = 'r0'

            #get source register
            if is_br:
                r_src = operand
            elif uses_pc:
                if len(split) < 3:
                    error('split too short, no source reg for pc inst')
                r_src = split[2]
            
            # if source register is a temp register, change temp 
            if r_src == 'r0' or r_src == 'r12':
                r_temp = 'r1'
            
            # if src register is not a gpr, it must be a label
            if not r_src in self.gpr_names:
                return False

            if check_tar:
                asm_new.append("\t@ [ ====== CFI checktar begin ====== ]\n")
            else:
                asm_new.append("\t@ [ ====== CFI checkret begin ====== ]\n")
            asm_new.append("\t@ [ ====== " + ' '.join(split) + " ====== ]\n")

            if r_src != 'r12':
               asm_new.append("\tpush {" + r_temp + "}\n")
            else:
               asm_new.append("\tpush {" + r_temp + ", r12}\n")

            asm_new.append("\tldr " + r_temp + \
                    ", [" + r_src + "] \t@ get destination ID\n")
            self.insert_ID_check(asm_new, ids.pop(0), r_temp, True)
            for extra_id in ids:
                self.insert_ID_check(asm_new, extra_id, r_temp, False)
            asm_new.append("\tbne cfi_abort\n")

            if r_src != 'r12':
               asm_new.append("\tpop {" + r_temp + "}\n")
            else:
               asm_new.append("\tpop {" + r_temp + ", r12}\n")


            if uses_pc and check_tar:
                asm_new.append("\tmov lr, pc \t@ this is sorta sketch\n")
            asm_new.append(line)
            asm_new.append("\t@ [ ====== CFI check end ====== ]\n")
            return True
        return False
