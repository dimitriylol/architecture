	.file	"OpenFile.cpp"
	.section	.text._ZNSt11char_traitsIcE12to_char_typeERKi,"axG",@progbits,_ZNSt11char_traitsIcE12to_char_typeERKi,comdat
	.weak	_ZNSt11char_traitsIcE12to_char_typeERKi
	.type	_ZNSt11char_traitsIcE12to_char_typeERKi, @function
_ZNSt11char_traitsIcE12to_char_typeERKi:
.LFB243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	_ZNSt11char_traitsIcE12to_char_typeERKi, .-_ZNSt11char_traitsIcE12to_char_typeERKi
	.section	.text._ZNSt11char_traitsIcE11eq_int_typeERKiS2_,"axG",@progbits,_ZNSt11char_traitsIcE11eq_int_typeERKiS2_,comdat
	.weak	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	.type	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_, @function
_ZNSt11char_traitsIcE11eq_int_typeERKiS2_:
.LFB245:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE245:
	.size	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_, .-_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	.section	.text._ZNSt11char_traitsIcE3eofEv,"axG",@progbits,_ZNSt11char_traitsIcE3eofEv,comdat
	.weak	_ZNSt11char_traitsIcE3eofEv
	.type	_ZNSt11char_traitsIcE3eofEv, @function
_ZNSt11char_traitsIcE3eofEv:
.LFB246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	_ZNSt11char_traitsIcE3eofEv, .-_ZNSt11char_traitsIcE3eofEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.align 2
	.globl	_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.type	_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode, @function
_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode:
.LFB1297:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1297
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$_ZTVSt8OpenFile+16, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev
.LEHE0:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
.LEHE1:
	jmp	.L10
.L9:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L10:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1297:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1297:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1297-.LLSDACSB1297
.LLSDACSB1297:
	.uleb128 .LEHB0-.LFB1297
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1297
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB1297
	.uleb128 0
	.uleb128 .LEHB2-.LFB1297
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1297:
	.text
	.size	_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode, .-_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.globl	_ZNSt8OpenFileC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.set	_ZNSt8OpenFileC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode,_ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.align 2
	.globl	_ZNSt8OpenFileD2Ev
	.type	_ZNSt8OpenFileD2Ev, @function
_ZNSt8OpenFileD2Ev:
.LFB1300:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1300
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$_ZTVSt8OpenFile+16, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
.LEHE3:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev
.LEHE4:
	movl	$0, %eax
	testl	%eax, %eax
	je	.L11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	jmp	.L11
.L14:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L11:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1300:
	.section	.gcc_except_table
.LLSDA1300:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1300-.LLSDACSB1300
.LLSDACSB1300:
	.uleb128 .LEHB3-.LFB1300
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB1300
	.uleb128 0
	.uleb128 .LEHB4-.LFB1300
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1300
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1300:
	.text
	.size	_ZNSt8OpenFileD2Ev, .-_ZNSt8OpenFileD2Ev
	.globl	_ZNSt8OpenFileD1Ev
	.set	_ZNSt8OpenFileD1Ev,_ZNSt8OpenFileD2Ev
	.align 2
	.globl	_ZNSt8OpenFileD0Ev
	.type	_ZNSt8OpenFileD0Ev, @function
_ZNSt8OpenFileD0Ev:
.LFB1302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8OpenFileD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1302:
	.size	_ZNSt8OpenFileD0Ev, .-_ZNSt8OpenFileD0Ev
	.align 2
	.globl	_ZNSt8OpenFile8read_allB5cxx11Ev
	.type	_ZNSt8OpenFile8read_allB5cxx11Ev, @function
