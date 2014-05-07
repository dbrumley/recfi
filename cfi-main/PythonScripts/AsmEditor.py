'''
#------------------------------ AsmEditor.py ----------------------------------#
#                                                                              #
#   This script takes in an ARM asm file that has CFI annotations and outputs  #
#   a CFI hardened asm file. The annotations are custom asm instructions       #
#   that are lowered from LLVM IR intrinsic calls. This script is the final    #
#   componenet to the ReCFI instrumentation process, and the output asm        #
#   should be compilable into a runnable binary.                               #
#                                                                              #
#   Annotations are in the form:                                               #
#       cfiid #12345                                                           #
#       cfichecktar #12345                                                     #
#       cficheckret #12345                                                     #
#                                                                              #
#------------------------------------------------------------------------------#
'''

import sys
import os
from optparse import OptionParser

def main(opt):
    ''' Lowers asm cfi annotations to asm monitor code '''

    #cfi intrinsic names in assembly
    intrinsics = dict()
    intrinsics["insert"] = "cfiid"
    intrinsics["check_tar"] = "cfichecktar"
    intrinsics["check_ret"] = "cficheckret"

    if opt.arch == "arm":
        from ARMAsmEditor import ARMAsmEditor
        asm_editor_class = ARMAsmEditor
    else:
        asm_editor_error("architecture not supported: " + opt.arch)
        sys.exit(1)

    with open(opt.filename, "r") as infile:
        asm = infile.readlines()
    asm_editor = asm_editor_class(asm, opt.id_encoding, intrinsics)
    asm_editor.lower_ids()
    asm_editor.lower_checks()
    with open(opt.outfile, "w") as outfile:
        outfile.writelines(asm_editor.asm)

def asm_editor_error(msg):
    ''' Prints an AsmEditorError message '''
    print("\nAsmEditorError: " + msg)

if __name__ == "__main__":
    ''' Process command line args, pass to main'''
    #TODO: change to argparse (optparse depreciated)
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

    # filename is required
    if not options.filename:
        parser.print_help()
        parser.error('Filename not given')
    
    # outfile defaults to $filename + "_edited"
    if not options.outfile:
        filename, extension = os.path.splitext(options.filename)
        filename = os.path.basename(filename)
        options.outfile = os.path.dirname(os.path.abspath(options.filename))+\
                "/" + filename + "_edited" + extension

    main(options)
