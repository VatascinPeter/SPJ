	.text
	.file	"polynomial"
	.globl	julia_polynomial_3563           # -- Begin function julia_polynomial_3563
	.p2align	4, 0x90
	.type	julia_polynomial_3563,@function
julia_polynomial_3563:                  # @julia_polynomial_3563
; ┌ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X52sZmlsZQ==.jl:9 within `polynomial`
	.cfi_startproc
# %bb.0:                                # %top
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rsi
	push	rdi
	push	rbx
	and	rsp, -32
	sub	rsp, 864
	vmovaps	xmmword ptr [rbp - 80], xmm7    # 16-byte Spill
	vmovaps	xmmword ptr [rbp - 96], xmm6    # 16-byte Spill
	.cfi_offset rbx, -72
	.cfi_offset rdi, -64
	.cfi_offset rsi, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset xmm6, -112
	.cfi_offset xmm7, -96
	vxorpd	xmm0, xmm0, xmm0
	movabs	rax, 140736243305216
	vmovapd	xmm6, xmm1
	mov	rsi, rcx
	vmovapd	ymmword ptr [rsp + 480], ymm0
	vmovapd	ymmword ptr [rsp + 448], ymm0
	vmovapd	ymmword ptr [rsp + 416], ymm0
	vmovapd	ymmword ptr [rsp + 384], ymm0
	vmovapd	ymmword ptr [rsp + 352], ymm0
	vmovapd	ymmword ptr [rsp + 320], ymm0
	vmovapd	ymmword ptr [rsp + 288], ymm0
	vmovapd	ymmword ptr [rsp + 256], ymm0
	mov	qword ptr [rsp + 528], 0
	mov	qword ptr [rsp + 520], 0
	mov	qword ptr [rsp + 512], 0
	vzeroupper
	call	rax
; │ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X52sZmlsZQ==.jl:10 within `polynomial`
; │┌ @ tuple.jl:31 within `getindex`
	mov	qword ptr [rsp + 256], 132
	lea	r9, [rsp + 256]
; ││ @ range.jl:432 within `getindex`
; ││┌ @ tuple.jl:278 within `front`
	movabs	r14, offset ijl_gc_pool_alloc
	mov	edx, 1328
	mov	r8d, 272
	mov	r15, rax
; ││└
; ││ @ tuple.jl:31 within `getindex`
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 264], rcx
	mov	qword ptr [rax], r9
; │└
; │┌ @ promotion.jl:423 within `*`
; ││┌ @ promotion.jl:393 within `promote`
; │││┌ @ promotion.jl:370 within `_promote`
; ││││┌ @ number.jl:7 within `convert`
; │││││┌ @ float.jl:159 within `Float64`
	vcvtsi2sd	xmm7, xmm2, qword ptr [rsi + 256]
; │└└└└└
; │┌ @ range.jl:432 within `getindex`
; ││┌ @ tuple.jl:278 within `front`
	mov	rcx, qword ptr [rax + 16]
	call	r14
	mov	rdi, rax
	movabs	rcx, 2366707219280
	movabs	rax, offset memcpy
	mov	r8d, 264
	mov	rdx, rsi
	mov	qword ptr [rdi - 8], rcx
	mov	rcx, rdi
	call	rax
	movabs	rax, 140733846842880
	movabs	rdx, 140733856206528
	xor	ecx, ecx
	mov	r8d, 3
	mov	qword ptr [rsp + 272], rdi
	mov	qword ptr [rsp + 552], rax
	mov	qword ptr [rsp + 560], rdx
	movabs	rax, offset jl_f__apply_iterate
	lea	rdx, [rsp + 552]
	mov	qword ptr [rsp + 568], rdi
	call	rax
; │└└
; │┌ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X52sZmlsZQ==.jl:2 within `_polynomial!`
; ││┌ @ float.jl:411 within `*`
	vmulsd	xmm0, xmm7, xmm6
; ││└
; ││┌ @ promotion.jl:422 within `+`
; │││┌ @ promotion.jl:393 within `promote`
; ││││┌ @ promotion.jl:370 within `_promote`
; │││││┌ @ number.jl:7 within `convert`
; ││││││┌ @ float.jl:159 within `Float64`
	vcvtsi2sd	xmm1, xmm2, qword ptr [rax + 248]
	mov	qword ptr [rsp + 272], rax
