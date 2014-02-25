; ModuleID = 'test.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin12.5"

@global_var = global i32 55                       ; <i32*> [#uses=1]
@global_var2 = common global i32 0                ; <i32*> [#uses=2]
@sum_func = common global i32 (i32, i32)* null    ; <i32 (i32, i32)**> [#uses=4]

define i32 @sum(i32 %x, i32 %y) nounwind ssp {
entry:
  %x_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %y_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %retval = alloca i32                            ; <i32*> [#uses=2]
  %0 = alloca i32                                 ; <i32*> [#uses=2]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  store i32 %x, i32* %x_addr
  store i32 %y, i32* %y_addr
  %1 = load i32* %x_addr, align 4                 ; <i32> [#uses=1]
  %2 = load i32* %y_addr, align 4                 ; <i32> [#uses=1]
  %3 = add nsw i32 %1, %2                         ; <i32> [#uses=1]
  store i32 %3, i32* %0, align 4
  %4 = load i32* %0, align 4                      ; <i32> [#uses=1]
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %entry
  %retval1 = load i32* %retval                    ; <i32> [#uses=1]
  ret i32 %retval1
}

define i32 @other_sum(i32 %x, i32 %y) nounwind ssp {
entry:
  %x_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %y_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %retval = alloca i32                            ; <i32*> [#uses=2]
  %0 = alloca i32                                 ; <i32*> [#uses=2]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  store i32 %x, i32* %x_addr
  store i32 %y, i32* %y_addr
  %1 = load i32* %x_addr, align 4                 ; <i32> [#uses=1]
  %2 = load i32* %y_addr, align 4                 ; <i32> [#uses=1]
  %3 = add nsw i32 %1, %2                         ; <i32> [#uses=1]
  %4 = add nsw i32 %3, 1                          ; <i32> [#uses=1]
  store i32 %4, i32* %0, align 4
  %5 = load i32* %0, align 4                      ; <i32> [#uses=1]
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %entry
  %retval1 = load i32* %retval                    ; <i32> [#uses=1]
  ret i32 %retval1
}

define i32 @testing(i32 (i32, i32)* %f, i32 %a, i32 %b) nounwind ssp {
entry:
  %f_addr = alloca i32 (i32, i32)*, align 8       ; <i32 (i32, i32)**> [#uses=2]
  %a_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %b_addr = alloca i32, align 4                   ; <i32*> [#uses=2]
  %retval = alloca i32                            ; <i32*> [#uses=2]
  %0 = alloca i32                                 ; <i32*> [#uses=2]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  store i32 (i32, i32)* %f, i32 (i32, i32)** %f_addr
  store i32 %a, i32* %a_addr
  store i32 %b, i32* %b_addr
  %1 = load i32 (i32, i32)** %f_addr, align 8     ; <i32 (i32, i32)*> [#uses=1]
  %2 = load i32* %a_addr, align 4                 ; <i32> [#uses=1]
  %3 = load i32* %b_addr, align 4                 ; <i32> [#uses=1]
  %4 = call i32 %1(i32 %2, i32 %3) nounwind       ; <i32> [#uses=1]
  store i32 %4, i32* %0, align 4
  %5 = load i32* %0, align 4                      ; <i32> [#uses=1]
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %entry
  %retval1 = load i32* %retval                    ; <i32> [#uses=1]
  ret i32 %retval1
}

define i32 @main() nounwind ssp {
entry:
  %retval = alloca i32                            ; <i32*> [#uses=2]
  %0 = alloca i32                                 ; <i32*> [#uses=2]
  %x = alloca i32                                 ; <i32*> [#uses=7]
  %y = alloca i32                                 ; <i32*> [#uses=2]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  store i32 15, i32* %x, align 4
  store i32 25, i32* %y, align 4
  store i32 6, i32* @global_var2, align 4
  %1 = load i32* %x, align 4                      ; <i32> [#uses=1]
  %2 = icmp sle i32 %1, 9                         ; <i1> [#uses=1]
  br i1 %2, label %bb, label %bb1

bb:                                               ; preds = %entry
  store i32 (i32, i32)* @sum, i32 (i32, i32)** @sum_func, align 8
  br label %bb2

bb1:                                              ; preds = %entry
  store i32 (i32, i32)* @other_sum, i32 (i32, i32)** @sum_func, align 8
  br label %bb2

bb2:                                              ; preds = %bb1, %bb
  %3 = load i32 (i32, i32)** @sum_func, align 8   ; <i32 (i32, i32)*> [#uses=1]
  %4 = load i32* %x, align 4                      ; <i32> [#uses=1]
  %5 = load i32* %y, align 4                      ; <i32> [#uses=1]
  %6 = call i32 %3(i32 %4, i32 %5) nounwind       ; <i32> [#uses=1]
  %7 = load i32* %x, align 4                      ; <i32> [#uses=1]
  %8 = add nsw i32 %6, %7                         ; <i32> [#uses=1]
  store i32 %8, i32* %x, align 4
  %9 = load i32* @global_var2, align 4            ; <i32> [#uses=1]
  %10 = load i32* @global_var, align 4            ; <i32> [#uses=1]
  %11 = call i32 @sum(i32 %10, i32 %9) nounwind ssp ; <i32> [#uses=1]
  %12 = load i32* %x, align 4                     ; <i32> [#uses=1]
  %13 = add nsw i32 %11, %12                      ; <i32> [#uses=1]
  store i32 %13, i32* %x, align 4
  %14 = load i32 (i32, i32)** @sum_func, align 8  ; <i32 (i32, i32)*> [#uses=1]
  %15 = call i32 @testing(i32 (i32, i32)* %14, i32 3, i32 4) nounwind ssp ; <i32> [#uses=0]
  store i32 0, i32* %0, align 4
  %16 = load i32* %0, align 4                     ; <i32> [#uses=1]
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %bb2
  %retval3 = load i32* %retval                    ; <i32> [#uses=1]
  ret i32 %retval3
}
