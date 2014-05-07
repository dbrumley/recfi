'''
#------------------------------ ARMAsmEditor.py -------------------------------#
#                                                                              #
#                                                                              #
#------------------------------------------------------------------------------#
'''
import re
import itertools
from AsmEditorBase import AsmEditorBase

class ARMAsmEditor(AsmEditorBase):

    ''' ARM Opcode specifics '''
    pc_names = ['pc', 'r15']
    str_bases = ['str']
    branch_bases = ['b', 'bl', 'bx', 'blx']
    cond_codes = ['eq', 'ne', 'cs', 'hs',
                  'cc', 'lo', 'mi', 'pl',
                  'vs', 'vc', 'hi', 'ls',
                  'ge', 'lt', 'gt', 'le',
                  'al', '']
    gpr_names = ['r0', 'r1', 'r2', 'r3',
                 'r4', 'r5', 'r6', 'r7',
                 'r8', 'r9', 'r10', 'r11',
                 'r12', 'r13', 'r14', 'r15'
                 'sp', 'lr', 'pc']

    branch_codes = [a + b for \
            a, b in itertools.product(branch_bases, cond_codes)]
    str_codes = [a + b for a, b in itertools.product(str_bases, cond_codes)] 

    def error(self, msg):
        print("\nARMAsmEditorError: " + msg)

    def is_transfer_instr(self, split):
        if len(split) < 2:
            return False
        
        opcode  = split[0]
        operand = split[1]

        if opcode in self.branch_codes:
            return True
        elif operand in self.pc_names:
            return True
        elif "ldm" in opcode or "pop" in opcode:
            #iterate through elements in line,
            #ex. ["ldmfd", "sp,", "r0-r5,", "r12-r15"]
            #TODO: better parsing of load (using semantics)
            for operand in split[2:]:
                if any(pc_name in operand for pc_name in self.pc_names):
                    return True
        return False

    def insert_id(self, asm_new, id_str):
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
        if first_id:
            asm_new.append("\tmovtne r12, " + id_str + "\t@ ID encoding, nop\n")
            asm_new.append("\tldr r12, [pc, #-12] \t@ get ID encoding\n")
            asm_new.append("\tcmp " + r_temp + ", r12\n")
        else:
            asm_new.append("\tmovtne r12, " + id_str + "\t@ extra ID\n")
            asm_new.append("\tldrne r12, [pc, #-12]\n")
            asm_new.append("\tcmpne " + r_temp + ", r12\n")

    def insert_check(self, line, split, asm_new, ids, check_tar):
        if len(ids) < 1:
            self.error('insert_check: ids is empty')
            return False

        if not self.is_transfer_instr(split):
            return False

        is_br = False
        uses_pc = False
        src_lbl = False

        opcode  = split[0]
        operand = split[1]

        if opcode in self.branch_codes:
            is_br = True
        elif operand in self.pc_names:
            uses_pc = True

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
        elif is_br or uses_pc:
            r_temp = 'r0'

            #get source register
            if is_br:
                r_src = operand
            elif uses_pc:
                if len(split) < 3:
                    error('split too short, no source reg for pc inst')
                r_src = split[2]
            
            if r_src == 'r0' or r_src == 'r12':
                r_temp = 'r1'
                #raise Exception('indirect branch to r0 or r12... \
                #        we need to insert a special case in check lowering')
            
            if not r_src in self.gpr_names:
                if not 'lbb' in r_src:
                    pass
                    #print '\tassume direct (no check needed):' + ' '.join(split)
                return False

            if check_tar:
                asm_new.append("\t@ [ ====== CFI checktar begin ====== ]\n")
            else:
                asm_new.append("\t@ [ ====== CFI checkret begin ====== ]\n")
            asm_new.append("\t@ [ ====== " + ' '.join(split) + " ====== ]\n")
            asm_new.append("\tpush {" + r_temp + "}\n")
            asm_new.append("\tldr " + r_temp + \
                    ", [" + r_src + "] \t@ get destination ID\n")
            self.insert_ID_check(asm_new, ids.pop(0), r_temp, True)
            for extra_id in ids:
                self.insert_ID_check(asm_new, extra_id, r_temp, False)
            asm_new.append("\tbne cfi_abort\n")
            asm_new.append("\tpop {" + r_temp + "}\n")
            #asm_new.append("\tadd " + r_src + ", " + r_src + ", #8\n")
            if uses_pc and check_tar:
                asm_new.append("\tmov lr, pc \t@ this is sorta sketch\n")
            asm_new.append(line)
            asm_new.append("\t@ [ ====== CFI check end ====== ]\n")

            return True

        return False
                    

        '''''''''
        Checking code to insert

        Branch form: 
            [b rx] or [mov pc, rx]

        Branch with check:
            push r0
            ldr r0, [rx, #4]
            ldr r12, #ID
            cmp r0, r12
            ...
            ldrne r12, #ID2
            cmpne r0, r12
            ...
            bne abort
            pop r0
            add rx, rx, #8
            mov lr, pc (if check_tar && mov pc, rx)
            b rx || mov pc, rx
        Alternate:
            push r0
            ldr r0, [rx]           @r0 should contain the encoding of the ID, ex. "movtne r12, #ID"
            movtne r12, #ID
            sub r12, pc, #12
            ldr r12, [r12, #0]    @r12 should also contain "movt r12, #ID"
            cmp r0, r12
            ...
            movtne r12, #ID2
            subne r12, pc, #12
            ldrne r12, [r12, #0]
            cmpne r0, r12
            ...
            bne abort
            pop {r0}
            mov lr, pc             @if check_tar && mov pc, rx
            b rx || mov pc, rx
            
        
        Branch form:
            ldmfd sp!, [..., pc]

        Branch with check:
            ldmfd sp!, [..., r12]
            push r0
            push r1
            ldr r0, #ID
            ldr r1, [r12, #4]
            cmp r0, r1
            ...
            ldrne r0, #ID2
            cmpne r0, r1
            ...
            bne abort
            pop r1
            pop r0
            mov pc, [r12, #8]
        Alternate:
            ldmfd sp!, [..., r12]
            push {r0, r1}
            ldr r0, [r12]          @r0 should contain the encoding of the ID, ex. "movtne r12, #ID"
            mov r1, r12            @preserve address
            movtne r12, #ID    
            sub r12, pc, #12    
            ldr r12, [r12, #0]
            cmp r0, r12
            ...
            movtne r12, #ID2
            subne r12, pc, #12
            ldrne r12, [r12, #0]
            cmpne r0, r12
            ...
            bne abort
            mov r12, r1
            pop {r0, r1}
            mov pc, r12
        
        '''''''''
