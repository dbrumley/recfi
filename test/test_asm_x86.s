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
	ret

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
	ret

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:                                ## %entry
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	leaq	_sum(%rip), %rax
	movq	_sum_func@GOTPCREL(%rip), %r14
	movq	%rax, (%r14)
	movl	$5, 12(%rsp)
	movl	$25, 8(%rsp)
	movq	_global_var2@GOTPCREL(%rip), %rbx
	movl	$6, (%rbx)
	movl	8(%rsp), %esi
	movl	12(%rsp), %edi
	callq	*(%r14)
	addl	%eax, 12(%rsp)
	movl	(%rbx), %esi
	movl	_global_var(%rip), %edi
	callq	_sum
	addl	%eax, 12(%rsp)
	movq	(%r14), %rdi
	movl	$3, %esi
	movl	$4, %edx
	callq	_testing
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	20(%rsp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	ret

	.section	__DATA,__data
	.globl	_global_var             ## @global_var
	.align	2
_global_var:
	.long	55                      ## 0x37

	.comm	_sum_func,8,3           ## @sum_func
	.comm	_global_var2,4,2        ## @global_var2

.subsections_via_symbols
