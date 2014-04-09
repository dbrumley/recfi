import random
import time
import os
from optparse import OptionParser

skip_instruction = '\tmov pc, pc\n'


def main(opt):
	
	fd = open(opt.file_name)
	asm_raw = fd.readlines()
	asm_pass_1 = do_slide_ids(asm_raw)
	asm_pass_2 = do_lower_checks(asm_pass_1)
	#print ''.join(new_asm)
	fd = open('test_slide.s', 'w')
	fd.write(''.join(asm_pass_2))
	fd.close()
	print opt.file_name + ' has been emitted'

def do_lower_checks(asm_lines):
	
	holding = bool(0)
	i = 0

	while i < len(asm_lines):
		if not holding:
			line = asm_lines[i]
			if 'cficheck' in line: # TODO: This has potential false positives
				print str(i)+ ':', line.strip()
				asm_lines.pop(i)
				holding = bool(1)
				i = i -1
		else:
			dest_ins = asm_lines[i]
			print str(i)+': ?callsite', dest_ins.strip()
			if is_callsite(dest_ins):
				print str(i)+': callsite:', dest_ins
				#asm_lines.insert(i,skip_instruction)
				asm_lines.insert(i,line)
				holding = bool(0)
		i = i + 1
	return asm_lines

def do_slide_ids(asm_lines):

		asm_lines.reverse()
		holding = bool(0)
		i = 0

		while i < len(asm_lines):
			if not holding:
				line = asm_lines[i]
				if 'cfiid' in line: # TODO: This has potential false positives
					print str(i)+':', line.strip()
					asm_lines.pop(i)
					holding = bool(1)
					i = i -1
			else:
				dest_ins = asm_lines[i]
				print str(i)+': ?bb start', dest_ins.strip()
				if is_callsite(dest_ins) or is_labelsite(dest_ins):
					print str(i)+': bb start:', dest_ins
					asm_lines.insert(i,skip_instruction)
					asm_lines.insert(i,line)
					holding = bool(0)
			i = i + 1

		asm_lines.reverse()
		return asm_lines

def is_labelsite(line):
	words = line.split()

	#case: all whitespace
	if len(words) <= 0:
		return 0
	
	op = words[0]
	
	#case: label
	if ':' in op and '@' != op[0]:
		return 1
	else:
		return 0

def is_callsite(line):
	words = line.split()

	#case: all whitespace
	if len(words) <= 0:
		return 0
	
	op = words[0]
	reg_dest = words[1]

	#case: branch instr	
	if 'b' == op or 'bl' == op or 'bx' == op:
		return 1
	#case: move/load instr
	elif 'pc' in reg_dest:
		return 1
	#case: load multiple
	elif 'ldm' in op and'pc' in line:
			return 1
	return 0

if __name__ == "__main__":
        #    Process command line args
        usage = "slide_asm.py [-f file_name]"
        parser = OptionParser(usage)
        parser.add_option("-f", "--file_name", type="string", dest="file_name", help="The path of the asm file to transform")
        parser.set_defaults(file_name="./test_opt.s")
        (options, args) = parser.parse_args()

        main(options)
