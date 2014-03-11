
class ARMAsmSlider:
    infile = None
    outfile = None
    cfi_insert = None
    cfi_check_tar = None
    cfi_check_ret = None

    asm = None

    #initializes ARMAsmSlider
    def __init__(self, infile, outfile,
                 cfi_insert, cfi_check_tar, cfi_check_ret):
        self.infile = infile
        self.outfile = outfile
        self.cfi_insert = cfi_insert
        self.cfi_check_tar = cfi_check_tar
        self.cfi_check_ret = cfi_check_ret

        fd = open(infile, "r")
        asm = fd.readlines()
        fd.close()


    def is_insert_id(self, line):
        split = line.split()
        if len(split) >= 2 and split[0] == self.cfi_insert:
            return True
        return False


    def slide_ids(self):
        self.asm.reverse()
        id_found = False
        id_line = ""

        asm_new = []
        for line in self.asm:
            if id_found:
                #check if line is beginning of basic block
                #if so, append line to asm_new, then append id_line
                #   reset id_found
                id_found = False
            elif self.is_insert_id(line):
                id_found = True
                id_line = line
            else:
                asm_new.append(line)


    def slide_check_tar(self):


    def slide_check_ret(self):