echo "generating llvm IR..."
#clang -target armv7a-linux-gnueabi -use-gold-plugin -emit-llvm -Wl,-plugin-opt=also-emit-llvm \
clang -target armv5te-linux-gnueabi -use-gold-plugin -emit-llvm -Wl,-plugin-opt=also-emit-llvm \
-I/usr/lib/gcc/arm-linux-gnueabi/4.6/include -I/usr/lib/gcc/arm-linux-gnueabi/4.6/include-fixed -I/usr/arm-linux-gnueabi/include -I/usr/include \
-static -S -o $1.ll $1.c

echo "generating llvm bitcode..."
clang -g -target armv5te-linux-gnueabi -use-gold-plugin -emit-llvm -Wl,-plugin-opt=also-emit-llvm \
-I/usr/lib/gcc/arm-linux-gnueabi/4.6/include -I/usr/lib/gcc/arm-linux-gnueabi/4.6/include-fixed -I/usr/arm-linux-gnueabi/include -I/usr/include \
-static -o $1 $1.c

echo "running $2 pass..."
opt \
-load /home/lynn/Documents/boeing-cfi/build/projects/poolalloc/Release+Debug+Asserts/lib/LLVMDataStructure.so \
-load /home/lynn/Documents/boeing-cfi/cfi-proj/build/Release+Debug+Asserts/lib/CfiPasses.so \
-load /home/lynn/Documents/boeing-cfi/cfi-proj/build/Release+Debug+Asserts/lib/CfiUtil.so \
-load /home/lynn/Documents/boeing-cfi/cfi-proj/build/Release+Debug+Asserts/lib/LLVMcfi.so \
-cfi -$2 $1.bc -o $1_opt.bc

echo "generating transformed llvm ir"
llvm-dis $1_opt.bc

echo "generating target specific assembly..."
llc -mtriple armv5te-linux-gnueabi -o $1.s $1_opt.bc

echo "generating vulnerable assembly..."
python /home/lynn/boeing-cfi/scripts/removeIntrinsics.py $1.s $1_vuln.s
arm-linux-gnueabi-gcc -static -g $1_vuln.s -lrt -o $1_vuln
chmod +x $1_vuln

echo "running python script..."
python /home/lynn/Documents/boeing-cfi/cfi-main/PythonScripts/AsmEditor.py -f $1.s -o $1_fixed.s

echo "assembling fixed assembly..."
arm-linux-gnueabi-gcc -static -g $1_fixed.s -lrt -o $1_fixed
chmod +x $1_fixed
