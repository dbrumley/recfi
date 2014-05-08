#!/bin/bash

#Builds and hardens a single source file for testing
#
#Usage: ./build.sh <filename> <cfi policy> <recfi root dir>
#
#filename - name of source file without extensions
#cfi policy - two, merge, or list
#recfi root dir - /path/to/recfi

echo "generating llvm IR..."
clang -target armv5te-linux-gnueabi -use-gold-plugin -emit-llvm -Wl,-plugin-opt=also-emit-llvm \
-I/usr/lib/gcc/arm-linux-gnueabi/4.6/include -I/usr/lib/gcc/arm-linux-gnueabi/4.6/include-fixed -I/usr/arm-linux-gnueabi/include -I/usr/include \
-static -S -o $1.ll $1.c

echo "generating llvm bitcode..."
clang -g -target armv5te-linux-gnueabi -use-gold-plugin -emit-llvm -Wl,-plugin-opt=also-emit-llvm \
-I/usr/lib/gcc/arm-linux-gnueabi/4.6/include -I/usr/lib/gcc/arm-linux-gnueabi/4.6/include-fixed -I/usr/arm-linux-gnueabi/include -I/usr/include \
-static -o $1 $1.c

echo "running $2 pass..."
opt \
-load $3/build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.so \
-load $3/cfi-analysis/build/Release+Debug+Asserts/lib/CfiPasses.so \
-load $3/cfi-analysis/build/Release+Debug+Asserts/lib/CfiUtil.so \
-load $3/cfi-analysis/build/Release+Debug+Asserts/lib/LLVMcfi.so \
-cfi -$2 $1.bc -o $1_opt.bc

echo "generating transformed llvm ir"
llvm-dis $1_opt.bc

echo "generating target specific assembly..."
llc -mtriple armv5te-linux-gnueabi -o $1.s $1_opt.bc

echo "generating vulnerable assembly..."
python $3/scripts/removeIntrinsics.py $1.s $1_vuln.s
arm-linux-gnueabi-gcc -static -g $1_vuln.s -lrt -o $1_vuln
chmod +x $1_vuln

echo "running python script..."
python $3/cfi-lowering/CFIAsmEditor.py -f $1.s -o $1_fixed.s

echo "assembling fixed assembly..."
arm-linux-gnueabi-gcc -static -g $1_fixed.s -lrt -o $1_fixed
chmod +x $1_fixed
