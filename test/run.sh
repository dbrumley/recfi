
#the following is how I build:
#llvm-gcc -O3 -emit-llvm -S test.c -o test.ll
#llc -O0 -march arm test.bc -o test.s

clang -O0 -emit-llvm test.c -S -o test.ll
llvm-as test.ll -o test.bc
opt -load ../build/Debug+Asserts/lib/LLVMTest.so -test < test.bc > testPass.bc
llc -O0 -march arm testPass.bc -o testPass.s
#opt -dot-callgraph < test.bc > /dev/null
#dot -Tpng callgraph.dot  -o outpng
#eog outpng
