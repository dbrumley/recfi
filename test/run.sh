#clang -O0 -emit-llvm test.c -c -o test.bc
#clang -O0 -emit-llvm test.c -S -o test.ll

echo "compiling..."
llvm-gcc -O0 -emit-llvm -S $1.c -o $1.ll
echo "assembling llvm bitcode..."
llvm-as $1.ll -o $1.bc
echo "running $2 pass..."
opt -load ../../boeing-cfi/build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.dylib -load ../../boeing-cfi/llvm-cfi/build/Release+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc
echo "generating target specific assembly..."
llc -O0 -march arm $1_opt.bc -o $1.s

#opt -dot-callgraph < test.bc > /dev/null
#dot -Tpng callgraph.dot  -o outpng
#eog outpng
