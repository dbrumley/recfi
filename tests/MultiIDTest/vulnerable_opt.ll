; ModuleID = 'vulnerable_opt.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "arm--linux-gnueabi"

@.str = private unnamed_addr constant [26 x i8] c"\0A\09How did we get here??\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"\0A\09You are %s years old!\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"\0A\09Your name is %s!\0A\0A\00", align 1
@.str3 = private unnamed_addr constant [37 x i8] c"Usage: vulnerable <string> <format>\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"age\00", align 1

; Function Attrs: nounwind
define internal void @malicious() #0 {
entry:
  call void @llvm.cfiid(i32 35212), !dbg !26
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0)), !dbg !26
  call void @llvm.cficheckret(i32 6998), !dbg !27
  ret void, !dbg !27
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define internal void @format_age(i8* %age) #0 {
entry:
  call void @llvm.cfiid(i32 35212)
  %age.addr = alloca i8*, align 4
  store i8* %age, i8** %age.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8** %age.addr}, metadata !28), !dbg !29
  %0 = load i8** %age.addr, align 4, !dbg !30
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str1, i32 0, i32 0), i8* %0), !dbg !30
  call void @llvm.cficheckret(i32 6998), !dbg !31
  ret void, !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
define internal void @format_name(i8* %name) #0 {
entry:
  call void @llvm.cfiid(i32 35212)
  %name.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8** %name.addr}, metadata !32), !dbg !33
  %0 = load i8** %name.addr, align 4, !dbg !34
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0), i8* %0), !dbg !34
  call void @llvm.cficheckret(i32 6998), !dbg !35
  ret void, !dbg !35
}

; Function Attrs: nounwind
define internal void @call_format(void (...)* %format_func, i8* %str) #0 {
entry:
  call void @llvm.cfiid(i32 35212)
  %format_func.addr = alloca void (...)*, align 4
  %str.addr = alloca i8*, align 4
  %buf = alloca [10 x i8], align 1
  store void (...)* %format_func, void (...)** %format_func.addr, align 4
  call void @llvm.dbg.declare(metadata !{void (...)** %format_func.addr}, metadata !36), !dbg !37
  store i8* %str, i8** %str.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8** %str.addr}, metadata !38), !dbg !37
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %buf}, metadata !39), !dbg !43
  %arraydecay = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !44
  %0 = load i8** %str.addr, align 4, !dbg !44
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #5, !dbg !44
  %1 = load void (...)** %format_func.addr, align 4, !dbg !45
  %arraydecay1 = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !45
  %callee.knr.cast = bitcast void (...)* %1 to void (i8*)*, !dbg !45
  call void @llvm.cfichecktar(i32 35212), !dbg !45
  call void %callee.knr.cast(i8* %arraydecay1), !dbg !45
  call void @llvm.cfiid(i32 6998), !dbg !46
  call void @llvm.cficheckret(i32 6998), !dbg !46
  ret void, !dbg !46
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
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !47), !dbg !48
  store i8** %argv, i8*** %argv.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !49), !dbg !48
  %0 = load i32* %argc.addr, align 4, !dbg !50
  %cmp = icmp slt i32 %0, 3, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str3, i32 0, i32 0)), !dbg !51
  store i32 -1, i32* %retval, !dbg !53
  br label %return, !dbg !53

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{void (...)** %format_func}, metadata !54), !dbg !55
  %1 = load i8*** %argv.addr, align 4, !dbg !56
  %arrayidx = getelementptr inbounds i8** %1, i32 2, !dbg !56
  %2 = load i8** %arrayidx, align 4, !dbg !56
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 4) #6, !dbg !56
  %tobool = icmp ne i32 %call1, 0, !dbg !56
  br i1 %tobool, label %if.else, label %if.then2, !dbg !56

if.then2:                                         ; preds = %if.end
  store void (...)* bitcast (void (i8*)* @format_name to void (...)*), void (...)** %format_func, align 4, !dbg !57
  br label %if.end8, !dbg !57

if.else:                                          ; preds = %if.end
  %3 = load i8*** %argv.addr, align 4, !dbg !58
  %arrayidx3 = getelementptr inbounds i8** %3, i32 2, !dbg !58
  %4 = load i8** %arrayidx3, align 4, !dbg !58
  %call4 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 3) #6, !dbg !58
  %tobool5 = icmp ne i32 %call4, 0, !dbg !58
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !58

