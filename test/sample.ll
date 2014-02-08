; ModuleID = 'test.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin12.5"

@global_var = global i32 55                       ; <i32*> [#uses=0]
@sum_func = common global i32 (i32, i32)* null    ; <i32 (i32, i32)**> [#uses=1]
@global_var2 = common global i32 0                ; <i32*> [#uses=1]

declare void @cfi.insertID(i32)
declare void @cfi.checkTar(i32)
declare void @cfi.checkRet(i32)

define i32 @sum(i32 %x, i32 %y) nounwind readnone ssp {
entry:
  call void @cfi.insertID(i32 12345)
  %0 = add nsw i32 %y, %x                         ; <i32> [#uses=1]
  call void @cfi.checkRet(i32 54321)
  ret i32 %0
}

define i32 @testing(i32 (i32, i32)* nocapture %f, i32 %a, i32 %b) nounwind ssp {
entry:
  call void @cfi.insertID(i32 12345)
  call void @cfi.checkTar(i32 12345)
  %0 = tail call i32 %f(i32 %a, i32 %b) nounwind  ; <i32> [#uses=1]
  call void @cfi.insertID(i32 54321)
  call void @cfi.checkRet(i32 54321)
  ret i32 %0
}

define i32 @main() nounwind ssp {
entry:
  	; do not insert IDs in main
  store i32 (i32, i32)* @sum, i32 (i32, i32)** @sum_func, align 8
  store i32 6, i32* @global_var2, align 4
	; do not check return ID in main
  ret i32 0
}
