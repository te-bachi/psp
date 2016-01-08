	.file	"writesm_m2.cpp"
	.text
.Ltext0:
	.type	_ZL4initiPPc, @function
_ZL4initiPPc:
.LFB0:
	.file 1 "writesm_m2.cpp"
	.loc 1 48 0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA0
	pushq	%rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI1:
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 50 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
.LEHB0:
	call	_M2_Storage_init
	.loc 1 51 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_SYSTEM_init
	.loc 1 52 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_M2RTS_init
	.loc 1 53 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_RTExceptions_init
	.loc 1 54 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_M2EXCEPTION_init
	.loc 1 55 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_RTentity_init
	.loc 1 56 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_EXCEPTIONS_init
	.loc 1 57 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_StrLib_init
	.loc 1 58 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_ASCII_init
	.loc 1 59 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_Indexing_init
	.loc 1 60 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_errno_init
	.loc 1 61 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_termios_init
	.loc 1 62 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_FIO_init
	.loc 1 63 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_IO_init
	.loc 1 64 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_StdIO_init
	.loc 1 65 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_SysExceptions_init
	.loc 1 66 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_StrIO_init
	.loc 1 67 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_NumberIO_init
	.loc 1 68 0
	call	M2RTS_ExecuteInitialProcedures
	.loc 1 69 0
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_M2_WriteSm_init
.LEHE0:
	.loc 1 74 0
	jmp	.L7
.L6:
	movq	%rax, %rbx
	.loc 1 71 0
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L5:
	movq	%rax, %rdi
	call	__cxa_begin_catch
.LEHB2:
	.loc 1 72 0
	call	RTExceptions_DefaultErrorCatch
.LEHE2:
.LEHB3:
	.loc 1 71 0
	call	__cxa_end_catch
.LEHE3:
.L7:
	.loc 1 74 0
	nop
.L1:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
.LCFI2:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA0:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT0-.LLSDATTD0
.LLSDATTD0:
	.byte	0x1
	.uleb128 .LLSDACSE0-.LLSDACSB0
.LLSDACSB0:
	.uleb128 .LEHB0-.LFB0
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L5-.LFB0
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
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
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT0:
	.text
	.size	_ZL4initiPPc, .-_ZL4initiPPc
	.type	_ZL6finishv, @function
_ZL6finishv:
.LFB1:
	.loc 1 77 0
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1
	pushq	%rbp
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI4:
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
.LEHB4:
	.loc 1 79 0
	call	M2RTS_ExecuteTerminationProcedures
	.loc 1 80 0
	call	_M2_WriteSm_finish
	.loc 1 81 0
	call	_M2_NumberIO_finish
	.loc 1 82 0
	call	_M2_StrIO_finish
	.loc 1 83 0
	call	_M2_SysExceptions_finish
	.loc 1 84 0
	call	_M2_StdIO_finish
	.loc 1 85 0
	call	_M2_IO_finish
	.loc 1 86 0
	call	_M2_FIO_finish
	.loc 1 87 0
	call	_M2_termios_finish
	.loc 1 88 0
	call	_M2_errno_finish
	.loc 1 89 0
	call	_M2_Indexing_finish
	.loc 1 90 0
	call	_M2_ASCII_finish
	.loc 1 91 0
	call	_M2_StrLib_finish
	.loc 1 92 0
	call	_M2_EXCEPTIONS_finish
	.loc 1 93 0
	call	_M2_RTentity_finish
	.loc 1 94 0
	call	_M2_M2EXCEPTION_finish
	.loc 1 95 0
	call	_M2_RTExceptions_finish
	.loc 1 96 0
	call	_M2_M2RTS_finish
	.loc 1 97 0
	call	_M2_SYSTEM_finish
	.loc 1 98 0
	call	_M2_Storage_finish
.LEHE4:
	.loc 1 99 0
	movl	$0, %edi
	call	exit
.L12:
	movq	%rax, %rbx
	.loc 1 101 0
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L11:
	movq	%rax, %rdi
	call	__cxa_begin_catch
.LEHB6:
	.loc 1 102 0
	call	RTExceptions_DefaultErrorCatch
.LEHE6:
.LEHB7:
	.loc 1 101 0
	call	__cxa_end_catch
.LEHE7:
	.loc 1 104 0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
.LCFI5:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.section	.gcc_except_table
	.align 4
.LLSDA1:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB4-.LFB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB1
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB1
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB1
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L12-.LFB1
	.uleb128 0
	.uleb128 .LEHB7-.LFB1
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT1:
	.text
	.size	_ZL6finishv, .-_ZL6finishv
	.globl	main
	.type	main, @function
main:
.LFB2:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
.LCFI7:
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 108 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL4initiPPc
	.loc 1 109 0
	call	_ZL6finishv
	.loc 1 110 0
	movl	$0, %eax
	.loc 1 111 0
	leave
.LCFI8:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdb
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3
	.byte	0x4
	.long	.LASF4
	.long	.LASF5
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x2f
	.quad	.LFB0
	.quad	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x6a
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x2f
	.long	0x6a
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x2f
	.long	0x71
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.long	0x77
	.uleb128 0x5
	.byte	0x8
	.long	0x7d
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x7
	.long	.LASF7
	.byte	0x1
	.byte	0x4c
	.quad	.LFB1
	.quad	.LFE1
	.long	.LLST1
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0x6a
	.long	0x6a
	.quad	.LFB2
	.quad	.LFE2
	.long	.LLST2
	.byte	0x1
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x6a
	.long	0x6a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.long	.LASF1
	.byte	0x1
	.byte	0x6a
	.long	0x71
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB0-.Ltext0
	.quad	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI2-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB1-.Ltext0
	.quad	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI3-.Ltext0
	.quad	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LFE1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST2:
	.quad	.LFB2-.Ltext0
	.quad	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI6-.Ltext0
	.quad	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI7-.Ltext0
	.quad	.LCFI8-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI8-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"argv"
.LASF4:
	.string	"writesm_m2.cpp"
.LASF7:
	.string	"finish"
.LASF8:
	.string	"main"
.LASF2:
	.string	"char"
.LASF0:
	.string	"argc"
.LASF3:
	.string	"GNU C++ 4.7.4"
.LASF6:
	.string	"init"
.LASF5:
	.string	"/home/andreas/src/psp/modula-2/writesm"
	.ident	"GCC: (GNU) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
