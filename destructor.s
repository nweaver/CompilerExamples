	.file	"destructor.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z14destructorTestv
	.type	_Z14destructorTestv, @function
_Z14destructorTestv:
.LFB0:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA0
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -24[rbp], rax
	xor	eax, eax
	lea	rax, -40[rbp]
	mov	esi, 42
	mov	rdi, rax
.LEHB0:
	call	_ZN3FooC1Ei@PLT
.LEHE0:
	lea	rax, -32[rbp]
	mov	esi, 1337
	mov	rdi, rax
.LEHB1:
	call	_ZN3BarC1Ei@PLT
.LEHE1:
	lea	rax, -40[rbp]
	mov	esi, 42
	mov	rdi, rax
.LEHB2:
	call	_ZN3Foo14staticDispatchEi@PLT
.LEHE2:
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZN3BarD1Ev@PLT
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZN3FooD1Ev@PLT
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L4
	jmp	.L7
.L6:
	endbr64
	mov	rbx, rax
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	_ZN3BarD1Ev@PLT
	jmp	.L3
.L5:
	endbr64
	mov	rbx, rax
.L3:
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZN3FooD1Ev@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L7:
	call	__stack_chk_fail@PLT
.L4:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA0:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE0-.LLSDACSB0
.LLSDACSB0:
	.uleb128 .LEHB0-.LFB0
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB0
	.uleb128 0
	.uleb128 .LEHB2-.LFB0
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L6-.LFB0
	.uleb128 0
	.uleb128 .LEHB3-.LFB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE0:
	.text
	.size	_Z14destructorTestv, .-_Z14destructorTestv
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
