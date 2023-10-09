	SECTION .note.GNU-stack noalloc noexec nowrite progbits

X	equ	1
MAX	equ	4000000

        global main
        extern printf

        SECTION .data
fmt     db      "%d", 10, 0

	SECTION .text
main:
	push	rbx
	xor	rax, rax
	xor	rbx, rbx
	xor	rcx, rcx
	xor	rdx, rdx
	mov	rax, X
loop:
	cmp	rax, MAX
	jge	print
	mov	rcx, rax
	add	rax, rbx
	mov	rbx, rcx
	mov	rcx, rax
	and	rcx, 1
	test	rcx,rcx
	jnz	loop
sum:
	add	rdx, rax
	jmp	loop

print:
	lea	rdi, [rel fmt]
	mov	rsi, rdx
	xor	rax, rax
	call 	printf WRT ..plt
	xor	rax, rax
	pop	rbx
	ret


