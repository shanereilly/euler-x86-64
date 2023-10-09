	SECTION .note.GNU-stack noalloc noexec nowrite progbits

MAX	equ	1000
X	equ	3
Y	equ	5

	global main
	extern printf

	SECTION .data
fmt	db	"%d", 10, 0

	SECTION .text
main:
	push	rbx
	xor	rbx, rbx	
	xor 	rcx, rcx
loop:
	inc	rcx
	cmp 	rcx, MAX
	je	print
	xor	rdx, rdx
	mov	rax, rcx
	mov 	rdi, X
	div	rdi
	cmp	rdx, 0
	je	sum
	xor	rdx, rdx
	mov	rax, rcx
	mov	rdi, Y
	div 	rdi
	cmp	rdx, 0
	je	sum
	jmp	loop
sum:
	add	rbx, rcx
	jmp	loop
print:
	lea	rdi, [rel fmt]
	mov	rsi, rbx
	xor	rax, rax		
	call	printf WRT ..plt		
	xor	rax,rax	
	pop	rbx
	ret

