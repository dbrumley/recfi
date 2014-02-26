	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sum
	.align	4, 0x90
_sum:                                   ## @sum
## BB#0:                                ## %entry
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	addl	-4(%rsp), %esi
	movl	%esi, -16(%rsp)
	movl	%esi, -12(%rsp)
	movl	-12(%rsp), %eax
	retq

	.globl	_other_sum
	.align	4, 0x90
_other_sum:                             ## @other_sum
## BB#0:                                ## %entry
                                        ## kill: ESI<def> ESI<kill> RSI<def>
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movl	-4(%rsp), %eax
	leal	1(%rax,%rsi), %eax
	movl	%eax, -16(%rsp)
	movl	%eax, -12(%rsp)
	movl	-12(%rsp), %eax
	retq

	.globl	_testing
	.align	4, 0x90
_testing:                               ## @testing
## BB#0:                                ## %entry
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%edx, 8(%rsp)
	movl	12(%rsp), %edi
	movl	%edx, %esi
	callq	*16(%rsp)
	movl	%eax, (%rsp)
	movl	%eax, 4(%rsp)
	movl	4(%rsp), %eax
	addq	$24, %rsp
	retq

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:                                ## %entry
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	$15, 12(%rsp)
	movl	$25, 8(%rsp)
	movq	_global_var2@GOTPCREL(%rip), %r14
	movl	$6, (%r14)
	movl	12(%rsp), %eax
	cmpl	$69, %eax
	jg	LBB3_10
## BB#1:                                ## %entry
	cmpl	$49, %eax
	jg	LBB3_16
## BB#2:                                ## %entry
	cmpl	$27, %eax
	jg	LBB3_7
## BB#3:                                ## %entry
	cmpl	$10, %eax
	je	LBB3_13
## BB#4:                                ## %entry
	cmpl	$15, %eax
	jne	LBB3_5
## BB#14:                               ## %bb1
	movl	$16, 8(%rsp)
	jmp	LBB3_18
LBB3_10:                                ## %entry
	cmpl	$70, %eax
	je	LBB3_17
## BB#11:                               ## %entry
	cmpl	$71, %eax
	jne	LBB3_18
## BB#12:                               ## %bb7
	movl	$82, 8(%rsp)
	jmp	LBB3_18
LBB3_16:                                ## %entry
	cmpl	$50, %eax
	jne	LBB3_18
LBB3_17:                                ## %bb6
	movl	$89, 8(%rsp)
LBB3_18:                                ## %bb8
	cmpl	$9, 12(%rsp)
	jg	LBB3_20
## BB#19:                               ## %bb9
	leaq	_sum(%rip), %rax
	jmp	LBB3_21
LBB3_20:                                ## %bb10
	leaq	_other_sum(%rip), %rax
LBB3_21:                                ## %bb11
	movq	_sum_func@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_sum_func@GOTPCREL(%rip), %rbx
	movl	12(%rsp), %edi
	movl	8(%rsp), %esi
	callq	*(%rbx)
	addl	%eax, 12(%rsp)
	movl	(%r14), %esi
	movl	_global_var(%rip), %edi
	callq	_sum
	addl	%eax, 12(%rsp)
	movq	(%rbx), %rdi
	movl	$3, %esi
	movl	$4, %edx
	callq	_testing
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	20(%rsp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
LBB3_7:                                 ## %entry
	cmpl	$28, %eax
	jne	LBB3_8
## BB#15:                               ## %bb3
	movl	$31, 8(%rsp)
	jmp	LBB3_18
LBB3_8:                                 ## %entry
	cmpl	$29, %eax
	jne	LBB3_18
## BB#9:                                ## %bb4
	movl	$68, 8(%rsp)
	jmp	LBB3_18
LBB3_13:                                ## %bb
	movl	$20, 8(%rsp)
	jmp	LBB3_18
LBB3_5:                                 ## %entry
	cmpl	$16, %eax
	jne	LBB3_18
## BB#6:                                ## %bb2
	movl	$21, 8(%rsp)
	jmp	LBB3_18

	.section	__DATA,__data
	.globl	_global_var             ## @global_var
	.align	2
_global_var:
	.long	55                      ## 0x37

	.comm	_global_var2,4,2        ## @global_var2
	.comm	_sum_func,8,3           ## @sum_func

.subsections_via_symbols
