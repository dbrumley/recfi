; ModuleID = '2010-08-17-VarArgSize.ll'
;RUN: dsaopt %s -dsa-bu
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

declare void @llvm.va_start(i8*) nounwind

define void @func(i32 %unused, i8* nocapture %fmt, ...) nounwind {
entry:
  %ap = bitcast i8** undef to i8*
  call void @llvm.va_start(i8* %ap)
  call void @llvm.va_start(i8* %ap)
  ret void

}

