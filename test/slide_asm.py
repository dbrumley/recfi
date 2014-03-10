import random
import time
import os
from optparse import OptionParser

skip_instruction = '\tmov pc, pc\n'

def main(opt):
	#new_asm = do_transformation(opt.file_name)
	new_asm = do_slide_all(opt.file_name)
	print ''.join(new_asm)
	print opt.file_name + ' has been emitted'

def do_slide_all(file_name):
	with open(file_name) as fd:
		asm_raw = fd.readlines()
		asm_raw.reverse()

		holding = bool(0)
		i = 0

		while i < len(asm_raw):
			if not holding:
				line = asm_raw[i]
				if 'cfiid' in line:
					print i, line.strip()
					asm_raw.pop(i)
					holding = bool(1)
					i = i -1
			else:
				dest_ins = asm_raw[i]
				print 'checking ' + dest_ins.strip()
				if is_callsite(dest_ins):
					print i, dest_ins
					asm_raw.insert(i,skip_instruction)
					asm_raw.insert(i,line)
					holding = bool(0)
			i = i + 1

		asm_raw.reverse()
		return asm_raw

def is_callsite(line):
	if 'pc' in line:
		return 1
	elif ':' in line.split()[0]:
		return 1
	elif line.split()[0] == 'bl':
		return 1
	else:
		return 0

'''
this function is has been replaced by do_slide_all
'''
def do_transformation(file_name):

	with open(file_name) as fd:
		asm_raw = fd.readlines()
		print 'getting label id map'
		label_id_map = do_get_label_id_pairs(asm_raw)
		print 'inserting ids'
		asm_pass_1 = do_insert_label_ids(asm_raw, label_id_map)

		asm_pass_2 = do_slide_ret_ids(asm_pass_1)

		print 'done with transformation'
		return asm_pass_2

def do_get_label_id_pairs(asm_lines):
	id_dict = dict()
	for line in asm_lines:
		if ':' in line:
			if '@ BB#' in line:
				continue
			label = line.strip().split(':')[0]
		if 'cfiidibr' in line:
			if label in id_dict:
				print 'OH SHIT'
				raise Exception 
			print label, line.strip()
			id_dict[label] = line
			asm_lines.remove(line)
	return id_dict

def do_insert_label_ids(asm_lines, id_map):
	b_ins = '\tmov pc, pc\n'
	for label, id_ins in id_map.items():
		for i,line in enumerate(asm_lines[:]):
			if ':' in line:
				if '@ BB#' in line:
					continue
				found = line.strip().split(':')[0]
				if label == found:
					asm_lines.insert(i+1, id_ins)
					asm_lines.insert(i+1, b_ins)
					break
	return asm_lines

def do_slide_ret_ids(asm_lines):
	asm_copy = list(asm_lines)
	for i in range(len(asm_copy)):
		line = asm_lines[i]
		print 'next line is ' + line
		if 'cfiidret' in line:
			print line
			j = i-1
			while 1:
				prev = asm_copy[j]
				print 'looking at ' + prev.strip() 
				if is_callsite(prev):
					print 'found! ' +prev.strip()
					break
				j = j -1

	return asm_copy


if __name__ == "__main__":
        #    Process command line args
        usage = "slide_asm.py [-f file_name]"
        parser = OptionParser(usage)
        parser.add_option("-f", "--file_name", type="string", dest="file_name", help="The path of the asm file to transform")
        parser.set_defaults(file_name="./test_opt.s")
        (options, args) = parser.parse_args()

        main(options)