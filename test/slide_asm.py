import random
import time
import os
from optparse import OptionParser

def main(opt):

	emitAsm(opt.fileName)
	print opt.fileName + ' has been emitted'

def emitAsm(fileName):
	with open(fileName) as fd:
		asmLines = fd.readlines()
		for line in asmLines:
			sline = line.strip()
			if 'cfiid' in sline:
				print sline

if __name__ == "__main__":
        #    Process command line args
        usage = "slide.py [-f fileName]"
        parser = OptionParser(usage)
        parser.add_option("-f", "--fileName", type="string", dest="fileName", help="The path of the asm file to transform")
        parser.set_defaults(fileName="./test_opt.s")
        (options, args) = parser.parse_args()

        main(options)