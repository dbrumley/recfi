clang -O0 -emit-llvm test.c -c -o test.bc
clang -O0 -emit-llvm test.c -S -o test.ll


#clang -O0 -emit-llvm $1.c -S -o $1.ll
#echo "assembling llvm bitcode..."
#llvm-as $1.ll -o $1.bc
#echo "running $2 pass..."
#opt -load ../build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.dylib -load ../llvm-cfi/build/Release+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc
#echo "generating target specific assembly..."
#llc -O0 -march arm $1_opt.bc -o $1.s

#../build/Release+Debug+Asserts/bin/opt -dot-callgraph < $1.bc > /dev/null
#dot -Tpng callgraph.dot  -o outpng
#eog outpng
