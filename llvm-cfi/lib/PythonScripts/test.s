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
@ BB#0:
	add	r0, r1, r0
	cfiid	#1819686100
	cficheckret	#1149665773
	mov	pc, lr

	.globl	_other_sum
	.align	2
_other_sum:                             @ @other_sum
@ BB#0:
	add	r0, r0, r1
	add	r0, r0, #1
	cfiid	#1819686100
	cficheckret	#1149665773
	mov	pc, lr

	.globl	_testing
	.align	2
_testing:                               @ @testing
@ BB#0:
	push	{lr}
	mov	r3, r0
	cfiid	#1819686100
	cfichecktar	#1819686100
	mov	r0, r1
	mov	r1, r2
	mov	lr, pc
	mov	pc, r3
	cfiid	#1149665773
	cficheckret	#1149665773
	pop	{lr}
	mov	pc, lr

	.globl	_main
	.align	2
_main:                                  @ @main
@ BB#0:
	ldr	r0, LCPI3_0
	mov	r1, #6
LPC3_2:
	ldr	r0, [pc, r0]
	str	r1, [r0]
	ldr	r0, LCPI3_1
	ldr	r1, LCPI3_2
LPC3_0:
	ldr	r0, [pc, r0]
LPC3_1:
	add	r1, pc, r1
	str	r1, [r0]
	mov	r0, #0
	mov	pc, lr
	.align	2
@ BB#1:
	.data_region
LCPI3_0:
	.long	L_global_var2$non_lazy_ptr-(LPC3_2+8)
LCPI3_1:
	.long	L_sum_func$non_lazy_ptr-(LPC3_0+8)
LCPI3_2:
	.long	_other_sum-(LPC3_1+8)
	.end_data_region

	.globl	_cfi_abort
	.align	2
_cfi_abort:                             @ @cfi_abort
@ BB#0:                                 @ %entry
LBB4_1:                                 @ %loop
                                        @ =>This Inner Loop Header: Depth=1
	b	LBB4_1

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
