	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.section	__TEXT,__const_coal,coalesced
	.section	__TEXT,__picsymbolstub4,symbol_stubs,none,16
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.syntax unified
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sum
	.align	2
_sum:                                   @ @sum
@ BB#0:                                 @ %entry
	sub	sp, sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r2, [sp, #20]
	add	r2, r2, r1
	str	r2, [sp, #8]
	str	r2, [sp, #12]
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
@ BB#1:                                 @ %return
	ldr	r0, [sp, #12]
	add	sp, sp, #24
	mov	pc, lr

	.globl	_testing
	.align	2
_testing:                               @ @testing
@ BB#0:                                 @ %entry
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #48
	bic	sp, sp, #7
	str	r0, [sp, #40]
	str	r1, [sp, #36]
	str	r2, [sp, #32]
	ldr	r3, [sp, #40]
	ldr	r12, [sp, #36]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r12
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r2
	str	r2, [sp, #12]           @ 4-byte Spill
	mov	lr, pc
	mov	pc, r3
	str	r0, [sp, #24]
	str	r0, [sp, #28]
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	ldr	r2, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
@ BB#1:                                 @ %return
	ldr	r0, [sp, #28]
	mov	sp, r7
	pop	{r7, lr}
	mov	pc, lr

	.globl	_main
	.align	2
_main:                                  @ @main
@ BB#0:                                 @ %entry
	push	{lr}
	sub	sp, sp, #32
	mov	r0, #0
	ldr	r1, LCPI2_0
LPC2_2:
	ldr	r1, [pc, r1]
	ldr	r2, LCPI2_1
LPC2_3:
	add	r2, pc, r2
	str	r2, [r1]
	mov	r2, #5
	str	r2, [sp, #20]
	mov	r2, #25
	str	r2, [sp, #16]
	mov	r2, #6
	ldr	r3, LCPI2_2
LPC2_1:
	ldr	r3, [pc, r3]
	str	r2, [r3]
	ldr	r2, [r1]
	ldr	r12, [sp, #20]
	ldr	lr, [sp, #16]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r12
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, lr
	str	r3, [sp, #4]            @ 4-byte Spill
	mov	lr, pc
	mov	pc, r2
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	str	r0, [sp, #20]
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [r0]
	ldr	r2, LCPI2_3
LPC2_0:
	ldr	r0, [pc, r2]
	bl	_sum
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	str	r0, [sp, #20]
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0]
	mov	r1, #3
	mov	r2, #4
	bl	_testing
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	r1, [sp, #24]
	str	r1, [sp, #28]
	str	r0, [sp]                @ 4-byte Spill
@ BB#1:                                 @ %return
	ldr	r0, [sp, #28]
	add	sp, sp, #32
	pop	{lr}
	mov	pc, lr
	.align	2
@ BB#2:
	.data_region
LCPI2_0:
	.long	L_sum_func$non_lazy_ptr-(LPC2_2+8)
LCPI2_1:
	.long	_sum-(LPC2_3+8)
LCPI2_2:
	.long	L_global_var2$non_lazy_ptr-(LPC2_1+8)
LCPI2_3:
	.long	_global_var-(LPC2_0+8)
	.end_data_region

	.section	__DATA,__data
	.globl	_global_var             @ @global_var
	.align	2
_global_var:
	.long	55                      @ 0x37

	.comm	_sum_func,4,2           @ @sum_func
	.comm	_global_var2,4,2        @ @global_var2

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.align	2
L_global_var2$non_lazy_ptr:
	.indirect_symbol	_global_var2
	.long	0
L_sum_func$non_lazy_ptr:
	.indirect_symbol	_sum_func
	.long	0

.subsections_via_symbols
