import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument('-corepath', help = "path to coreutils-8.22", required = True)
parser.add_argument('-binpath', help = "path to the binaries")

opts = parser.parse_args()

coreutilsPath = opts.corepath

binPath = ""

textchars = bytearray([7,8,9,10,12,13,27]) + bytearray(range(0x20, 0x100))
is_binary_string = lambda bytes: bool(bytes.translate(None, textchars))

def is_binary(filename):
   return is_binary_string(open(filename, 'rb').read(1024))

if opts.binpath == None:
   binPath = coreutilsPath + "/build/src/"
else:
   binPath = opts.binpath

for name in os.listdir(binPath):
   filePath = os.path.join(binPath, name)
   if os.path.isfile(filePath):
      if is_binary(filePath) and os.path.splitext(filePath)[1] != '.o' and \
                  os.path.splitext(filePath) != '.bc':
         print filePath

print is_binary('/bin/ls')
 
