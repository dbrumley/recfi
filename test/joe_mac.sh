echo "generating llvm IR..."
clang -O0 -emit-llvm $1.c -S -o $1.ll
echo "generating llvm bitcode..."
llvm-as $1.ll
echo "running $2 pass..."
opt -load ../build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.dylib -load ../llvm-cfi/build/Release+Debug+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc
#echo "generating target specific assembly..."
#llvm-dis $1_opt.bc
#llc -O0 -march arm $1_opt.bc
#../build/Release+Debug+Asserts/bin/opt -dot-callgraph < test.bc > /dev/null
#dot -Tpng callgraph.dot  -o outpng
#eog outpng
