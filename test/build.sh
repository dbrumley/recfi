clang -O0 -emit-llvm test.c -c -o test.bc
clang -O0 -emit-llvm test.c -S -o test.ll
#the following is how I build:
#llvm-gcc -O3 -emit-llvm -S test.c -o test.ll
#llvm-as test.ll -o test.bc
#llc -O0 -march arm test.bc -o test.s

#opt -load ../build/Debug+Asserts/lib/LLVMTest.so -test < test.bc > /dev/null
#opt -dot-callgraph < test.bc > /dev/null
#dot -Tpng callgraph.dot  -o outpng
#eog outpng
