	.file	"fun.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\360\237\216\211\360\237\216\211\360\237\216\211\360\237\216\211\360\237\216\212\360\237\216\212\360\237\216\212\360\237\216\212\360\237\214\275\360\237\214\275\360\237\214\275\360\237\216\212\360\237\216\212\360\237\216\212\360\237\216\212\360\237\216\211\360\237\216\211\360\237\216\211\360\237\216\211"
.LC1:
	.string	"               !!!FUN!!! "
	.text
	.globl	fun
	.type	fun, @function
fun:
	subq	$8, %rsp
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	nop
	addq	$8, %rsp
	ret
	.size	fun, .-fun
	.section	.rodata
	.align 8
.LC2:
	.string	"\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277\360\237\230\277"
.LC3:
	.string	"                No fun "
	.text
	.globl	noFun
	.type	noFun, @function
noFun:
	subq	$8, %rsp
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	nop
	addq	$8, %rsp
	ret
	.size	noFun, .-noFun
	.globl	fun_one
	.type	fun_one, @function
fun_one:
	subq	$24, %rsp
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rax
	movl	$33, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movl	$-1, %eax
.L5:
	addq	$24, %rsp
	ret
	.size	fun_one, .-fun_one
	.globl	fun_two
	.type	fun_two, @function
fun_two:
	subq	$24, %rsp
	movq	%rdi, 8(%rsp)
	movq	8(%rsp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	addl	$1, %eax
	addq	$24, %rsp
	ret
	.size	fun_two, .-fun_two
	.globl	fun_three
	.type	fun_three, @function
fun_three:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L9
	movq	-8(%rsp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	ret
.L9:
	movl	$-1, %eax
	ret
	.size	fun_three, .-fun_three
	.globl	fun_four
	.type	fun_four, @function
fun_four:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
	movq	-8(%rsp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rsp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L12
	movq	-8(%rsp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
	movq	-8(%rsp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	ret
.L12:
	movl	$-1, %eax
	ret
	.size	fun_four, .-fun_four
	.globl	fun_five
	.type	fun_five, @function
fun_five:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
	movl	$-1, %eax
	ret
.L15:
	movq	-8(%rsp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rsp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L17
	movq	-8(%rsp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	ret
.L17:
	addq	$1, -8(%rsp)
	jmp	.L15
	.size	fun_five, .-fun_five
	.globl	fun_six
	.type	fun_six, @function
fun_six:
	movq	%rdi, -24(%rsp)
	movl	$0, -4(%rsp)
	jmp	.L19
.L20:
	addl	$1, -4(%rsp)
.L19:
	movl	-4(%rsp), %edx
	movq	-24(%rsp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L20
	movl	-4(%rsp), %eax
	andl	$3, %eax
	ret
	.size	fun_six, .-fun_six
	.section	.rodata
	.align 8
.LC4:
	.string	"Error: Usage: ./fun [number of function] [argument]"
	.align 8
.LC5:
	.string	"Error: number of function must be between 1 and 6, inclusive"
	.text
	.globl	main
	.type	main, @function
main:
	subq	$40, %rsp
	movl	%edi, 12(%rsp)
	movq	%rsi, (%rsp)
	cmpl	$3, 12(%rsp)
	je	.L23
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	(%rsp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, 28(%rsp)
	cmpl	$6, 28(%rsp)
	ja	.L25
	movl	28(%rsp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L27(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L27(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L27:
	.long	.L25-.L27
	.long	.L32-.L27
	.long	.L31-.L27
	.long	.L30-.L27
	.long	.L29-.L27
	.long	.L28-.L27
	.long	.L26-.L27
	.text
.L32:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_one
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	call	fun
	jmp	.L35
.L33:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L31:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_two
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	call	fun
	jmp	.L35
.L36:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L30:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_three
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	call	fun
	jmp	.L35
.L38:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L29:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_four
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	call	fun
	jmp	.L35
.L40:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L28:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_five
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	call	fun
	jmp	.L35
.L42:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L26:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fun_six
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	call	fun
	jmp	.L35
.L44:
	movl	$0, %eax
	call	noFun
	jmp	.L35
.L25:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.L35:
	movl	$0, %eax
.L24:
	addq	$40, %rsp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
