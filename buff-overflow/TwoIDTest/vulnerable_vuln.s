	.syntax unified
	.eabi_attribute 6, 10
	.eabi_attribute 7, 65
	.eabi_attribute 8, 1
	.eabi_attribute 9, 2
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.file	"vulnerable_opt.bc"
	.section	.debug_info,"",%progbits
.Lsection_info:
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",%progbits
	.section	.debug_macinfo,"",%progbits
	.section	.debug_line,"",%progbits
.Lsection_line:
	.section	.debug_loc,"",%progbits
	.section	.debug_pubtypes,"",%progbits
	.section	.debug_str,"MS",%progbits,1
.Linfo_string:
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
	.section	.debug_loc,"",%progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.file	1 "vulnerable.c"
	.text
	.align	2
	.type	malicious,%function
malicious:                              @ @malicious
.Lfunc_begin0:
	.loc	1 6 0                   @ vulnerable.c:6:0
@ BB#0:                                 @ %entry
	.loc	1 7 0 prologue_end      @ vulnerable.c:7:0
	push	{r11, lr}
	mov	r11, sp
	ldr	r0, .LCPI0_0
	bl	printf
	.loc	1 8 0                   @ vulnerable.c:8:0
	pop	{r11, pc}
.Ltmp0:
	.align	2
@ BB#1:
.LCPI0_0:
	.long	.L.str
.Ltmp1:
	.size	malicious, .Ltmp1-malicious
.Lfunc_end0:

	.align	2
	.type	foobar,%function
foobar:                                 @ @foobar
.Lfunc_begin1:
	.loc	1 11 0                  @ vulnerable.c:11:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	mov	r1, r0
	add	r4, sp, #6
	str	r1, [r11, #-8]
	.loc	1 13 0 prologue_end     @ vulnerable.c:13:0
.Ltmp2:
	mov	r0, r4
	bl	strcpy
	.loc	1 15 0                  @ vulnerable.c:15:0
	ldr	r0, .LCPI1_0
	mov	r1, r4
	bl	printf
	.loc	1 16 0                  @ vulnerable.c:16:0
	sub	sp, r11, #4
	pop	{r4, r11, pc}
.Ltmp3:
	.align	2
@ BB#1:
.LCPI1_0:
	.long	.L.str1
.Ltmp4:
	.size	foobar, .Ltmp4-foobar
.Lfunc_end1:

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
.Lfunc_begin2:
	.loc	1 19 0                  @ vulnerable.c:19:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, #0
	stmib	sp, {r0, r4}
	str	r1, [sp]
	.loc	1 20 0 prologue_end     @ vulnerable.c:20:0
.Ltmp5:
	ldr	r0, [sp, #4]
	cmp	r0, #1
	bgt	.LBB2_2
@ BB#1:                                 @ %if.then
	.loc	1 22 0                  @ vulnerable.c:22:0
.Ltmp6:
	ldr	r0, .LCPI2_0
	bl	printf
	mov	r0, #1
	.loc	1 23 0                  @ vulnerable.c:23:0
	str	r0, [sp, #8]
	b	.LBB2_3
.Ltmp7:
.LBB2_2:                                @ %if.end
	.loc	1 25 0                  @ vulnerable.c:25:0
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	bl	foobar
	.loc	1 26 0                  @ vulnerable.c:26:0
	str	r4, [sp, #8]
.LBB2_3:                                @ %return
	ldr	r0, [sp, #8]
	sub	sp, r11, #4
	pop	{r4, r11, pc}
.Ltmp8:
	.align	2
@ BB#4:
.LCPI2_0:
	.long	.L.str2
.Ltmp9:
	.size	main, .Ltmp9-main
.Lfunc_end2:

	.globl	cfi_abort
	.align	2
	.type	cfi_abort,%function
cfi_abort:                              @ @cfi_abort
@ BB#0:                                 @ %entry
.LBB3_1:                                @ %loop
                                        @ =>This Inner Loop Header: Depth=1
	b	.LBB3_1
.Ltmp10:
	.size	cfi_abort, .Ltmp10-cfi_abort

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	 "\n\tHow did we get here??\n\n"
	.size	.L.str, 26

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	 "%s\n"
	.size	.L.str1, 4

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	 "Usage: vulnerable <str>\n"
	.size	.L.str2, 25

	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",%progbits
.L.debug_info_begin0:
	.long	187                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0xb4 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	12                      @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	0                       @ DW_AT_low_pc
	.long	.Lsection_line          @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.byte	2                       @ Abbrev [2] 0x22:0x11 DW_TAG_subprogram
	.long	.Linfo_string3          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	5                       @ DW_AT_decl_line
                                        @ DW_AT_external
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	3                       @ Abbrev [3] 0x33:0x2e DW_TAG_subprogram
	.long	.Linfo_string4          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	4                       @ Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	161                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	5                       @ Abbrev [5] 0x52:0xe DW_TAG_variable
	.long	.Linfo_string9          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.long	173                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	6
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x61:0x32 DW_TAG_subprogram
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	147                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	4                       @ Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.long	147                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	4                       @ Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.long	.Linfo_string11         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.long	185                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0x93:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0x9a:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	8                       @ Abbrev [8] 0xa1:0x5 DW_TAG_pointer_type
	.long	154                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0xa6:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	10                      @ Abbrev [10] 0xad:0xc DW_TAG_array_type
	.long	154                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xb2:0x6 DW_TAG_subrange_type
	.long	166                     @ DW_AT_type
	.byte	9                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0xb9:0x5 DW_TAG_pointer_type
	.long	161                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",%progbits
.L.debug_abbrev_begin:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	16                      @ DW_AT_stmt_list
	.byte	6                       @ DW_FORM_data4
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	2                       @ DW_AT_location
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	39                      @ DW_AT_prototyped
	.byte	25                      @ DW_FORM_flag_present
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	1                       @ DW_FORM_addr
	.byte	64                      @ DW_AT_frame_base
	.byte	10                      @ DW_FORM_block1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	47                      @ DW_AT_upper_bound
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
.L.debug_abbrev_end:
	.section	.debug_aranges,"",%progbits
	.section	.debug_ranges,"",%progbits
	.section	.debug_macinfo,"",%progbits
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	 "clang version 3.3.1 (tags/RELEASE_33/final)"
.Linfo_string1:
	.asciz	 "vulnerable.c"
.Linfo_string2:
	.asciz	 "/home/lynn/buff-overflow/TwoIDTest"
.Linfo_string3:
	.asciz	 "malicious"
.Linfo_string4:
	.asciz	 "foobar"
.Linfo_string5:
	.asciz	 "main"
.Linfo_string6:
	.asciz	 "int"
.Linfo_string7:
	.asciz	 "str"
.Linfo_string8:
	.asciz	 "char"
.Linfo_string9:
	.asciz	 "buf"
.Linfo_string10:
	.asciz	 "argc"
.Linfo_string11:
	.asciz	 "argv"

