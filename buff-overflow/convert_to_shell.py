import sys
import os

#parses an objdump and reverses the bytes
def main():
	if len(sys.argv) < 3:
		return 0

	r = open(sys.argv[1], 'r')
	w = open(sys.argv[2], 'w')

	bytes = []
	hexified = []

	try:
		for line in r:
			if line.strip() != '':
				l = line.split(':')[1]
				l = l.split('\t')[1]
				l = l.split(' ')
				for item in l:
					if item != '':
						bytes.append(item)

		#bytes.reverse()
		for item in bytes:
			item = '\\x' + item
			hexified.append(item)

		for item in hexified:
			w.write('%s' % item)
			
	finally:
		r.close()
		w.close()

	print "number of bytes = " + str(len(hexified))

if __name__ == '__main__':
	sys.exit(main())
