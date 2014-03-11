#------------------------------ AsmEditor.py -----------------------------------#
#                                                                               #
# Slides cfi IDs and Checks up or down to their correct locations in assembly,  #
# and converts IDs and Checks to their correct assembly representations         #
#                                                                               #
#-------------------------------------------------------------------------------#

import sys
import getopt
import os

def main():
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hi:a:o:",
                                   ["help", "id_encoding=", "arch=", "outfile="])
    except getopt.GetoptError as err:
        print(err)
        usage()
        sys.exit(1)

    id_encode = False
    encode_type = ""
    arch = "arm"
    infile = ""
    outfile = ""

    optind = 1
    for o, a in opts:
        if o in ("-h", "--help"):
            usage()
            sys.exit(0)
        elif o in ("-i", "--id_encoding"):
            optind += 2
            id_encode = True
            encode_type = a
        elif o in ("-a", "--arch"):
            optind += 2
            if a.lower() not in "arm":
                asm_editor_error("Currently not supporting architectures other than arm")
                sys.exit(1)
        elif o in ("-o", "--outfile"):
            optind += 2
            outfile = a
        else:
            asm_editor_error("Unhandled option -" + o)
            usage()
            sys.exit(1)

    if optind >= len(sys.argv):
        asm_editor_error("No input file")
        usage()
        sys.exit(1)

    infile = sys.argv[optind]
    if outfile == "":
        filename, extension = os.path.splitext(infile)
        filename = os.path.basename(filename)
        outfile = os.path.dirname(os.path.abspath(infile)) + "/" + \
                  filename + "_edited" + extension

    #create AsmSlider object and AsmInliner object
    #slider slides IDs UP to beginning of basic blocks and ID Checks DOWN to end of basic blocks
    #inliner changes IDs based on encoding and ID Checks, both are done based on architecture

    #cfi intrinsic names in assembly
    cfi_insert = "cfiid"
    cfi_check_tar = "cfichecktar"
    cfi_check_ret = "cficheckret"

    asm_slider_class = None
    if arch == "arm":
        from ARMAsmSlider import ARMAsmSlider
        asm_slider_class = ARMAsmSlider
    else:
        asm_editor_error("Currently not supporting architectures other than arm")
        sys.exit(1)

    asm_slider = asm_slider_class(infile, outfile,
                                  cfi_insert, cfi_check_tar, cfi_check_ret)
    asm_slider.slide_ids()



#Prints an AsmEditorError message
def asm_editor_error(msg):
    print("\nAsmEditorError: " + msg)


#Prints usage info for AsmEditor.py
def usage():
    msg = "\n\
Usage: Python AsmEditor.py <options> file\n\
Options:\n\
--help (-h): Shows this usage\n\
--id_encoding (-i): ID encoding type, default none\n\
--arch (-a): target architecture, default arm\n\
             ***currently only supporting arm***\n\
--outfile (-o): outfile name, default is <file>_edited.<ext>\n"

    print(msg)


if __name__ == "__main__":
    main()