; ││└└└└└
	mov	edx, 752
	mov	r8d, 16
; │└
; │┌ @ range.jl:432 within `getindex`
; ││┌ @ tuple.jl:278 within `front`
	mov	rbx, rax
	mov	qword ptr [rsp + 248], r15      # 8-byte Spill
; │└└
; │┌ @ c:\Users\peter\Documents\Skola\SPJ\cv06\jl_notebook_cell_df34fa98e69747e1a8f8a730347b8e2f_X52sZmlsZQ==.jl:2 within `_polynomial!`
	mov	rcx, qword ptr [r15 + 16]
; ││┌ @ promotion.jl:422 within `+` @ float.jl:409
	vaddsd	xmm7, xmm0, xmm1
; ││└
	call	r14
	movabs	rsi, 140733870538784
	mov	edx, 752
	mov	r8d, 16
	mov	qword ptr [rsp + 240], rax      # 8-byte Spill
	mov	qword ptr [rax - 8], rsi
	vmovsd	qword ptr [rax], xmm7
	mov	qword ptr [rsp + 520], rax
	mov	rcx, qword ptr [r15 + 16]
	call	r14
	mov	qword ptr [rax - 8], rsi
	vmovsd	qword ptr [rax], xmm6
	movabs	rdi, offset ijl_box_int64
	mov	qword ptr [rsp + 232], rax      # 8-byte Spill
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rsp + 512], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 224], rax      # 8-byte Spill
	mov	qword ptr [rsp + 504], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 16]
	mov	qword ptr [rsp + 216], rax      # 8-byte Spill
	mov	qword ptr [rsp + 496], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 24]
	mov	qword ptr [rsp + 208], rax      # 8-byte Spill
	mov	qword ptr [rsp + 488], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 32]
	mov	qword ptr [rsp + 200], rax      # 8-byte Spill
	mov	qword ptr [rsp + 480], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 40]
	mov	qword ptr [rsp + 192], rax      # 8-byte Spill
	mov	qword ptr [rsp + 472], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 48]
	mov	qword ptr [rsp + 184], rax      # 8-byte Spill
	mov	qword ptr [rsp + 464], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 56]
	mov	qword ptr [rsp + 176], rax      # 8-byte Spill
	mov	qword ptr [rsp + 456], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 64]
	mov	qword ptr [rsp + 168], rax      # 8-byte Spill
	mov	qword ptr [rsp + 448], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 72]
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	mov	qword ptr [rsp + 440], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 80]
	mov	qword ptr [rsp + 152], rax      # 8-byte Spill
	mov	qword ptr [rsp + 432], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 88]
	mov	qword ptr [rsp + 144], rax      # 8-byte Spill
	mov	qword ptr [rsp + 424], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 96]
	mov	qword ptr [rsp + 136], rax      # 8-byte Spill
	mov	qword ptr [rsp + 416], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 104]
	mov	qword ptr [rsp + 128], rax      # 8-byte Spill
	mov	qword ptr [rsp + 408], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 112]
	mov	qword ptr [rsp + 120], rax      # 8-byte Spill
	mov	qword ptr [rsp + 400], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 120]
	mov	qword ptr [rsp + 112], rax      # 8-byte Spill
	mov	qword ptr [rsp + 392], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 128]
	mov	qword ptr [rsp + 104], rax      # 8-byte Spill
	mov	qword ptr [rsp + 384], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 136]
	mov	qword ptr [rsp + 96], rax       # 8-byte Spill
	mov	qword ptr [rsp + 376], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 144]
	mov	qword ptr [rsp + 88], rax       # 8-byte Spill
	mov	qword ptr [rsp + 368], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 152]
	mov	qword ptr [rsp + 80], rax       # 8-byte Spill
	mov	qword ptr [rsp + 360], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 160]
	mov	qword ptr [rsp + 72], rax       # 8-byte Spill
	mov	qword ptr [rsp + 352], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 168]
	mov	qword ptr [rsp + 64], rax       # 8-byte Spill
	mov	qword ptr [rsp + 344], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 176]
	mov	qword ptr [rsp + 56], rax       # 8-byte Spill
	mov	qword ptr [rsp + 336], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 184]
	mov	qword ptr [rsp + 48], rax       # 8-byte Spill
	mov	qword ptr [rsp + 328], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 192]
	mov	qword ptr [rsp + 40], rax       # 8-byte Spill
	mov	qword ptr [rsp + 320], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 200]
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	mov	qword ptr [rsp + 312], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 208]
	mov	r14, rax
	mov	qword ptr [rsp + 304], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 216]
	mov	r12, rax
	mov	qword ptr [rsp + 296], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 224]
	mov	rsi, rax
	mov	qword ptr [rsp + 288], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 232]
	mov	r13, rax
	mov	qword ptr [rsp + 280], rax
	call	rdi
	mov	rcx, qword ptr [rbx + 240]
	mov	r15, rax
	mov	qword ptr [rsp + 528], rax
	call	rdi
	mov	rcx, qword ptr [rsp + 240]      # 8-byte Reload
	mov	r9, qword ptr [rsp + 232]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 224]      # 8-byte Reload
	mov	qword ptr [rsp + 272], rax
	mov	r8d, 33
	mov	qword ptr [rsp + 552], rcx
	mov	qword ptr [rsp + 560], r9
	mov	qword ptr [rsp + 568], rdx
	mov	r9, qword ptr [rsp + 216]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 208]      # 8-byte Reload
	movabs	rcx, 2368671828184
	mov	qword ptr [rsp + 576], r9
	mov	qword ptr [rsp + 584], rdx
	mov	r9, qword ptr [rsp + 200]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 192]      # 8-byte Reload
	mov	qword ptr [rsp + 592], r9
	mov	qword ptr [rsp + 600], rdx
	mov	r9, qword ptr [rsp + 184]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 176]      # 8-byte Reload
	mov	qword ptr [rsp + 608], r9
	mov	qword ptr [rsp + 616], rdx
	mov	r9, qword ptr [rsp + 168]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 160]      # 8-byte Reload
	mov	qword ptr [rsp + 624], r9
	mov	qword ptr [rsp + 632], rdx
	mov	r9, qword ptr [rsp + 152]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 144]      # 8-byte Reload
	mov	qword ptr [rsp + 640], r9
	mov	qword ptr [rsp + 648], rdx
	mov	r9, qword ptr [rsp + 136]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 128]      # 8-byte Reload
	mov	qword ptr [rsp + 656], r9
	mov	qword ptr [rsp + 664], rdx
	mov	r9, qword ptr [rsp + 120]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 112]      # 8-byte Reload
	mov	qword ptr [rsp + 672], r9
	mov	qword ptr [rsp + 680], rdx
	mov	r9, qword ptr [rsp + 104]       # 8-byte Reload
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
	mov	qword ptr [rsp + 688], r9
	mov	qword ptr [rsp + 696], rdx
	mov	r9, qword ptr [rsp + 88]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 80]       # 8-byte Reload
	mov	qword ptr [rsp + 704], r9
	mov	qword ptr [rsp + 712], rdx
	mov	r9, qword ptr [rsp + 72]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 64]       # 8-byte Reload
	mov	qword ptr [rsp + 720], r9
	mov	qword ptr [rsp + 728], rdx
	mov	r9, qword ptr [rsp + 56]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 48]       # 8-byte Reload
	mov	qword ptr [rsp + 736], r9
	mov	qword ptr [rsp + 744], rdx
	mov	r9, qword ptr [rsp + 40]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rsp + 752], r9
	mov	qword ptr [rsp + 760], rdx
	mov	qword ptr [rsp + 768], r14
	mov	qword ptr [rsp + 776], r12
	mov	qword ptr [rsp + 784], rsi
	mov	qword ptr [rsp + 792], r13
	mov	qword ptr [rsp + 800], r15
	mov	qword ptr [rsp + 808], rax
	movabs	rax, offset ijl_invoke
	movabs	r9, 2367356354896
	lea	rdx, [rsp + 552]
	call	rax
	vmovsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	mov	rax, qword ptr [rsp + 264]
	mov	rcx, qword ptr [rsp + 248]      # 8-byte Reload
	vmovaps	xmm6, xmmword ptr [rbp - 96]    # 16-byte Reload
	vmovaps	xmm7, xmmword ptr [rbp - 80]    # 16-byte Reload
	mov	qword ptr [rcx], rax
	lea	rsp, [rbp - 56]
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end0:
	.size	julia_polynomial_3563, .Lfunc_end0-julia_polynomial_3563
	.cfi_endproc
; └└
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
