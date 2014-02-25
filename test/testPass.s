	.syntax unified
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.file	"testPass.bc"
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
	.long	2425393296              @ 0x90909090
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
	.long	2425393296              @ 0x90909090
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
	.long	2425393296              @ 0x90909090
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
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r3
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r12
	blx	r2
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