if.then6:                                         ; preds = %if.else
  store void (...)* bitcast (void (i8*)* @format_age to void (...)*), void (...)** %format_func, align 4, !dbg !59
  br label %if.end7, !dbg !59

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %5 = load void (...)** %format_func, align 4, !dbg !60
  %6 = load i8*** %argv.addr, align 4, !dbg !60
  %arrayidx9 = getelementptr inbounds i8** %6, i32 1, !dbg !60
  %7 = load i8** %arrayidx9, align 4, !dbg !60
  call void @call_format(void (...)* %5, i8* %7), !dbg !60
  call void @llvm.cfiid(i32 6998), !dbg !61
  store i32 0, i32* %retval, !dbg !61
  br label %return, !dbg !61

return:                                           ; preds = %if.end8, %if.then
  %8 = load i32* %retval, !dbg !61
  ret i32 %8, !dbg !61
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #3

; Function Attrs: noreturn nounwind
declare void @llvm.cfiid(i32) #4

; Function Attrs: noreturn nounwind
declare void @llvm.cfichecktar(i32) #4

; Function Attrs: noreturn nounwind
declare void @llvm.cficheckret(i32) #4

define void @cfi_abort() {
entry:
  br label %loop

loop:                                             ; preds = %loop, %entry
  br label %loop
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3.1 (tags/RELEASE_33/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/lynn/Documents/boeing-cfi/buff-overflow/MultiIDTest/vulnerable.c] [DW_LANG_C99]
!1 = metadata !{metadata !"vulnerable.c", metadata !"/home/lynn/Documents/boeing-cfi/buff-overflow/MultiIDTest"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !13, metadata !14, metadata !21}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"malicious", metadata !"malicious", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @malicious, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 5] [def] [scope 6] [malicious]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lynn/Documents/boeing-cfi/buff-overflow/MultiIDTest/vulnerable.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"format_age", metadata !"format_age", metadata !"", i32 10, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @format_age, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [format_age]
!9 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{null, metadata !11}
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"format_name", metadata !"format_name", metadata !"", i32 15, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @format_name, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 16] [format_name]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"call_format", metadata !"call_format", metadata !"", i32 20, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (void (...)*, i8*)* @call_format, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [call_format]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !17, metadata !11}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786456}
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 29, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [main]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !24, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!26 = metadata !{i32 7, i32 0, metadata !4, null}
!27 = metadata !{i32 8, i32 0, metadata !4, null}
!28 = metadata !{i32 786689, metadata !8, metadata !"age", metadata !5, i32 16777226, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [age] [line 10]
!29 = metadata !{i32 10, i32 0, metadata !8, null}
!30 = metadata !{i32 12, i32 0, metadata !8, null}
!31 = metadata !{i32 13, i32 0, metadata !8, null}
!32 = metadata !{i32 786689, metadata !13, metadata !"name", metadata !5, i32 16777231, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 15]
!33 = metadata !{i32 15, i32 0, metadata !13, null}
!34 = metadata !{i32 17, i32 0, metadata !13, null}
!35 = metadata !{i32 18, i32 0, metadata !13, null}
!36 = metadata !{i32 786689, metadata !14, metadata !"format_func", metadata !5, i32 16777236, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format_func] [line 20]
!37 = metadata !{i32 20, i32 0, metadata !14, null}
!38 = metadata !{i32 786689, metadata !14, metadata !"str", metadata !5, i32 33554452, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 20]
!39 = metadata !{i32 786688, metadata !14, metadata !"buf", metadata !5, i32 23, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 23]
!40 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !12, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!43 = metadata !{i32 23, i32 0, metadata !14, null}
!44 = metadata !{i32 24, i32 0, metadata !14, null}
!45 = metadata !{i32 26, i32 0, metadata !14, null}
!46 = metadata !{i32 27, i32 0, metadata !14, null}
!47 = metadata !{i32 786689, metadata !21, metadata !"argc", metadata !5, i32 16777245, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 29]
!48 = metadata !{i32 29, i32 0, metadata !21, null}
!49 = metadata !{i32 786689, metadata !21, metadata !"argv", metadata !5, i32 33554461, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 29]
!50 = metadata !{i32 31, i32 0, metadata !21, null}
!51 = metadata !{i32 33, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !21, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lynn/Documents/boeing-cfi/buff-overflow/MultiIDTest/vulnerable.c]
!53 = metadata !{i32 34, i32 0, metadata !52, null}
!54 = metadata !{i32 786688, metadata !21, metadata !"format_func", metadata !5, i32 37, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_func] [line 37]
!55 = metadata !{i32 37, i32 0, metadata !21, null}
!56 = metadata !{i32 38, i32 0, metadata !21, null}
!57 = metadata !{i32 39, i32 0, metadata !21, null}
!58 = metadata !{i32 40, i32 0, metadata !21, null}
!59 = metadata !{i32 41, i32 0, metadata !21, null}
!60 = metadata !{i32 43, i32 0, metadata !21, null}
!61 = metadata !{i32 44, i32 0, metadata !21, null}
