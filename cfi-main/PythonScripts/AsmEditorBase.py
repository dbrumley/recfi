'''
#------------------------------ AsmEditorBase.py ------------------------------#
#                                                                              #
#                                                                              #
#------------------------------------------------------------------------------#
'''

import re
from abc import ABCMeta, abstractmethod

class AsmEditorBase:
    ''' Base class for lowering cfi asm annotations '''
    __metaclass__ = ABCMeta

    def __init__(self, asm, encode_type, intrinsics):
        self.asm = asm
        self.encode_type = encode_type
        self.intrinsics = intrinsics

    @abstractmethod
    def error(self, msg):
        ''' throw error '''
        raise NotImplementedError()

    @abstractmethod
    def is_transfer_instr(self, instr_split):
        ''' determine if instruction is a control transfer instruction.
        
        instr_split:    instruction in stripped, split, string format
        
        return:         True if instruction is a transfer, else false
        ''' 
        raise NotImplementedError()

    @abstractmethod
    def insert_id(self, asm_new, id_str):
        ''' insert a cfi id into the assembly.
        
        asm_new:        assembly instructions to insert ID into
        id_str:         id to insert, in format "#12345"
        
        No return
        ''' 
        raise NotImplementedError()
    
    @abstractmethod
    def insert_check(self, line, split, asm_new, ids, check_tar):
        ''' try to insert cfi id checking code into the asm.
        
        line:           asm line to insert check before
        split:          split version of asm line
        asm_new:        assembly instructions to insert check into
        ids:            list of IDs that need to be checked
        check_tar:      flag for type of check (check_tar vs check_ret)

        return:        True on sucessful insertion, else false
        ''' 
        raise NotImplementedError()
    
    def is_cfi_intrinsic(self, instr_split, int_name):
        ''' determine if an instruction is an intrinsic annotation.
            shouldnt need to be re-implemented in subclass

        instr_split:    instruction in stripped, split, string format
        int_name:       intrinsic key to check against

        return:         True if cfi intrinsic, else false
        ''' 
        if len(instr_split) >= 2 and instr_split[0] == self.intrinsics[int_name]:
            return True
        return False

    def is_func_begin(self, instr_split):
        ''' determine if instruction marks a function beginning.

            This is done by looking for function start labels.
            if our label starts with ".L", it is an LLVM inserted
            label, and (hopefully) can't correspond to a function start.
            "@" denotes a comment, and a label without a colon isn't
            really a label. Might need to be re-implemented in subclass
        
        instr_split:    instruction in stripped, split, string format

        return:         True if function start, else false
        ''' 

        #ignore empty lines
        if len(instr_split) < 1:
            return False

        label = instr_split[0]
        if not label.startswith(".L") \
        and not label.startswith("@") \
        and ":" in label: 
            return True
        return False

    def lower_ids(self):
        ''' algorithm for lowering cfi ids from annotations to valid asm

            Iterate backward over entire asm program. 
            When encountering an id annotation:
                -- pick it up
                -- slide it backward to function begin or callsite
                -- lower it
                -- ... continue
            Done in a single pass over the asm.

            input:          self.asm, self.intrinsics
            modifies:       self.asm
        '''
        
        # transformed asm
        asm_new = []
        
        id_found = False
        id_str = ''
        sep = re.compile("\s*[,{}\[\]!^]\s*|\s*")
        
        # ids need to be moved _backward_, so iterate in reverse
        self.asm.reverse()

        # for each line in the asm
        for asm_line in self.asm:
            
            # eliminate empty lines
            split = filter(lambda x: x != '', sep.split(asm_line)) 
            # make all chars lower-case 
            split = map(lambda x: x.lower(), split) 
            
            # if holding an ID
            if id_found:
                # check if line is beginning of basic block, if so, insert ID
                if self.is_transfer_instr(split) or self.is_func_begin(split):
                    self.insert_id(asm_new, id_str)
                    id_found = False

            # try to pick up an ID
            elif self.is_cfi_intrinsic(split, "insert"):
                id_found = True
                id_str = split[1]
                continue 
            asm_new.append(asm_line)

        # undo reverse
        asm_new.reverse()

        # replace original asm with modified asm
        self.asm = asm_new

    def lower_checks(self):
        ''' algorithm for lowering cfi checks from annotations to valid asm

            Iterate forwards over asm program, looking for checkret, checktar
            When encountering a check annotation:
                -- pick it up
                -- slide it forwards to transfer site
                -- lower it to monitor code
                -- ... continue
            Done in a single pass over the asm.

            input:          self.asm, self.encode_type, self.intrinsics
            modifies:       self.asm
        '''
        
        check_found = False
        check_tar = False
        ids = []

        asm_new = []
        sep = re.compile("\s*[,{}\[\]!^]\s*|\s*")
        for line in self.asm:
            split = filter(lambda x: x != '', sep.split(line))
            split = map(lambda x: x.lower(), split)
            if self.is_cfi_intrinsic(split, "check_ret"):
                check_found = True
                check_tar = False
                ids.append(split[1])
            elif self.is_cfi_intrinsic(split, "check_tar"):
                check_found = True
                check_tar = True
                ids.append(split[1])
            elif check_found:
                if self.insert_check(line, split, asm_new, ids, check_tar):
                    check_found = False
                    ids = []
                else:
                    asm_new.append(line)
            else:
                asm_new.append(line)
        self.asm = asm_new