_ZNSt8OpenFile8read_allB5cxx11Ev:
.LFB1303:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1303
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	leaq	-49(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_
.LEHE6:
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L20
.L19:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L20:
	movq	-72(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1303:
	.section	.gcc_except_table
.LLSDA1303:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1303-.LLSDACSB1303
.LLSDACSB1303:
	.uleb128 .LEHB6-.LFB1303
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L19-.LFB1303
	.uleb128 0
	.uleb128 .LEHB7-.LFB1303
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE1303:
	.text
	.size	_ZNSt8OpenFile8read_allB5cxx11Ev, .-_ZNSt8OpenFile8read_allB5cxx11Ev
	.align 2
	.globl	_ZNSt8OpenFile5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNSt8OpenFile5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNSt8OpenFile5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB1304:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1304:
	.size	_ZNSt8OpenFile5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNSt8OpenFile5writeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev,"axG",@progbits,_ZNSt8iteratorISt18input_iterator_tagclPcRcEC5Ev,comdat
	.align 2
	.weak	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev
	.type	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev, @function
_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev:
.LFB1317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1317:
	.size	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev, .-_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev
	.weak	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC1Ev
	.set	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC1Ev,_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC5ERSi,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi:
.LFB1319:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1319
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv
.LEHE8:
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	call	_ZNSt11char_traitsIcE3eofEv
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L27
.L26:
	cmpq	$-1, %rdx
	je	.L25
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume
.L25:
	movq	%rax, %rdi
	call	__cxa_call_unexpected
.LEHE9:
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1319:
	.section	.gcc_except_table
	.align 4
.LLSDA1319:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1319-.LLSDATTD1319
.LLSDATTD1319:
	.byte	0x1
	.uleb128 .LLSDACSE1319-.LLSDACSB1319
.LLSDACSB1319:
	.uleb128 .LEHB8-.LFB1319
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L26-.LFB1319
	.uleb128 0x1
	.uleb128 .LEHB9-.LFB1319
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE1319:
	.byte	0x7f
	.byte	0
	.align 4
.LLSDATT1319:
	.byte	0
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC5ERSi,comdat
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	.set	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC5Ev,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev:
.LFB1322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8iteratorISt18input_iterator_tagclPcRcEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	call	_ZNSt11char_traitsIcE3eofEv
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1322:
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	.set	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB1332:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1332:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_:
.LFB1334:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1334
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r9, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE10:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
.LEHE11:
	jmp	.L33
.L32:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume
.LEHE12:
.L33:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1334:
	.section	.gcc_except_table
.LLSDA1334:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1334-.LLSDACSB1334
.LLSDACSB1334:
	.uleb128 .LEHB10-.LFB1334
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB1334
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L32-.LFB1334
	.uleb128 0
	.uleb128 .LEHB12-.LFB1334
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE1334:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EEET_S8_RKS3_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_:
.LFB1374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	subq	$8, %rsp
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	%r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1374:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type:
.LFB1402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	subq	$8, %rsp
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	%r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1402:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxISt19istreambuf_iteratorIcS2_EEEvT_S8_St12__false_type
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag:
.LFB1409:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1409
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$15, -40(%rbp)
.L40:
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	testb	%al, %al
	je	.L37
	movq	-40(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	je	.L39
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	leaq	(%rcx,%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movb	%al, (%rbx)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.LEHE13:
	jmp	.L40
.L39:
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	testb	%al, %al
	je	.L41
	movq	-40(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L42
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
.L42:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	leaq	(%rcx,%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movb	%al, (%rbx)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.LEHE14:
	jmp	.L39
.L41:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
.LEHE15:
	jmp	.L47
.L45:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	call	__cxa_rethrow
.LEHE16:
.L46:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB17:
	call	_Unwind_Resume
.LEHE17:
.L47:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1409:
	.section	.gcc_except_table
	.align 4
.LLSDA1409:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1409-.LLSDATTD1409
.LLSDATTD1409:
	.byte	0x1
	.uleb128 .LLSDACSE1409-.LLSDACSB1409
.LLSDACSB1409:
	.uleb128 .LEHB13-.LFB1409
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB1409
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L45-.LFB1409
	.uleb128 0x1
	.uleb128 .LEHB15-.LFB1409
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB1409
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L46-.LFB1409
	.uleb128 0
	.uleb128 .LEHB17-.LFB1409
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE1409:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT1409:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag
	.section	.text._ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,"axG",@progbits,_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,comdat
	.weak	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.type	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, @function
_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_:
.LFB1414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1414:
	.size	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, .-_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv:
.LFB1415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE12to_char_typeERKi
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1415:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv:
.LFB1416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
	call	_ZNSt11char_traitsIcE3eofEv
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
.L53:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1416:
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_:
.LFB1425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	cmpb	%al, %bl
	sete	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1425:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv:
.LFB1426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	_ZNSt11char_traitsIcE3eofEv
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
	movl	%eax, -8(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L61
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L58
.L61:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L58:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1426:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv:
.LFB1431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	_ZNSt11char_traitsIcE3eofEv
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, -4(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1431:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	.weak	_ZTVSt8OpenFile
	.section	.rodata._ZTVSt8OpenFile,"aG",@progbits,_ZTVSt8OpenFile,comdat
	.align 8
	.type	_ZTVSt8OpenFile, @object
	.size	_ZTVSt8OpenFile, 32
_ZTVSt8OpenFile:
	.quad	0
	.quad	_ZTISt8OpenFile
	.quad	_ZNSt8OpenFileD1Ev
	.quad	_ZNSt8OpenFileD0Ev
	.weak	_ZTISt8OpenFile
	.section	.rodata._ZTISt8OpenFile,"aG",@progbits,_ZTISt8OpenFile,comdat
	.align 8
	.type	_ZTISt8OpenFile, @object
	.size	_ZTISt8OpenFile, 16
_ZTISt8OpenFile:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt8OpenFile
	.weak	_ZTSSt8OpenFile
	.section	.rodata._ZTSSt8OpenFile,"aG",@progbits,_ZTSSt8OpenFile,comdat
	.align 8
	.type	_ZTSSt8OpenFile, @object
	.size	_ZTSSt8OpenFile, 12
_ZTSSt8OpenFile:
	.string	"St8OpenFile"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L67
	cmpl	$65535, -8(%rbp)
	jne	.L67
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L67:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1438:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode, @function
_GLOBAL__sub_I__ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode:
.LFB1439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1439:
	.size	_GLOBAL__sub_I__ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode, .-_GLOBAL__sub_I__ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZNSt8OpenFileC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 5.1.1 20150618 (Red Hat 5.1.1-4)"
	.section	.note.GNU-stack,"",@progbits
