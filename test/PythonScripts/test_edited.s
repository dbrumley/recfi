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
	mov pc, pc
	.long #784865139
@ BB#0:
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	add	sp, sp, #8
	mov	r12, lr
	push r0
	ldr r0, #1383831299
	add r12, r12, #4
	cmp r12, r0
	pop r0
	bne abort
	add r12, r12, #4
	mov pc, r12

	.globl	_other_sum
	.align	2
_other_sum:                             @ @other_sum
	mov pc, pc
	.long #784865139
@ BB#0:
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	add	r0, r0, r1
	add	r0, r0, #1
	add	sp, sp, #8
	mov	r12, lr
	push r0
	ldr r0, #1383831299
	add r12, r12, #4
	cmp r12, r0
	pop r0
	bne abort
	add r12, r12, #4
	mov pc, r12

	.globl	_testing
	.align	2
_testing:                               @ @testing
@ BB#0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #16
	bic	sp, sp, #7
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldmib	sp, {r0, r3}
	mov	r1, r2
	mov	lr, pc
	mov	r12, r3
	push r0
	ldr r0, #784865139
	add r12, r12, #4
	cmp r12, r0
	pop r0
	bne abort
	add r12, r12, #4
	mov lr, pc
	mov pc, r12
	mov pc, pc
	.long #1383831299
	mov	sp, r7
	pop	{r7, lr}
	mov	r12, lr
	push r0
	ldr r0, #804745283
	add r12, r12, #4
	cmp r12, r0
	pop r0
	bne abort
	add r12, r12, #4
	mov pc, r12

	.globl	_main
	.align	2
_main:                                  @ @main
@ BB#0:
	push	{r4, lr}
	sub	sp, sp, #12
	mov	r0, #0
	mov	r1, #6
	str	r0, [sp, #8]
	mov	r0, #15
	str	r0, [sp, #4]
	mov	r0, #25
	str	r0, [sp]
	ldr	r0, LCPI3_0
LPC3_0:
	ldr	r0, [pc, r0]
	str	r1, [r0]
	ldr	r1, [sp, #4]
	cmp	r1, #9
	bgt	LBB3_2
@ BB#1:
	ldr	r0, LCPI3_3
	ldr	r1, LCPI3_4
LPC3_3:
	ldr	r0, [pc, r0]
LPC3_4:
	add	r1, pc, r1
	b	LBB3_3
LBB3_2:
	ldr	r0, LCPI3_1
	ldr	r1, LCPI3_2
LPC3_1:
	ldr	r0, [pc, r0]
LPC3_2:
	add	r1, pc, r1
LBB3_3:
	str	r1, [r0]
	ldr	r0, LCPI3_5
	ldr	r1, [sp]
LPC3_7:
	ldr	r4, [pc, r0]
	ldr	r0, [sp, #4]
	ldr	r2, [r4]
	mov	lr, pc
	mov	r12, r2
	push r0
	ldr r0, #784865139
	add r12, r12, #4
	cmp r12, r0
	pop r0
	bne abort
	add r12, r12, #4
	mov lr, pc
	mov pc, r12
	mov pc, pc
	.long #1383831299
	ldr	r1, [sp, #4]
	add	r0, r1, r0
	str	r0, [sp, #4]
	ldr	r0, LCPI3_6
LPC3_5:
	ldr	r0, [pc, r0]
	ldr	r1, [r0]
	ldr	r0, LCPI3_7
LPC3_6:
	ldr	r0, [pc, r0]
	bl	_sum
	mov pc, pc
	.long #1383831299
	ldr	r1, [sp, #4]
	mov	r2, #4
	add	r0, r1, r0
	mov	r1, #3
	str	r0, [sp, #4]
	ldr	r0, [r4]
	bl	_testing
	mov pc, pc
	.long #804745283
	mov	r0, #0
	add	sp, sp, #12
	pop	{r4, lr}
	mov	pc, lr
	.align	2
@ BB#4:
	.data_region
LCPI3_0:
	.long	L_global_var2$non_lazy_ptr-(LPC3_0+8)
LCPI3_1:
	.long	L_sum_func$non_lazy_ptr-(LPC3_1+8)
LCPI3_2:
	.long	_other_sum-(LPC3_2+8)
LCPI3_3:
	.long	L_sum_func$non_lazy_ptr-(LPC3_3+8)
LCPI3_4:
	.long	_sum-(LPC3_4+8)
LCPI3_5:
	.long	L_sum_func$non_lazy_ptr-(LPC3_7+8)
LCPI3_6:
	.long	L_global_var2$non_lazy_ptr-(LPC3_5+8)
LCPI3_7:
	.long	_global_var-(LPC3_6+8)
	.end_data_region

	.section	__DATA,__data
	.globl	_global_var             @ @global_var
	.align	2
_global_var:
	.long	55                      @ 0x37

	.comm	_global_var2,4,2        @ @global_var2
	.comm	_sum_func,4,3           @ @sum_func

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.align	2
L_global_var2$non_lazy_ptr:
	.indirect_symbol	_global_var2
	.long	0
L_sum_func$non_lazy_ptr:
	.indirect_symbol	_sum_func
	.long	0

.subsections_via_symbols
