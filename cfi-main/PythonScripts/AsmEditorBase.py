import re
from abc import ABCMeta, abstractmethod

class AsmEditorBase:
    __metaclass__ = ABCMeta

    def __init__(self, asm, encode_type, intrinsics):
        self.asm = asm
        self.encode_type = encode_type
        self.intrinsics = intrinsics

    '''
    Abstract functions
    '''
    @abstractmethod
    def error(self, msg):
        raise NotImplementedError()

    @abstractmethod
    def is_transfer_instr(self, split):
        raise NotImplementedError()

    @abstractmethod
    def is_func_begin(self, split):
        raise NotImplementedError()

    @abstractmethod
    def insert_id(self, split, asm_new, id_str):
        raise NotImplementedError()
    
    @abstractmethod
    def insert_check(self, line, split, asm_new, ids, check_tar):
        raise NotImplementedError()
    
    # shouldnt need to be re-implemented in subclass
    def is_cfi_intrinsic(self, split, int_name):
        if len(split) >= 2 and split[0] == self.intrinsics[int_name]:
            return True
        return False

    # might need to be re-implemented in subclass
    def is_func_begin(self, split):
        #ignore white spaces
        if len(split) < 1:
            return False

        label = split[0]

        #make sure label is a label and not a comment
        if label.startswith("_") and ":" in label and "@" not in label:
            return True
        return False

    '''
    Intrinsic Lowering algorithm
    '''

    def lower_ids(self):
        '''
        Iterate backward over entire asm program. When encountering an id:
            -- pick it up
            -- slide it
            -- lower it
            -- ... continue
        '''
        
        asm_new = []
        
        id_found = False
        id_str = ''
        sep = re.compile("\s*[,{}\[\]!^]\s*|\s*")
        
        self.asm.reverse()
        # for each line in the asm
        for asm_line in self.asm:
            
            #clean up line
            split = filter(lambda x: x != '', sep.split(asm_line)) # eliminate empty lines
            split = map(lambda x: x.lower(), split) # lower chars
            
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
                continue # don't append
            asm_new.append(asm_line)

        asm_new.reverse()
        self.asm = asm_new

    #lowers cfi intrinsic checks into assembly
    def lower_checks(self):
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
