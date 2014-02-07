clang -O0 -emit-llvm test.c -c -o test.bc
clang -O0 -emit-llvm test.c -S -o test.ll
#opt -load ../llvm/Debug+Asserts/lib/LLVMTest.so -test < test.bc > /dev/null
opt -dot-callgraph < test.bc > /dev/null
dot -Tpng callgraph.dot  -o outpng
eog outpng
