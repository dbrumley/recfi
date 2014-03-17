import re

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

    #prints an ARMAsmEditor error message
    #
    #msg - message
    def error(self, msg):
        print("\nARMAsmEditorError: " + msg)

    #check if a line is a cfi intrinsic
    #
    #split - line.split()
    #intrinsic - the intrinsic we're looking for
    #
    #return - True if line matches intrinsic, False otherwise
    def is_cfi_intrinsic(self, split, intrinsic):
        if len(split) >= 2 and split[0] == intrinsic:
            return True
        return False


    #check if a line modifies pc
    #
    #split - line.split()
    #
    #return - True if modifies pc, False otherwise
    def modifies_pc(self, split):
        #case: can't be a call
        if len(split) < 2:
            return False

        op = split[0]
        dest = split[1]

        branch_inst = ["b", "bl", "bx", "blx"]
        str_inst = ["str"]
        pc_names = ["pc", "r15"]

        #case: branch instr
        if op in branch_inst:
            return True
        #case: move/load/arithmetic instr
        elif dest in pc_names and op not in str_inst:
            return True
        #case: load multiple
        elif "ldm" in op:
            #iterate through elements in line,
            #ex. ["ldmfd", "sp,", "r0-r5,", "r12-r15"]
            for elem in split[2:]:
                #check if any word in pc_names is in elem
                if any(word in elem for word in pc_names):
                    return True
        return False


    #check if a line is a label
    #
    #split - line.split()
    #
    #return - True if line is label, False otherwise
    def is_labelsite(self, split):
        #ignore white spaces
        if len(split) < 1:
            return False

        label = split[0]

        #make sure label is a label and not a comment
        if ":" in label and "@" not in label:
            return True
        return False


    #generates the ID in assembly based on encoding_type,
    #then inserts it into asm_new if possible
    #
    #split - line.split()
    #asm_new - list of assembly instructions
    #id_str - ID to be inserted
    #
    #return - True if ID inserted, False otherwise
    def insert_id(self, split, asm_new, id_str):
        #check if line is beginning of basic block, if so, insert ID
        if self.modifies_pc(split) or self.is_labelsite(split):
            #default encoding is ".long <id>"
            if self.encode_type == "":
                asm_new.append("\t.long " + id_str + "\n")
                #jump over id if run normally
                asm_new.append("\tmov pc, pc\n")
                return True
            else:
                self.error("Not supporting encoding type of \"" +
                           self.encode_type + "\"")

        return False


    #slides IDs to correct location and lowers them
    def lower_ids(self):
        self.asm.reverse()
        id_found = False
        id_str = ""

        asm_new = []
        sep = re.compile("\s*[,{}\[\]!^]\s*|\s*")
        for line in self.asm:
            split = filter(lambda x: x != '', sep.split(line))
            split = map(lambda x: x.lower(), split)
            if id_found:
                if self.insert_id(split, asm_new, id_str):
                    id_found = False
                    asm_new.append(line)
                else:
                    asm_new.append(line)
            elif self.is_cfi_intrinsic(split, self.cfi_insert):
                id_found = True
                id_str = split[1]
            else:
                asm_new.append(line)

        asm_new.reverse()
        self.asm = asm_new


    #checks if an instruction modifies pc, and if so converts it
    #to check and branch/return, then return True
    #
    #split - line.split()
    #asm_new - list of assembly instructions
    #id_str - ID to be checked against
    #check_tar - whether the check is for target or for return
    #
    #return - True if check inserted, False otherwise
    def insert_check(self, line, split, asm_new, id_str, check_tar):
        #case: can't be a branch/return
        if len(split) < 2:
            return False

        op = split[0]
        dest = split[1]

        branch_inst = ["b", "bl", "bx", "blx"]
        pc_names = ["pc", "r15"]

        #case: branch instr
        if op in branch_inst:
            #ldr r12, #ID
            #add r2, r2, #4
            #cmp r2, r12
            #bne abort
            #add r2, r2, #4
            #bl r2

            asm_new.append("\tldr r12, " + id_str + "\n")
            asm_new.append("\tadd " + dest + ", " + dest + "#4\n")
            asm_new.append("\tcmp r12, " + dest + "\n")
            asm_new.append("\tbne abort\n")
            asm_new.append("\tadd " + dest + ", " + dest + "#4\n")
            asm_new.append("\t" + op + " " + dest + "\n")

            return True
        #case: move/load/arithmetic instr
        elif dest in pc_names:
            #mov, r12, r2
            #push r0
            #ldr r0, #ID
            #add r12, r12, #4
            #cmp r12, r0
            #pop r0
            #bne abort
            #add r12, r12, #4
            #mov lr, pc //reload lr if check_tar
            #mov pc, r12

            line = line.replace(dest, "r12", 1)

            asm_new.append(line)
            asm_new.append("\tpush r0\n")
            asm_new.append("\tldr r0, " + id_str + "\n")
            asm_new.append("\tadd r12, r12, #4\n")
            asm_new.append("\tcmp r12, r0\n")
            asm_new.append("\tpop r0\n")
            asm_new.append("\tbne abort\n")
            asm_new.append("\tadd r12, r12, #4\n")
            if check_tar:
                asm_new.append("\tmov lr, pc\n")
            asm_new.append("\tmov pc, r12\n")

            return True
        #case: load multiple
        elif "ldm" in op:
            for elem in split[2:]:
                #check if any word in pc_names is in elem
                if any(word in elem for word in pc_names):
                    #ldmfd sp!, [..., r12]
                    #push r0
                    #ldr r0, #ID
                    #add r12, r12, #4
                    #cmp r0, r12
                    #pop r0
                    #bne abort
                    #add r12, r12, #4
                    #mov pc, r12

                    line = re.sub("pc|r15", "r12", line)

                    asm_new.append(line)
                    asm_new.append("\tpush r0\n")
                    asm_new.append("\tldr r0, " + id_str + "\n")
                    asm_new.append("\tadd r12, r12, #4\n")
                    asm_new.append("\tcmp r12, r0\n")
                    asm_new.append("\tpop r0\n")
                    asm_new.append("\tbne abort\n")
                    asm_new.append("\tadd r12, r12, #4\n")
                    if check_tar:
                        asm_new.append("\tmov lr, pc\n")
                    asm_new.append("\tmov pc, r12\n")

                    return True
        return False


    #lowers cfi intrinsic checks into assembly
    def lower_checks(self):
        check_found = False
        check_tar = False
        id_str = ""

        asm_new = []
        sep = re.compile("\s*[,{}\[\]!^]\s*|\s*")
        for line in self.asm:
            split = filter(lambda x: x != '', sep.split(line))
            split = map(lambda x: x.lower(), split)
            if check_found:
                #check if line modifies pc, if so, replace line with
                #check code
                if self.insert_check(line, split, asm_new, id_str, check_tar):
                    check_found = False
                else:
                    asm_new.append(line)
            elif self.is_cfi_intrinsic(split, self.cfi_check_ret):
                check_found = True
                check_tar = False
                id_str = split[1]
            elif self.is_cfi_intrinsic(split, self.cfi_check_tar):
                check_found = True
                check_tar = True
                id_str = split[1]
            else:
                asm_new.append(line)

        self.asm = asm_new


    #generates the output file
    def generate_output(self):
        fd = open(self.outfile, "w")
        for line in self.asm:
            fd.write(line)
        fd.close()


