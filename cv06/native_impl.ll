	.text
	.file	"implicit_len"
	.globl	julia_implicit_len_2251         # -- Begin function julia_implicit_len_2251
	.p2align	4, 0x90
	.type	julia_implicit_len_2251,@function
julia_implicit_len_2251:                # @julia_implicit_len_2251
; ┌ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X21sZmlsZQ==.jl:5 within `implicit_len`
	.cfi_startproc
# %bb.0:                                # %top
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rsi
	sub	rsp, 72
	.cfi_offset rsi, -24
	vxorps	xmm0, xmm0, xmm0
	movabs	rax, 140736243305216
	vmovaps	xmmword ptr [rbp - 32], xmm0
	mov	qword ptr [rbp - 16], 0
	call	rax
; │ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X21sZmlsZQ==.jl:6 within `implicit_len`
	mov	qword ptr [rbp - 32], 4
	mov	rsi, rax
	lea	rdx, [rbp - 32]
	movabs	rcx, 2367673864912
	mov	r8d, 1
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 24], rax
	mov	qword ptr [rsi], rdx
	lea	rdx, [rbp - 40]
	mov	rax, qword ptr [rcx]
	movabs	rcx, 140733808245344
	mov	qword ptr [rbp - 16], rax
	mov	qword ptr [rbp - 40], rax
	movabs	rax, offset ijl_apply_generic
	call	rax
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rsi], rcx
	add	rsp, 72
	pop	rsi
	pop	rbp
	ret
.Lfunc_end0:
	.size	julia_implicit_len_2251, .Lfunc_end0-julia_implicit_len_2251
	.cfi_endproc
; └
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
