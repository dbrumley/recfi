#------------------------------ AsmEditor.py -----------------------------------#
#                                                                               #
# Slides cfi IDs and Checks up or down to their correct locations in assembly,  #
# and converts IDs and Checks to their correct assembly representations         #
#                                                                               #
#-------------------------------------------------------------------------------#

import sys
import os
from optparse import OptionParser

def main(opt):

    #cfi intrinsic names in assembly
    intrinsics = dict()
    intrinsics["insert"] = "cfiid"
    intrinsics["check_tar"] = "cfichecktar"
    intrinsics["check_ret"] = "cficheckret"

    if opt.arch == "arm":
        from ARMAsmEditor import ARMAsmEditor
        asm_editor_class = ARMAsmEditor
    else:
        asm_editor_error("Currently not supporting architectures other than arm")
        sys.exit(1)

    with open(opt.filename, "r") as infile:
        asm = infile.readlines()
    asm_editor = asm_editor_class(asm, opt.id_encoding, intrinsics)
    asm_editor.lower_ids()
    asm_editor.lower_checks()
    with open(opt.outfile, "w") as outfile:
        outfile.writelines(asm_editor.asm)

#Prints an AsmEditorError message
def asm_editor_error(msg):
    print("\nAsmEditorError: " + msg)

if __name__ == "__main__":
        #    Process command line args
        # TODO: change to argparse (optparse depreciated)
        parser = OptionParser()
        parser.add_option("-f", "--filename", type="string", dest="filename", 
                help="The path of the asm file to transform")
        parser.add_option("-i", "--id_encoding", type="string", dest="id_encoding", 
                help="ID encoding type, default mov\n\
                        Supported encodings:\n\
                        \"mov\" - mov r12, <ID>\n")
        parser.add_option("-a", "--arch", type="string", dest="arch", 
                help="Target architecture\
                        \n***currently only supporting arm***\n")
        parser.add_option("-o", "--outfile", type="string", dest="outfile", 
                help="The path of the asm file to generate")
        parser.set_defaults(id_encoding="mov", arch="arm")
        (options, args) = parser.parse_args()

        # filename only required arg
        if not options.filename:
            parser.print_help()
            parser.error('Filename not given')
        
        if not options.outfile:
            filename, extension = os.path.splitext(options.filename)
            filename = os.path.basename(filename)
            options.outfile = os.path.dirname(os.path.abspath(options.filename)) + "/" + \
                      filename + "_edited" + extension

        main(options)
