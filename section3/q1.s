	.file	"q1.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	func
	.type	func, @function
func:
	subq	$24, %rsp
	movl	$42, 8(%rsp)
	movl	$0, 12(%rsp)
	jmp	.L2
.L3:
	movl	12(%rsp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, 12(%rsp)
.L2:
	movl	12(%rsp), %eax
	cmpl	8(%rsp), %eax
	jl	.L3
	movl	$1, %eax
	addq	$24, %rsp
	ret
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	subq	$8, %rsp
	movl	$0, %eax
	call	func
	addq	$8, %rsp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
