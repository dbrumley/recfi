; ModuleID = 'vulnerable_opt.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "arm--linux-gnueabi"

@.str = private unnamed_addr constant [26 x i8] c"\0A\09How did we get here??\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"Usage: vulnerable <str>\0A\00", align 1

; Function Attrs: nounwind
define internal void @malicious() #0 {
entry:
  call void @llvm.cfiid(i32 32243), !dbg !18
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0)), !dbg !18
  call void @llvm.cficheckret(i32 9228), !dbg !19
  ret void, !dbg !19
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define internal void @foobar(i8* %str) #0 {
entry:
  call void @llvm.cfiid(i32 32243)
  %str.addr = alloca i8*, align 4
  %buf = alloca [10 x i8], align 1
  store i8* %str, i8** %str.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8** %str.addr}, metadata !20), !dbg !21
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %buf}, metadata !22), !dbg !26
  %arraydecay = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !27
  %0 = load i8** %str.addr, align 4, !dbg !27
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0) #4, !dbg !27
  %arraydecay1 = getelementptr inbounds [10 x i8]* %buf, i32 0, i32 0, !dbg !28
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* %arraydecay1), !dbg !28
  call void @llvm.cficheckret(i32 9228), !dbg !29
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

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
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !30), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !32), !dbg !31
  %0 = load i32* %argc.addr, align 4, !dbg !33
  %cmp = icmp slt i32 %0, 2, !dbg !33
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0)), !dbg !34
  store i32 1, i32* %retval, !dbg !36
  br label %return, !dbg !36

if.end:                                           ; preds = %entry
  %1 = load i8*** %argv.addr, align 4, !dbg !37
  %arrayidx = getelementptr inbounds i8** %1, i32 1, !dbg !37
  %2 = load i8** %arrayidx, align 4, !dbg !37
  call void @foobar(i8* %2), !dbg !37
  call void @llvm.cfiid(i32 9228), !dbg !38
  store i32 0, i32* %retval, !dbg !38
  br label %return, !dbg !38

return:                                           ; preds = %if.end, %if.then
  %3 = load i32* %retval, !dbg !38
  ret i32 %3, !dbg !38
}

; Function Attrs: noreturn nounwind
declare void @llvm.cfiid(i32) #3

; Function Attrs: noreturn nounwind
declare void @llvm.cfichecktar(i32) #3

; Function Attrs: noreturn nounwind
declare void @llvm.cficheckret(i32) #3

define void @cfi_abort() {
entry:
  br label %loop

loop:                                             ; preds = %loop, %entry
  br label %loop
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3.1 (tags/RELEASE_33/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/lynn/buff-overflow/TwoIDTest/vulnerable.c] [DW_LANG_C99]
!1 = metadata !{metadata !"vulnerable.c", metadata !"/home/lynn/buff-overflow/TwoIDTest"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"malicious", metadata !"malicious", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @malicious, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 5] [def] [scope 6] [malicious]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lynn/buff-overflow/TwoIDTest/vulnerable.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"foobar", metadata !"foobar", metadata !"", i32 10, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @foobar, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [foobar]
!9 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{null, metadata !11}
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 18, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [main]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !16, metadata !17}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 7, i32 0, metadata !4, null}
!19 = metadata !{i32 8, i32 0, metadata !4, null}
!20 = metadata !{i32 786689, metadata !8, metadata !"str", metadata !5, i32 16777226, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 10]
!21 = metadata !{i32 10, i32 0, metadata !8, null}
!22 = metadata !{i32 786688, metadata !8, metadata !"buf", metadata !5, i32 12, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 12]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !12, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!26 = metadata !{i32 12, i32 0, metadata !8, null}
!27 = metadata !{i32 13, i32 0, metadata !8, null}
!28 = metadata !{i32 15, i32 0, metadata !8, null}
!29 = metadata !{i32 16, i32 0, metadata !8, null}
!30 = metadata !{i32 786689, metadata !13, metadata !"argc", metadata !5, i32 16777234, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 18]
!31 = metadata !{i32 18, i32 0, metadata !13, null}
!32 = metadata !{i32 786689, metadata !13, metadata !"argv", metadata !5, i32 33554450, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 18]
!33 = metadata !{i32 20, i32 0, metadata !13, null}
!34 = metadata !{i32 22, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !13, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lynn/buff-overflow/TwoIDTest/vulnerable.c]
!36 = metadata !{i32 23, i32 0, metadata !35, null}
!37 = metadata !{i32 25, i32 0, metadata !13, null}
!38 = metadata !{i32 26, i32 0, metadata !13, null}
