	.file	"dispatch.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z12dispatchTestv
	.type	_Z12dispatchTestv, @function
_Z12dispatchTestv:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	call	_Z8make_foov@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 42
	mov	rdi, rax
	call	_ZN3Foo14staticDispatchEi@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 64
	mov	rdi, rax
	call	_ZN3Bar14staticDispatchEi@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1337
	mov	rdi, rax
	call	rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR [rax]
	add	rax, 8
	mov	rdx, QWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 3141
	mov	rdi, rax
	call	rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z12dispatchTestv, .-_Z12dispatchTestv
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
