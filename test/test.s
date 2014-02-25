<<<<<<< Updated upstream
	.syntax unified
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.file	"test.bc"
	.text
	.globl	sum
	.align	2
	.type	sum,%function
sum:                                    @ @sum
	.fnstart
	.long	2425393296              @ 0x90909090
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp0:
	.size	sum, .Ltmp0-sum
	.cantunwind
	.fnend

	.globl	other_sum
	.align	2
	.type	other_sum,%function
other_sum:                              @ @other_sum
	.fnstart
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	add	r0, r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp1:
	.size	other_sum, .Ltmp1-other_sum
	.cantunwind
	.fnend

	.globl	testing
	.align	2
	.type	testing,%function
testing:                                @ @testing
	.fnstart
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp]                @ 4-byte Reload
	blx	r2
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp2:
	.size	testing, .Ltmp2-testing
	.cantunwind
	.fnend

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
	.fnstart
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	ldr	r0, .LCPI3_0
	ldr	r1, .LCPI3_1
	ldr	r1, [r1]
	ldr	r2, .LCPI3_2
	ldr	r3, .LCPI3_3
	ldr	r12, .LCPI3_4
	str	r12, [r11, #-4]
	str	r3, [r11, #-8]
	str	r2, [sp, #12]
	str	r0, [r1]
	ldr	r0, [r11, #-8]
	cmp	r0, #10
	bge	.LBB3_2
@ BB#1:                                 @ %if.then
	ldr	r0, .LCPI3_7
	ldr	r0, [r0]
	ldr	r1, .LCPI3_8
	ldr	r1, [r1]
	str	r0, [r1]
	b	.LBB3_3
.LBB3_2:                                @ %if.else
	ldr	r0, .LCPI3_5
	ldr	r0, [r0]
	ldr	r1, .LCPI3_6
	ldr	r1, [r1]
	str	r0, [r1]
.LBB3_3:                                @ %if.end
	ldr	r0, .LCPI3_12
	ldr	r0, [r0]
	ldr	r1, .LCPI3_13
	ldr	r1, [r1]
	ldr	r2, .LCPI3_14
	ldr	r2, [r2]
	ldr	r2, [r2]
	ldr	r3, [r11, #-8]
	ldr	r12, [sp, #12]
=======
	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.section	__TEXT,__const_coal,coalesced
	.section	__TEXT,__picsymbolstub4,symbol_stubs,none,16
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.section	__TEXT,__cstring,cstring_literals
	.syntax unified
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sum
	.align	2
_sum:                                   @ @sum
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	str	r0, [sp]
	ldr	r0, [sp]
	str	r0, [sp, #4]
@ BB#1:                                 @ %return
	ldr	r0, [sp, #4]
	add	sp, sp, #16
	bx	lr

	.globl	_other_sum
	.align	2
_other_sum:                             @ @other_sum
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	add	r0, r0, r1
	add	r0, r0, #1
	str	r0, [sp]
	ldr	r0, [sp]
	str	r0, [sp, #4]
@ BB#1:                                 @ %return
	ldr	r0, [sp, #4]
	add	sp, sp, #16
	bx	lr

	.globl	_testing
	.align	2
_testing:                               @ @testing
@ BB#0:                                 @ %entry
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #32
	bic	sp, sp, #7
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #16]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #4]            @ 4-byte Reload
	blx	r2
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	str	r0, [sp, #12]
@ BB#1:                                 @ %return
	ldr	r0, [sp, #12]
	mov	sp, r7
	pop	{r7, lr}
	bx	lr

	.globl	_main
	.align	2
_main:                                  @ @main
@ BB#0:                                 @ %entry
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #32
	mov	r0, #15
	str	r0, [r7, #-12]
	mov	r0, #25
	str	r0, [sp, #16]
	ldr	r0, LCPI3_18
LPC3_8:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	mov	r1, #6
	str	r1, [r0]
	ldr	r0, [r7, #-12]
	cmp	r0, #69
	str	r0, [sp, #12]           @ 4-byte Spill
	bgt	LBB3_9
	b	LBB3_1
LBB3_1:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #49
	bgt	LBB3_8
	b	LBB3_2
LBB3_2:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #27
	bgt	LBB3_6
	b	LBB3_3
LBB3_3:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #10
	beq	LBB3_11
	b	LBB3_4
LBB3_4:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #15
	beq	LBB3_12
	b	LBB3_5
LBB3_5:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #16
	beq	LBB3_13
	b	LBB3_19
LBB3_6:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #28
	beq	LBB3_14
	b	LBB3_7
LBB3_7:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #29
	beq	LBB3_15
	b	LBB3_19
LBB3_8:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #50
	beq	LBB3_16
	b	LBB3_19
LBB3_9:                                 @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #70
	beq	LBB3_17
	b	LBB3_10
LBB3_10:                                @ %entry
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #71
	beq	LBB3_18
	b	LBB3_19
LBB3_11:                                @ %bb
	ldr	r0, LCPI3_6
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_12:                                @ %bb1
	ldr	r0, LCPI3_5
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_13:                                @ %bb2
	ldr	r0, LCPI3_4
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_14:                                @ %bb3
	ldr	r0, LCPI3_3
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_15:                                @ %bb4
	ldr	r0, LCPI3_2
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_16:                                @ %bb5
	ldr	r0, LCPI3_1
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_17:                                @ %bb6
	ldr	r0, LCPI3_1
	str	r0, [sp, #16]
	b	LBB3_19
LBB3_18:                                @ %bb7
	ldr	r0, LCPI3_0
	str	r0, [sp, #16]
LBB3_19:                                @ %bb8
	ldr	r0, [r7, #-12]
	cmp	r0, #9
	bgt	LBB3_21
@ BB#20:                                @ %bb9
	ldr	r0, LCPI3_9
LPC3_2:
	add	r0, pc, r0
	ldr	r1, LCPI3_10
LPC3_3:
	ldr	r1, [pc, r1]
	str	r0, [r1]
	b	LBB3_22
LBB3_21:                                @ %bb10
	ldr	r0, LCPI3_7
LPC3_0:
	add	r0, pc, r0
	ldr	r1, LCPI3_8
LPC3_1:
	ldr	r1, [pc, r1]
	str	r0, [r1]
LBB3_22:                                @ %bb11
	ldr	r0, LCPI3_15
LPC3_5:
	add	r0, pc, r0
	ldr	r1, LCPI3_16
LPC3_6:
	ldr	r1, [pc, r1]
	ldr	r2, LCPI3_17
LPC3_7:
	ldr	r2, [pc, r2]
	ldr	r2, [r2]
	ldr	r3, [r7, #-12]
	ldr	r12, [sp, #16]
>>>>>>> Stashed changes
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r3
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r12
	blx	r2
<<<<<<< Updated upstream
	ldr	r1, [r11, #-8]
	add	r0, r1, r0
	str	r0, [r11, #-8]
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r0, [r0]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	ldr	r1, [r1]
	bl	sum
	ldr	r1, .LCPI3_9
	ldr	r2, .LCPI3_10
	ldr	r3, .LCPI3_11
	ldr	r3, [r3]
	ldr	r12, [r11, #-8]
	add	r0, r12, r0
	str	r0, [r11, #-8]
	ldr	r0, [r3]
	bl	testing
	ldr	r1, .LCPI3_4
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#4:
.LCPI3_0:
	.long	6                       @ 0x6
.LCPI3_1:
	.long	global_var2
.LCPI3_2:
	.long	25                      @ 0x19
.LCPI3_3:
	.long	15                      @ 0xf
.LCPI3_4:
	.long	0                       @ 0x0
.LCPI3_5:
	.long	other_sum
.LCPI3_6:
	.long	sum_func
.LCPI3_7:
	.long	sum
.LCPI3_8:
	.long	sum_func
.LCPI3_9:
	.long	3                       @ 0x3
.LCPI3_10:
	.long	4                       @ 0x4
.LCPI3_11:
	.long	sum_func
.LCPI3_12:
	.long	global_var2
.LCPI3_13:
	.long	global_var
.LCPI3_14:
	.long	sum_func
.Ltmp3:
	.size	main, .Ltmp3-main
	.cantunwind
	.fnend

	.type	global_var,%object      @ @global_var
	.data
	.globl	global_var
	.align	2
global_var:
	.long	55                      @ 0x37
	.size	global_var, 4

	.type	global_var2,%object     @ @global_var2
	.comm	global_var2,4,4
	.type	sum_func,%object        @ @sum_func
	.comm	sum_func,4,4

	.ident	"clang version 3.5 (trunk 200403) (llvm/trunk 200402)"
=======
	ldr	r1, [r7, #-12]
	add	r0, r0, r1
	str	r0, [r7, #-12]
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [r0]
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r2]
	bl	_sum
	ldr	r1, LCPI3_12
	ldr	r2, LCPI3_13
	ldr	r3, LCPI3_14
LPC3_4:
	ldr	r3, [pc, r3]
	ldr	r12, [r7, #-12]
	add	r0, r0, r12
	str	r0, [r7, #-12]
	ldr	r0, [r3]
	bl	_testing
	ldr	r1, LCPI3_11
	str	r1, [r7, #-8]
	ldr	r1, [r7, #-8]
	str	r1, [r7, #-4]
	str	r0, [sp]                @ 4-byte Spill
@ BB#23:                                @ %return
	ldr	r0, [r7, #-4]
	mov	sp, r7
	pop	{r7, lr}
	bx	lr
	.align	2
@ BB#24:
	.data_region
LCPI3_0:
	.long	82                      @ 0x52
LCPI3_1:
	.long	89                      @ 0x59
LCPI3_2:
	.long	68                      @ 0x44
LCPI3_3:
	.long	31                      @ 0x1f
LCPI3_4:
	.long	21                      @ 0x15
LCPI3_5:
	.long	16                      @ 0x10
LCPI3_6:
	.long	20                      @ 0x14
LCPI3_7:
	.long	_other_sum-(LPC3_0+8)
LCPI3_8:
	.long	L_sum_func$non_lazy_ptr-(LPC3_1+8)
LCPI3_9:
	.long	_sum-(LPC3_2+8)
LCPI3_10:
	.long	L_sum_func$non_lazy_ptr-(LPC3_3+8)
LCPI3_11:
	.long	0                       @ 0x0
LCPI3_12:
	.long	3                       @ 0x3
LCPI3_13:
	.long	4                       @ 0x4
LCPI3_14:
	.long	L_sum_func$non_lazy_ptr-(LPC3_4+8)
LCPI3_15:
	.long	_global_var-(LPC3_5+8)
LCPI3_16:
	.long	L_global_var2$non_lazy_ptr-(LPC3_6+8)
LCPI3_17:
	.long	L_sum_func$non_lazy_ptr-(LPC3_7+8)
LCPI3_18:
	.long	L_global_var2$non_lazy_ptr-(LPC3_8+8)
	.end_data_region

	.section	__DATA,__data
	.globl	_global_var             @ @global_var
	.align	2
_global_var:
	.long	55                      @ 0x37

	.comm	_global_var2,4,2        @ @global_var2
	.comm	_sum_func,4,2           @ @sum_func

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.align	2
L_global_var2$non_lazy_ptr:
	.indirect_symbol	_global_var2
	.long	0
L_sum_func$non_lazy_ptr:
	.indirect_symbol	_sum_func
	.long	0

.subsections_via_symbols
>>>>>>> Stashed changes
