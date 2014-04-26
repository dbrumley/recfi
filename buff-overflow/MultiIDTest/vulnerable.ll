; ModuleID = 'vulnerable.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "arm--linux-gnueabi"

@.str = private unnamed_addr constant [26 x i8] c"\0A\09How did we get here??\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"\0A\09You are %s years old!\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"\0A\09Your name is %s!\0A\0A\00", align 1
@.str3 = private unnamed_addr constant [37 x i8] c"Usage: vulnerable <string> <format>\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"age\00", align 1

; Function Attrs: nounwind
define void @malicious() #0 {
entry:
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define void @format_age(i8* %age) #0 {
entry:
  %age.addr = alloca i8*, align 4
  store i8* %age, i8** %age.addr, align 4
  %0 = load i8** %age.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i8* %0)
  ret void
}

; Function Attrs: nounwind
define void @format_name(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  %0 = load i8** %name.addr, align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0), i8* %0)
  ret void
}

; Function Attrs: nounwind
define void @call_format(void (...)* %format_func, i8* %str) #0 {
entry:
  %format_func.addr = alloca void (...)*, align 4
  %str.addr = alloca i8*, align 4
  %buf = alloca [10 x i8], align 1
  store void (...)* %format_func, void (...)** %format_func.addr, align 4
  store i8* %str, i8** %str.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0
  %0 = load i8** %str.addr, align 4
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #3
  %1 = load void (...)** %format_func.addr, align 4
  %arraydecay1 = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0
  %callee.knr.cast = bitcast void (...)* %1 to void (i8*)*
  call void %callee.knr.cast(i8* %arraydecay1)
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
  %format_func = alloca void (...)*, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  %0 = load i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*** %argv.addr, align 4
  %arrayidx = getelementptr inbounds i8** %1, i32 2
  %2 = load i8** %arrayidx, align 4
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 4) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  store void (...)* bitcast (void (i8*)* @format_name to void (...)*), void (...)** %format_func, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %3 = load i8*** %argv.addr, align 4
  %arrayidx3 = getelementptr inbounds i8** %3, i32 2
  %4 = load i8** %arrayidx3, align 4
  %call4 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 3) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  store void (...)* bitcast (void (i8*)* @format_age to void (...)*), void (...)** %format_func, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %5 = load void (...)** %format_func, align 4
  %6 = load i8*** %argv.addr, align 4
  %arrayidx9 = getelementptr inbounds i8** %6, i32 1
  %7 = load i8** %arrayidx9, align 4
  call void @call_format(void (...)* %5, i8* %7)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %8 = load i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }
