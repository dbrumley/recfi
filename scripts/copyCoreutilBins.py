import argparse
import os
import subprocess
import shutil

parser = argparse.ArgumentParser()
parser.add_argument('-corepath', help = "path to coreutils-8.22", required = True)
parser.add_argument('-binpath', help = "path to the binaries")
parser.add_argument('-undo', help = "restore original coreutils", action = "store_true")

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

for fname in os.listdir(binPath):
   filePath = os.path.join(binPath, fname)
   if os.path.isfile(filePath):
      if is_binary(filePath) and not os.path.splitext(filePath)[1]:
         sys_fpath = subprocess.check_output(["which", fname]).rstrip()
         if sys_fpath:
            if not opts.undo:
               if not os.path.isfile(sys_fpath + ".old"):
                  shutil.move(sys_fpath, sys_fpath + ".old")
                  shutil.copy(filePath, sys_fpath)
               else:
                  raise NameError("File " + sys_fpath + ".old already exists")
            else:
               if os.path.isfile(sys_fpath + ".old"):
                  os.remove(sys_fpath)
                  shutil.move(sys_fpath + ".old", sys_fpath)
               else:
                  raise NameError("File " + sys_fpath + ".old does not exist")

