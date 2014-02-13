; ModuleID = 'test.c'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@global_var = global i32 55, align 4
@global_var2 = common global i32 0, align 4
@sum_func = common global i32 (i32, i32)* null, align 4

; Function Attrs: nounwind
define i32 @sum(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4
  %1 = load i32* %y.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: nounwind
define i32 @other_sum(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32* %x.addr, align 4
  %1 = load i32* %y.addr, align 4
  %add = add nsw i32 %0, %1
  %add1 = add nsw i32 %add, 1
  ret i32 %add1
}

; Function Attrs: nounwind
define i32 @testing(i32 (i32, i32)* %f, i32 %a, i32 %b) #0 {
entry:
  %f.addr = alloca i32 (i32, i32)*, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 (i32, i32)* %f, i32 (i32, i32)** %f.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32 (i32, i32)** %f.addr, align 4
  %1 = load i32* %a.addr, align 4
  %2 = load i32* %b.addr, align 4
  %call = call i32 %0(i32 %1, i32 %2)
  ret i32 %call
}

; Function Attrs: nounwind
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 15, i32* %x, align 4
  store i32 25, i32* %y, align 4
  store i32 6, i32* @global_var2, align 4
  %0 = load i32* %x, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 (i32, i32)* @sum, i32 (i32, i32)** @sum_func, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 (i32, i32)* @other_sum, i32 (i32, i32)** @sum_func, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32 (i32, i32)** @sum_func, align 4
  %2 = load i32* %x, align 4
  %3 = load i32* %y, align 4
  %call = call i32 %1(i32 %2, i32 %3)
  %4 = load i32* %x, align 4
  %add = add nsw i32 %4, %call
  store i32 %add, i32* %x, align 4
  %5 = load i32* @global_var, align 4
  %6 = load i32* @global_var2, align 4
  %call1 = call i32 @sum(i32 %5, i32 %6)
  %7 = load i32* %x, align 4
  %add2 = add nsw i32 %7, %call1
  store i32 %add2, i32* %x, align 4
  %8 = load i32 (i32, i32)** @sum_func, align 4
  %call3 = call i32 @testing(i32 (i32, i32)* %8, i32 3, i32 4)
  ret i32 0
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5 (trunk 200403) (llvm/trunk 200402)"}
