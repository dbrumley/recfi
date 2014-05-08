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
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #35212
	@ [ ====== CFI ID end ====== ]
.Lfunc_begin0:
	.loc	1 6 0                   @ vulnerable.c:6:0
@ BB#0:                                 @ %entry
	.loc	1 7 0 prologue_end      @ vulnerable.c:7:0
	push	{r11, lr}
	mov	r11, sp
	ldr	r0, .LCPI0_0
	bl	printf
	.loc	1 8 0                   @ vulnerable.c:8:0
	@ [ === CFI checkret begin === ]
	@ [ === pop r11 pc === ]
	pop	{r11, r12}
	push {r0, r1}
	ldr r0, [r12] 	@ get destination ID
	mov r1, r12 	@ preserve dest addr
	movtne r12, #6998	@ ID encoding, nop
	ldr r12, [pc, #-12] 	@ get ID encoding
	cmp r0, r12
	bne cfi_abort
	mov r12, r1 	@ restore dest addr
	pop {r0, r1}
	mov pc, r12
	@ [ === CFI check end === ]
.Ltmp0:
	.align	2
@ BB#1:
.LCPI0_0:
	.long	.L.str
.Ltmp1:
	.size	malicious, .Ltmp1-malicious
.Lfunc_end0:

	.align	2
	.type	format_age,%function
format_age:                             @ @format_age
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #35212
	@ [ ====== CFI ID end ====== ]
.Lfunc_begin1:
	.loc	1 11 0                  @ vulnerable.c:11:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, r0
	.loc	1 12 0 prologue_end     @ vulnerable.c:12:0
.Ltmp2:
	ldr	r0, .LCPI1_0
	str	r1, [sp, #4]
	bl	printf
	.loc	1 13 0                  @ vulnerable.c:13:0
	mov	sp, r11
	@ [ === CFI checkret begin === ]
	@ [ === pop r11 pc === ]
	pop	{r11, r12}
	push {r0, r1}
	ldr r0, [r12] 	@ get destination ID
	mov r1, r12 	@ preserve dest addr
	movtne r12, #6998	@ ID encoding, nop
	ldr r12, [pc, #-12] 	@ get ID encoding
	cmp r0, r12
	bne cfi_abort
	mov r12, r1 	@ restore dest addr
	pop {r0, r1}
	mov pc, r12
	@ [ === CFI check end === ]
.Ltmp3:
	.align	2
@ BB#1:
.LCPI1_0:
	.long	.L.str1
.Ltmp4:
	.size	format_age, .Ltmp4-format_age
.Lfunc_end1:

	.align	2
	.type	format_name,%function
format_name:                            @ @format_name
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #35212
	@ [ ====== CFI ID end ====== ]
.Lfunc_begin2:
	.loc	1 16 0                  @ vulnerable.c:16:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, r0
	.loc	1 17 0 prologue_end     @ vulnerable.c:17:0
.Ltmp5:
	ldr	r0, .LCPI2_0
	str	r1, [sp, #4]
	bl	printf
	.loc	1 18 0                  @ vulnerable.c:18:0
	mov	sp, r11
	@ [ === CFI checkret begin === ]
	@ [ === pop r11 pc === ]
	pop	{r11, r12}
	push {r0, r1}
	ldr r0, [r12] 	@ get destination ID
	mov r1, r12 	@ preserve dest addr
	movtne r12, #6998	@ ID encoding, nop
	ldr r12, [pc, #-12] 	@ get ID encoding
	cmp r0, r12
	bne cfi_abort
	mov r12, r1 	@ restore dest addr
	pop {r0, r1}
	mov pc, r12
	@ [ === CFI check end === ]
.Ltmp6:
	.align	2
@ BB#1:
.LCPI2_0:
	.long	.L.str2
.Ltmp7:
	.size	format_name, .Ltmp7-format_name
.Lfunc_end2:

	.align	2
	.type	call_format,%function
call_format:                            @ @call_format
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #35212
	@ [ ====== CFI ID end ====== ]
.Lfunc_begin3:
	.loc	1 21 0                  @ vulnerable.c:21:0
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	add	r4, sp, #2
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	.loc	1 24 0 prologue_end     @ vulnerable.c:24:0
.Ltmp8:
	mov	r0, r4
	bl	strcpy
	.loc	1 26 0                  @ vulnerable.c:26:0
	ldr	r1, [r11, #-8]
	mov	r0, r4
	@ [ ====== CFI checktar begin ====== ]
	@ [ ====== blx r1 ====== ]
	push {r0}
	ldr r0, [r1] 	@ get destination ID
	movtne r12, #35212	@ ID encoding, nop
	ldr r12, [pc, #-12] 	@ get ID encoding
	cmp r0, r12
	bne cfi_abort
	pop {r0}
	blx	r1
	@ [ ====== CFI check end ====== ]
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #6998
	@ [ ====== CFI ID end ====== ]
	.loc	1 27 0                  @ vulnerable.c:27:0
	sub	sp, r11, #4
	@ [ === CFI checkret begin === ]
	@ [ === pop r4 r11 pc === ]
	pop	{r4, r11, r12}
	push {r0, r1}
	ldr r0, [r12] 	@ get destination ID
	mov r1, r12 	@ preserve dest addr
	movtne r12, #6998	@ ID encoding, nop
	ldr r12, [pc, #-12] 	@ get ID encoding
	cmp r0, r12
	bne cfi_abort
	mov r12, r1 	@ restore dest addr
	pop {r0, r1}
	mov pc, r12
	@ [ === CFI check end === ]
.Ltmp9:
.Ltmp10:
	.size	call_format, .Ltmp10-call_format
.Lfunc_end3:

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
.Lfunc_begin4:
	.loc	1 30 0                  @ vulnerable.c:30:0
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #8]
	mov	r2, #0
	str	r1, [sp, #4]
	.loc	1 31 0 prologue_end     @ vulnerable.c:31:0
.Ltmp11:
	ldr	r0, [sp, #8]
	str	r2, [r11, #-4]
	cmp	r0, #2
	bgt	.LBB4_2
@ BB#1:                                 @ %if.then
	.loc	1 33 0                  @ vulnerable.c:33:0
.Ltmp12:
	ldr	r0, .LCPI4_4
	bl	printf
	mvn	r0, #0
	b	.LBB4_8
.Ltmp13:
.LBB4_2:                                @ %if.end
	@DEBUG_VALUE: format_func <- [sp+#0]+#0
	.loc	1 38 0                  @ vulnerable.c:38:0
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI4_0
	mov	r2, #4
	ldr	r0, [r0, #8]
	bl	strncmp
	cmp	r0, #0
	beq	.LBB4_5
@ BB#3:                                 @ %if.else
	.loc	1 40 0                  @ vulnerable.c:40:0
	ldr	r0, [sp, #4]
	ldr	r1, .LCPI4_2
	mov	r2, #3
	ldr	r0, [r0, #8]
	bl	strncmp
	cmp	r0, #0
	bne	.LBB4_7
@ BB#4:                                 @ %if.then6
	.loc	1 41 0                  @ vulnerable.c:41:0
	ldr	r0, .LCPI4_3
	b	.LBB4_6
.LBB4_5:                                @ %if.then2
	.loc	1 39 0                  @ vulnerable.c:39:0
	ldr	r0, .LCPI4_1
.LBB4_6:                                @ %if.then6
	.loc	1 41 0                  @ vulnerable.c:41:0
	str	r0, [sp]
.LBB4_7:                                @ %if.end8
	.loc	1 43 0                  @ vulnerable.c:43:0
	ldr	r0, [sp, #4]
	ldr	r1, [r0, #4]
	ldr	r0, [sp]
	bl	call_format
	@ [ ====== CFI ID begin ====== ]
	movtne r12, #6998
	@ [ ====== CFI ID end ====== ]
	.loc	1 44 0                  @ vulnerable.c:44:0
	mov	r0, #0
.LBB4_8:                                @ %if.end8
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Ltmp14:
	.align	2
@ BB#9:
.LCPI4_0:
	.long	.L.str4
.LCPI4_1:
	.long	format_name
.LCPI4_2:
	.long	.L.str5
.LCPI4_3:
	.long	format_age
.LCPI4_4:
	.long	.L.str3
.Ltmp15:
	.size	main, .Ltmp15-main
.Lfunc_end4:

	.globl	cfi_abort
	.align	2
	.type	cfi_abort,%function
cfi_abort:                              @ @cfi_abort
@ BB#0:                                 @ %entry
.LBB5_1:                                @ %loop
                                        @ =>This Inner Loop Header: Depth=1
	b	.LBB5_1
.Ltmp16:
	.size	cfi_abort, .Ltmp16-cfi_abort

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	 "\n\tHow did we get here??\n\n"
	.size	.L.str, 26

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	 "\n\tYou are %s years old!\n\n"
	.size	.L.str1, 26

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	 "\n\tYour name is %s!\n\n"
	.size	.L.str2, 21

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	 "Usage: vulnerable <string> <format>\n"
	.size	.L.str3, 37

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	 "name"
	.size	.L.str4, 5

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	 "age"
	.size	.L.str5, 4

	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",%progbits
.L.debug_info_begin0:
	.long	287                     @ Length of Compilation Unit Info
	.short	2                       @ DWARF version number
	.long	.L.debug_abbrev_begin   @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x118 DW_TAG_compile_unit
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
	.byte	3                       @ Abbrev [3] 0x33:0x20 DW_TAG_subprogram
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
	.long	.Linfo_string9          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.long	253                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x53:0x20 DW_TAG_subprogram
	.long	.Linfo_string5          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	4                       @ Abbrev [4] 0x64:0xe DW_TAG_formal_parameter
	.long	.Linfo_string11         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.long	253                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	0                       @ End Of Children Mark
	.byte	3                       @ Abbrev [3] 0x73:0x3c DW_TAG_subprogram
	.long	.Linfo_string6          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
                                        @ DW_AT_external
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	4                       @ Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.long	.Linfo_string12         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.long	261                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	145
	.byte	120
	.byte	4                       @ Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.long	.Linfo_string13         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.long	253                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	12
	.byte	5                       @ Abbrev [5] 0xa0:0xe DW_TAG_variable
	.long	.Linfo_string14         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.long	273                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	2
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0xaf:0x40 DW_TAG_subprogram
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	239                     @ DW_AT_type
                                        @ DW_AT_external
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4             @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.byte	4                       @ Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.long	.Linfo_string15         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.long	239                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	8
	.byte	4                       @ Abbrev [4] 0xd2:0xe DW_TAG_formal_parameter
	.long	.Linfo_string16         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.long	285                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.byte	5                       @ Abbrev [5] 0xe0:0xe DW_TAG_variable
	.long	.Linfo_string12         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	261                     @ DW_AT_type
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.byte	0                       @ End Of Children Mark
	.byte	7                       @ Abbrev [7] 0xef:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	7                       @ Abbrev [7] 0xf6:0x7 DW_TAG_base_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	8                       @ Abbrev [8] 0xfd:0x5 DW_TAG_pointer_type
	.long	246                     @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x102:0x3 DW_TAG_subroutine_type
	.byte	10                      @ Abbrev [10] 0x103:0x1 DW_TAG_unspecified_parameters
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x105:0x5 DW_TAG_pointer_type
	.long	258                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10a:0x7 DW_TAG_base_type
	.long	.Linfo_string8          @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_encoding
	.byte	12                      @ Abbrev [12] 0x111:0xc DW_TAG_array_type
	.long	246                     @ DW_AT_type
	.byte	13                      @ Abbrev [13] 0x116:0x6 DW_TAG_subrange_type
	.long	266                     @ DW_AT_type
	.byte	9                       @ DW_AT_upper_bound
	.byte	0                       @ End Of Children Mark
	.byte	8                       @ Abbrev [8] 0x11d:0x5 DW_TAG_pointer_type
	.long	253                     @ DW_AT_type
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
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	24                      @ DW_TAG_unspecified_parameters
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
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
	.byte	12                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
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
	.asciz	 "/home/lynn/Documents/boeing-cfi/buff-overflow/MultiIDTest"
.Linfo_string3:
	.asciz	 "malicious"
.Linfo_string4:
	.asciz	 "format_age"
.Linfo_string5:
	.asciz	 "format_name"
.Linfo_string6:
	.asciz	 "call_format"
.Linfo_string7:
	.asciz	 "main"
.Linfo_string8:
	.asciz	 "int"
.Linfo_string9:
	.asciz	 "age"
.Linfo_string10:
	.asciz	 "char"
.Linfo_string11:
	.asciz	 "name"
.Linfo_string12:
	.asciz	 "format_func"
.Linfo_string13:
	.asciz	 "str"
.Linfo_string14:
	.asciz	 "buf"
.Linfo_string15:
	.asciz	 "argc"
.Linfo_string16:
	.asciz	 "argv"

