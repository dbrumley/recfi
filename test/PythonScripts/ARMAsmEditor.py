
class ARMAsmEditor:
    infile = None
    outfile = None
    encode_type = None
    cfi_insert = None
    cfi_check_tar = None
    cfi_check_ret = None

    asm = None

    #initializes ARMAsmEditor
    def __init__(self, infile, outfile, encode_type,
                 cfi_insert, cfi_check_tar, cfi_check_ret):
        self.infile = infile
        self.outfile = outfile
        self.encode_type = encode_type
        self.cfi_insert = cfi_insert
        self.cfi_check_tar = cfi_check_tar
        self.cfi_check_ret = cfi_check_ret

        fd = open(infile, "r")
        self.asm = fd.readlines()
        fd.close()


    #check if a line is a cfi intrinsic
    def is_cfi_intrinsic(self, split, intrinsic):
        if len(split) >= 2 and split[0] == intrinsic:
            return True
        return False


    #check if a line is a call site
    def is_callsite(self, split):
        #case: can't be a call
        if len(split) < 2:
            return False

        op = split[0]
        dest = split[1]

        branch_inst = ["b", "bl", "bx", "blx"]
        pc_names = ["pc", "r15"]

        #case: branch instr
        if op in branch_inst:
            return True
        #case: move/load/arithmetic instr
        elif any(word in dest for word in pc_names):
            return True
        #case: load multiple
        elif "ldm" in op:
            #iterate through elements in line,
            #ex. ["ldmfd", "sp!,", "{r0-r5,", "pc}"]
            for elem in split:
                #check if any word in pc_names is in elem
                if any(word in elem for word in pc_names):
                    return True
        return False


    #check if a line is a label
    #
    #split - line.split()
    def is_labelsite(self, split):
        #ignore white spaces
        if len(split) < 1:
            return False

        label = split[0]

        #make sure label is a label and not a comment
        if ":" in label and "@" not in label:
            return True
        return False


    #generates the ID in assembly based on encoding_type
    def generate_and_insert_id(self, asm_new, id):
        #default encoding is ".long <id>"
        if self.encode_type == "":
            asm_new.append("\t.long " + id + "\n")
            #jump over id if run normally
            asm_new.append("\tmov pc, pc\n")


    #slides IDs to correct location and lowers them
    def lower_ids(self):
        self.asm.reverse()
        id_found = False
        id_line = ""

        asm_new = []
        for line in self.asm:
            split = line.split()
            if id_found:
                #check if line is beginning of basic block
                #if so, insert ID, then append current line
                if self.is_callsite(split) or self.is_labelsite(split):
                    id_found = False
                    id = id_line.split()[1]
                    self.generate_and_insert_id(asm_new, id)
                    asm_new.append(line)
                else:
                    asm_new.append(line)
            elif self.is_cfi_intrinsic(split, self.cfi_insert):
                id_found = True
                id_line = line
            else:
                asm_new.append(line)

        asm_new.reverse()
        self.asm = asm_new


    def lower_check_tar(self):
        for line in self.asm:
            pass


    def lower_check_ret(self):
        pass


    #generates the output file
    def generate_output(self):
        fd = open(self.outfile, "w")
        for line in self.asm:
            fd.write(line)
        fd.close()


