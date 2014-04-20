echo "generating llvm IR..."
clang -O1 -emit-llvm $1.c -S -o $1.ll

echo "generating llvm bitcode..."
clang -O1 -emit-llvm $1.c -c -o $1.bc

echo "running $2 pass..."
opt -debug-pass=Structure \
-stats \
-load ../../build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.so \
-load ../../cfi-proj/build/Release+Debug+Asserts/lib/CfiPasses.so \
-load ../../cfi-proj/build/Release+Debug+Asserts/lib/CfiUtil.so \
-load ../../cfi-proj/build/Release+Debug+Asserts/lib/LLVM$2.so \
-$2 \
-$3 \
< $1.bc > $1_opt.bc
#opt -load ../build/Release+Debug+Asserts/lib/LLVM$2.dylib -$2 < $1.bc > $1_opt.bc

echo "generating transformed llvm ir"
llvm-dis $1_opt.bc

echo "generating target specific assembly..."
llc -O1 -march arm $1_opt.bc

echo "generating target specific object..."
llc -O1 -march arm -filetype obj $1_opt.bc
