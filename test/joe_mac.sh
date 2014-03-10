echo "generating llvm IR..."
clang -O0 -emit-llvm $1.c -S -o $1.ll

echo "generating llvm bitcode..."
llvm-as $1.ll

echo "running $2 pass..."
opt -load ../../build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.dylib -load ../../llvm-cfi/build/Release+Debug+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc
#opt -load ../build/Release+Debug+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc

echo "generating transformed llvm ir"
llvm-dis $1_opt.bc

echo "generating target specific assembly..."
llc -O0 -march arm $1_opt.bc

echo "generating target specific object..."
llc -O0 -march arm -filetype obj test_opt.bc
