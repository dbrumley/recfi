clang -O3 -emit-llvm test.c -c -o test.bc
clang -O3 -emit-llvm test.c -S -o test.ll
opt -load ../llvm/Debug+Asserts/lib/LLVMTest.so -test < test.bc > /dev/null
