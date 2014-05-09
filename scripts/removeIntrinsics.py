#Used by build.sh to remove annotations in target
#assembly to produce unhardened assembly. This is
#useful for debugging and comparison purposes because
#directly generated unhardened assembly may be
#slightly different from hardened assembly with
#annotations removed

import sys

if len(sys.argv) < 3:
	print("Usage: removeIntrinsics.py infile outfile")
	sys.error(1)

infile = sys.argv[1]
outfile = sys.argv[2]

asm_new = []

infile = open(infile, "r")
for line in infile:
	if not ("cfiid" in line or "cfichecktar" in line or "cficheckret" in line):
		asm_new.append(line)

outfile = open(outfile, "w")
outfile.writelines(asm_new)
