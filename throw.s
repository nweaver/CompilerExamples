	.file	"throw.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z9throwTestv
	.type	_Z9throwTestv, @function
_Z9throwTestv:
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
	push	r12
	push	rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	edi, 8
	call	__cxa_allocate_exception@PLT
	mov	rbx, rax
	mov	esi, 42
	mov	rdi, rbx
.LEHB0:
	call	_ZN3FooC1Ei@PLT
.LEHE0:
	mov	rax, QWORD PTR _ZN3FooD1Ev@GOTPCREL[rip]
	mov	rdx, rax
	lea	rax, _ZTI3Foo[rip]
	mov	rsi, rax
	mov	rdi, rbx
.LEHB1:
	call	__cxa_throw@PLT
.L3:
	endbr64
	mov	r12, rax
	mov	rdi, rbx
	call	__cxa_free_exception@PLT
	mov	rax, r12
	mov	rdi, rax
	call	_Unwind_Resume@PLT
.LEHE1:
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
	.uleb128 .L3-.LFB0
	.uleb128 0
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE0:
	.text
	.size	_Z9throwTestv, .-_Z9throwTestv
	.globl	_Z9catchTestv
	.type	_Z9catchTestv, @function
_Z9catchTestv:
.LFB1:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1
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
	mov	esi, 3141
	mov	rdi, rax
.LEHB2:
	call	_ZN3FooC1Ei@PLT
.LEHE2:
	lea	rax, -40[rbp]
	mov	rdi, rax
	call	_ZN3FooD1Ev@PLT
	jmp	.L4
.L10:
	endbr64
	cmp	rdx, 1
	je	.L6
	mov	rdi, rax
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L6:
	mov	rdi, rax
	call	__cxa_begin_catch@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	mov	esi, 1337
	mov	rdi, rax
.LEHB4:
	call	_ZN3Foo14staticDispatchEi@PLT
.LEHE4:
.LEHB5:
	call	__cxa_end_catch@PLT
.LEHE5:
	jmp	.L4
.L11:
	endbr64
	mov	rbx, rax
	call	__cxa_end_catch@PLT
	mov	rax, rbx
	mov	rdi, rax
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L4:
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	mov	rbx, QWORD PTR -8[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.section	.gcc_except_table
	.align 4
.LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L10-.LFB1
	.uleb128 0x1
	.uleb128 .LEHB3-.LFB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB1
	.uleb128 0
	.uleb128 .LEHB5-.LFB1
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI3Foo-.
.LLSDATT1:
	.text
	.size	_Z9catchTestv, .-_Z9catchTestv
	.hidden	DW.ref._ZTI3Foo
	.weak	DW.ref._ZTI3Foo
	.section	.data.rel.local.DW.ref._ZTI3Foo,"awG",@progbits,DW.ref._ZTI3Foo,comdat
	.align 8
	.type	DW.ref._ZTI3Foo, @object
	.size	DW.ref._ZTI3Foo, 8
DW.ref._ZTI3Foo:
	.quad	_ZTI3Foo
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
