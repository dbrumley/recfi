; ModuleID = 'vulnerable.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "arm--linux-gnueabi"

@.str = private unnamed_addr constant [26 x i8] c"\0A\09How did we get here??\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"Usage: vulnerable <str>\0A\00", align 1

; Function Attrs: nounwind
define void @malicious() #0 {
entry:
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define void @foobar(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 4
  %buf = alloca [10 x i8], align 1
  store i8* %str, i8** %str.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0
  %0 = load i8** %str.addr, align 4
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #2
  %arraydecay1 = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #0

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  %0 = load i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*** %argv.addr, align 4
  %arrayidx = getelementptr inbounds i8** %1, i32 1
  %2 = load i8** %arrayidx, align 4
  call void @foobar(i8* %2)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32* %retval
  ret i32 %3
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
