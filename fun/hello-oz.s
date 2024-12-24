	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_BZ2_bz__AssertH__fail          ; -- Begin function BZ2_bz__AssertH__fail
	.p2align	2
_BZ2_bz__AssertH__fail:                 ; @BZ2_bz__AssertH__fail
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh0:
	adrp	x20, ___stderrp@GOTPAGE
Lloh1:
	ldr	x20, [x20, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x20]
Lloh2:
	adrp	x8, l_.str.5@PAGE
Lloh3:
	add	x8, x8, l_.str.5@PAGEOFF
	stp	x19, x8, [sp]
Lloh4:
	adrp	x1, l_.str@PAGE
Lloh5:
	add	x1, x1, l_.str@PAGEOFF
	bl	_fprintf
	cmp	w19, #1007
	b.ne	LBB0_2
; %bb.1:
	ldr	x3, [x20]
Lloh6:
	adrp	x0, l_.str.1@PAGE
Lloh7:
	add	x0, x0, l_.str.1@PAGEOFF
	mov	w1, #1056                       ; =0x420
	mov	w2, #1                          ; =0x1
	bl	_fwrite
LBB0_2:
	mov	w0, #3                          ; =0x3
	bl	_exit
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzlibVersion               ; -- Begin function BZ2_bzlibVersion
	.p2align	2
_BZ2_bzlibVersion:                      ; @BZ2_bzlibVersion
	.cfi_startproc
; %bb.0:
Lloh8:
	adrp	x0, l_.str.5@PAGE
Lloh9:
	add	x0, x0, l_.str.5@PAGEOFF
	ret
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompressInit             ; -- Begin function BZ2_bzCompressInit
	.p2align	2
_BZ2_bzCompressInit:                    ; @BZ2_bzCompressInit
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x0
	mov	w0, #-2                         ; =0xfffffffe
	cbz	x19, LBB2_19
; %bb.1:
	mov	x21, x1
	sub	w8, w1, #10
	cmn	w8, #9
	b.lo	LBB2_19
; %bb.2:
	cmp	w3, #250
	b.hi	LBB2_19
; %bb.3:
	mov	w8, #30                         ; =0x1e
	cmp	w3, #0
	csel	w23, w8, w3, eq
	ldr	x8, [x19, #56]
	cbnz	x8, LBB2_5
; %bb.4:
Lloh10:
	adrp	x8, _default_bzalloc@PAGE
Lloh11:
	add	x8, x8, _default_bzalloc@PAGEOFF
	str	x8, [x19, #56]
LBB2_5:
	mov	x24, x2
	ldr	x9, [x19, #64]
	cbnz	x9, LBB2_7
; %bb.6:
Lloh12:
	adrp	x9, _default_bzfree@PAGE
Lloh13:
	add	x9, x9, _default_bzfree@PAGEOFF
	str	x9, [x19, #64]
LBB2_7:
	ldr	x0, [x19, #72]
	mov	w1, #55768                      ; =0xd9d8
	mov	w2, #1                          ; =0x1
	blr	x8
	cbz	x0, LBB2_18
; %bb.8:
	mov	x20, x0
	str	x19, [x0]
	stp	xzr, xzr, [x0, #32]
	str	xzr, [x0, #24]
	mov	w8, #6784                       ; =0x1a80
	movk	w8, #6, lsl #16
	ldr	x9, [x19, #56]
	mul	w22, w21, w8
	ldr	x0, [x19, #72]
	mov	x1, x22
	mov	w2, #1                          ; =0x1
	blr	x9
	str	x0, [x20, #24]
	ldr	x8, [x19, #56]
	ldr	x0, [x19, #72]
	add	w1, w22, #136
	mov	w2, #1                          ; =0x1
	blr	x8
	str	x0, [x20, #32]
	ldr	x8, [x19, #56]
	ldr	x0, [x19, #72]
	mov	w1, #262148                     ; =0x40004
	mov	w2, #1                          ; =0x1
	blr	x8
	str	x0, [x20, #40]
	ldr	x1, [x20, #24]
	cbz	x1, LBB2_13
; %bb.9:
	ldr	x8, [x20, #32]
	cbz	x8, LBB2_12
; %bb.10:
	cbz	x0, LBB2_12
; %bb.11:
	mov	w9, #34464                      ; =0x86a0
	movk	w9, #1, lsl #16
	str	wzr, [x20, #660]
	mov	x10, #8589934594                ; =0x200000002
	str	x10, [x20, #8]
	mul	w9, w21, w9
	str	wzr, [x20, #652]
	str	w21, [x20, #664]
	sub	w9, w9, #19
	str	w9, [x20, #112]
	str	w24, [x20, #656]
	str	w23, [x20, #88]
	stp	x1, xzr, [x20, #72]
	stp	x1, x8, [x20, #56]
	str	x20, [x19, #48]
	stur	xzr, [x19, #12]
	stur	xzr, [x19, #36]
	mov	x0, x20
	bl	_init_RL
	mov	x0, x20
	bl	_prepare_new_block
	mov	w0, #0                          ; =0x0
	b	LBB2_19
LBB2_12:
	ldp	x8, x0, [x19, #64]
	blr	x8
LBB2_13:                                ; %.thread
	ldr	x1, [x20, #32]
	cbz	x1, LBB2_15
; %bb.14:
	ldp	x8, x0, [x19, #64]
	blr	x8
LBB2_15:
	ldr	x1, [x20, #40]
	cbz	x1, LBB2_17
; %bb.16:
	ldp	x8, x0, [x19, #64]
	blr	x8
LBB2_17:
	ldp	x8, x0, [x19, #64]
	mov	x1, x20
	blr	x8
LBB2_18:
	mov	w0, #-3                         ; =0xfffffffd
LBB2_19:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function default_bzalloc
_default_bzalloc:                       ; @default_bzalloc
	.cfi_startproc
; %bb.0:
	mul	w8, w2, w1
	sxtw	x0, w8
	b	_malloc
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function default_bzfree
_default_bzfree:                        ; @default_bzfree
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB4_2
; %bb.1:
	mov	x0, x1
	b	_free
LBB4_2:
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function init_RL
_init_RL:                               ; @init_RL
	.cfi_startproc
; %bb.0:
	mov	w8, #256                        ; =0x100
	stur	x8, [x0, #92]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function prepare_new_block
_prepare_new_block:                     ; @prepare_new_block
	.cfi_startproc
; %bb.0:
	mov	x8, #0                          ; =0x0
	str	wzr, [x0, #108]
	stur	xzr, [x0, #116]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x0, #648]
	add	x9, x0, #128
	cmp	x8, #256
	b.eq	LBB6_2
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	strb	wzr, [x9, x8]
	add	x8, x8, #1
	cmp	x8, #256
	b.ne	LBB6_1
LBB6_2:
	ldr	w8, [x0, #660]
	add	w8, w8, #1
	str	w8, [x0, #660]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompress                 ; -- Begin function BZ2_bzCompress
	.p2align	2
_BZ2_bzCompress:                        ; @BZ2_bzCompress
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB7_5
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x8, x0
	ldr	x19, [x0, #48]
	cbz	x19, LBB7_3
; %bb.2:
	ldr	x9, [x19]
	cmp	x9, x8
	b.eq	LBB7_6
LBB7_3:
	mov	w0, #-2                         ; =0xfffffffe
LBB7_4:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB7_5:
	mov	w0, #-2                         ; =0xfffffffe
	ret
LBB7_6:                                 ; %.preheader
	mov	w0, #0                          ; =0x0
	ldr	w10, [x19, #8]
	b	LBB7_9
LBB7_7:                                 ;   in Loop: Header=BB7_9 Depth=1
	mov	w10, #3                         ; =0x3
LBB7_8:                                 ; %.backedge
                                        ;   in Loop: Header=BB7_9 Depth=1
	ldr	w11, [x8, #8]
	str	w11, [x19, #16]
	str	w10, [x19, #8]
LBB7_9:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #2
	b.ne	LBB7_13
; %bb.10:                               ;   in Loop: Header=BB7_9 Depth=1
	cmp	w1, #1
	b.eq	LBB7_7
; %bb.11:                               ;   in Loop: Header=BB7_9 Depth=1
	cmp	w1, #2
	b.ne	LBB7_26
; %bb.12:                               ;   in Loop: Header=BB7_9 Depth=1
	mov	w10, #4                         ; =0x4
	b	LBB7_8
LBB7_13:
	cmp	w10, #1
	b.eq	LBB7_25
; %bb.14:
	cmp	w10, #3
	b.eq	LBB7_21
; %bb.15:
	cmp	w10, #4
	b.ne	LBB7_4
; %bb.16:
	cmp	w1, #2
	b.ne	LBB7_25
; %bb.17:
	ldr	w10, [x19, #16]
	ldr	w9, [x9, #8]
	cmp	w10, w9
	b.ne	LBB7_25
; %bb.18:
	mov	x0, x8
	bl	_handle_compress
	cbz	w0, LBB7_25
; %bb.19:
	ldr	w8, [x19, #16]
	cbz	w8, LBB7_31
LBB7_20:
	mov	w0, #3                          ; =0x3
	b	LBB7_4
LBB7_21:
	cmp	w1, #1
	b.ne	LBB7_25
; %bb.22:
	ldr	w10, [x19, #16]
	ldr	w9, [x9, #8]
	cmp	w10, w9
	b.ne	LBB7_25
; %bb.23:
	mov	x0, x8
	bl	_handle_compress
	ldr	w8, [x19, #16]
	cbz	w8, LBB7_28
LBB7_24:
	mov	w0, #2                          ; =0x2
	b	LBB7_4
LBB7_25:
	mov	w0, #-1                         ; =0xffffffff
	b	LBB7_4
LBB7_26:
	mov	w0, #-2                         ; =0xfffffffe
	cbnz	w1, LBB7_4
; %bb.27:
	mov	x0, x8
	bl	_handle_compress
	cmp	w0, #0
	mov	w8, #-2                         ; =0xfffffffe
	cinv	w0, w8, ne
	b	LBB7_4
LBB7_28:
	mov	x0, x19
	bl	_isempty_RL
	cbz	w0, LBB7_24
; %bb.29:
	ldp	w9, w8, [x19, #116]
	mov	w0, #2                          ; =0x2
	cmp	w8, w9
	b.lt	LBB7_4
; %bb.30:
	str	w0, [x19, #8]
	mov	w0, #1                          ; =0x1
	b	LBB7_4
LBB7_31:
	mov	x0, x19
	bl	_isempty_RL
	cbz	w0, LBB7_20
; %bb.32:
	ldp	w9, w8, [x19, #116]
	cmp	w8, w9
	b.lt	LBB7_20
; %bb.33:
	mov	w8, #1                          ; =0x1
	str	w8, [x19, #8]
	mov	w0, #4                          ; =0x4
	b	LBB7_4
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function handle_compress
_handle_compress:                       ; @handle_compress
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	w20, #0                         ; =0x0
	mov	w21, #0                         ; =0x0
	ldr	x19, [x0, #48]
	mov	w22, #1                         ; =0x1
	mov	w23, #2                         ; =0x2
	b	LBB8_2
LBB8_1:                                 ;   in Loop: Header=BB8_2 Depth=1
	ldr	x8, [x19]
	ldr	w8, [x8, #8]
	cbz	w8, LBB8_18
LBB8_2:                                 ; %.outer
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_3 Depth 2
	ldr	w8, [x19, #12]
LBB8_3:                                 ;   Parent Loop BB8_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #2
	b.eq	LBB8_12
; %bb.4:                                ;   in Loop: Header=BB8_3 Depth=2
	cmp	w8, #1
	b.ne	LBB8_3
; %bb.5:                                ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_copy_output_until_stop
	orr	w20, w0, w20
	ldp	w9, w8, [x19, #116]
	cmp	w8, w9
	b.lt	LBB8_18
; %bb.6:                                ;   in Loop: Header=BB8_2 Depth=1
	ldr	w8, [x19, #8]
	cmp	w8, #4
	b.ne	LBB8_9
; %bb.7:                                ;   in Loop: Header=BB8_2 Depth=1
	ldr	w8, [x19, #16]
	cbnz	w8, LBB8_9
; %bb.8:                                ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_isempty_RL
	cbnz	w0, LBB8_18
LBB8_9:                                 ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_prepare_new_block
	str	w23, [x19, #12]
	ldr	w8, [x19, #8]
	cmp	w8, #3
	b.ne	LBB8_12
; %bb.10:                               ;   in Loop: Header=BB8_2 Depth=1
	ldr	w8, [x19, #16]
	cbnz	w8, LBB8_12
; %bb.11:                               ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_isempty_RL
	cbnz	w0, LBB8_18
LBB8_12:                                ; %.thread
                                        ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_copy_input_until_stop
	orr	w21, w0, w21
	ldr	w8, [x19, #8]
	cmp	w8, #2
	b.eq	LBB8_14
; %bb.13:                               ;   in Loop: Header=BB8_2 Depth=1
	ldr	w8, [x19, #16]
	cbz	w8, LBB8_16
LBB8_14:                                ;   in Loop: Header=BB8_2 Depth=1
	ldp	w8, w9, [x19, #108]
	cmp	w8, w9
	b.lt	LBB8_1
; %bb.15:                               ;   in Loop: Header=BB8_2 Depth=1
	mov	w1, #0                          ; =0x0
	b	LBB8_17
LBB8_16:                                ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_flush_RL
	ldr	w8, [x19, #8]
	cmp	w8, #4
	cset	w1, eq
LBB8_17:                                ; %.sink.split
                                        ;   in Loop: Header=BB8_2 Depth=1
	mov	x0, x19
	bl	_BZ2_compressBlock
	str	w22, [x19, #12]
	b	LBB8_2
LBB8_18:
	orr	w8, w21, w20
	cmp	w8, #0
	cset	w0, ne
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function isempty_RL
_isempty_RL:                            ; @isempty_RL
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #92]
	cmp	w8, #255
	b.hi	LBB9_3
; %bb.1:
	ldr	w8, [x0, #96]
	cmp	w8, #0
	b.le	LBB9_3
; %bb.2:
	mov	w0, #0                          ; =0x0
	ret
LBB9_3:
	mov	w0, #1                          ; =0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompressEnd              ; -- Begin function BZ2_bzCompressEnd
	.p2align	2
_BZ2_bzCompressEnd:                     ; @BZ2_bzCompressEnd
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB10_4
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x20, [x0, #48]
	cbz	x20, LBB10_3
; %bb.2:
	ldr	x8, [x20]
	cmp	x8, x0
	b.eq	LBB10_5
LBB10_3:
	mov	w0, #-2                         ; =0xfffffffe
	b	LBB10_12
LBB10_4:
	mov	w0, #-2                         ; =0xfffffffe
	ret
LBB10_5:
	ldr	x1, [x20, #24]
	mov	x19, x0
	cbz	x1, LBB10_7
; %bb.6:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB10_7:
	ldr	x1, [x20, #32]
	cbz	x1, LBB10_9
; %bb.8:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB10_9:
	ldr	x1, [x20, #40]
	cbz	x1, LBB10_11
; %bb.10:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB10_11:
	ldp	x9, x8, [x0, #64]
	ldr	x1, [x0, #48]
	mov	x19, x0
	mov	x0, x8
	blr	x9
	mov	w0, #0                          ; =0x0
	str	xzr, [x19, #48]
LBB10_12:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompressInit           ; -- Begin function BZ2_bzDecompressInit
	.p2align	2
_BZ2_bzDecompressInit:                  ; @BZ2_bzDecompressInit
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x0
	mov	w0, #-2                         ; =0xfffffffe
	cmp	w1, #4
	b.hi	LBB11_10
; %bb.1:
	cbz	x21, LBB11_10
; %bb.2:
	mov	x20, x2
	cmp	w2, #1
	b.hi	LBB11_10
; %bb.3:
	mov	x19, x1
	ldr	x8, [x21, #56]
	cbz	x8, LBB11_7
; %bb.4:
	ldr	x9, [x21, #64]
	cbz	x9, LBB11_8
LBB11_5:
	ldr	x0, [x21, #72]
	mov	w1, #64144                      ; =0xfa90
	mov	w2, #1                          ; =0x1
	blr	x8
	cbz	x0, LBB11_9
; %bb.6:
	mov	x8, x0
	mov	w0, #0                          ; =0x0
	str	x21, [x8]
	str	x8, [x21, #48]
	mov	w9, #10                         ; =0xa
	str	w9, [x8, #8]
	str	xzr, [x8, #32]
	str	wzr, [x8, #3188]
	stur	xzr, [x21, #12]
	stur	xzr, [x21, #36]
	strb	w20, [x8, #44]
	str	xzr, [x8, #3152]
	str	xzr, [x8, #3168]
	str	xzr, [x8, #3160]
	stp	wzr, w19, [x8, #48]
	b	LBB11_10
LBB11_7:
Lloh14:
	adrp	x8, _default_bzalloc@PAGE
Lloh15:
	add	x8, x8, _default_bzalloc@PAGEOFF
	str	x8, [x21, #56]
	ldr	x9, [x21, #64]
	cbnz	x9, LBB11_5
LBB11_8:
Lloh16:
	adrp	x9, _default_bzfree@PAGE
Lloh17:
	add	x9, x9, _default_bzfree@PAGEOFF
	str	x9, [x21, #64]
	b	LBB11_5
LBB11_9:
	mov	w0, #-3                         ; =0xfffffffd
LBB11_10:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_indexIntoF                 ; -- Begin function BZ2_indexIntoF
	.p2align	2
_BZ2_indexIntoF:                        ; @BZ2_indexIntoF
	.cfi_startproc
; %bb.0:
	mov	x8, x0
	mov	w0, #0                          ; =0x0
	mov	w9, #256                        ; =0x100
LBB12_1:                                ; =>This Inner Loop Header: Depth=1
	add	w10, w0, w9
	asr	w10, w10, #1
	ldr	w11, [x1, w10, sxtw #2]
	cmp	w11, w8
	csel	w9, w10, w9, gt
	csel	w0, w0, w10, gt
	sub	w10, w9, w0
	cmp	w10, #1
	b.ne	LBB12_1
; %bb.2:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompress               ; -- Begin function BZ2_bzDecompress
	.p2align	2
_BZ2_bzDecompress:                      ; @BZ2_bzDecompress
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB13_5
; %bb.1:
	sub	sp, sp, #80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	ldr	x19, [x0, #48]
	cbz	x19, LBB13_3
; %bb.2:
	ldr	x8, [x19]
	cmp	x8, x0
	b.eq	LBB13_6
LBB13_3:
	mov	w0, #-2                         ; =0xfffffffe
LBB13_4:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB13_5:
	mov	w0, #-2                         ; =0xfffffffe
	ret
LBB13_6:                                ; %.preheader
	mov	w22, #64080                     ; =0xfa50
	ldr	w8, [x19, #8]
Lloh18:
	adrp	x21, ___stderrp@GOTPAGE
Lloh19:
	ldr	x21, [x21, ___stderrp@GOTPAGEOFF]
	mov	w23, #14                        ; =0xe
Lloh20:
	adrp	x20, l_.str.2@PAGE
Lloh21:
	add	x20, x20, l_.str.2@PAGEOFF
LBB13_7:                                ; =>This Inner Loop Header: Depth=1
	cmp	w8, #1
	b.eq	LBB13_23
; %bb.8:                                ;   in Loop: Header=BB13_7 Depth=1
	cmp	w8, #2
	b.eq	LBB13_10
; %bb.9:                                ;   in Loop: Header=BB13_7 Depth=1
	cmp	w8, #10
	b.lt	LBB13_7
	b	LBB13_21
LBB13_10:                               ;   in Loop: Header=BB13_7 Depth=1
	ldrb	w8, [x19, #44]
	cbz	w8, LBB13_12
; %bb.11:                               ;   in Loop: Header=BB13_7 Depth=1
	mov	x0, x19
	bl	_unRLE_obuf_to_output_SMALL
	cbz	w0, LBB13_13
	b	LBB13_24
LBB13_12:                               ;   in Loop: Header=BB13_7 Depth=1
	mov	x0, x19
	bl	_unRLE_obuf_to_output_FAST
	cbnz	w0, LBB13_24
LBB13_13:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	w8, [x19, #1092]
	ldr	w9, [x19, x22]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB13_25
; %bb.14:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	w8, [x19, #16]
	cbnz	w8, LBB13_25
; %bb.15:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	w8, [x19, #3184]
	mvn	w8, w8
	str	w8, [x19, #3184]
	ldr	w9, [x19, #52]
	cmp	w9, #2
	b.le	LBB13_17
; %bb.16:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	x0, [x21]
	ldr	w9, [x19, #3176]
	stp	x9, x8, [sp]
	mov	x1, x20
	bl	_fprintf
	ldr	w9, [x19, #52]
LBB13_17:                               ;   in Loop: Header=BB13_7 Depth=1
	cmp	w9, #2
	b.lt	LBB13_19
; %bb.18:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	x1, [x21]
	mov	w0, #93                         ; =0x5d
	bl	_fputc
LBB13_19:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	w8, [x19, #3184]
	ldr	w9, [x19, #3176]
	cmp	w8, w9
	b.ne	LBB13_24
; %bb.20:                               ; %.thread
                                        ;   in Loop: Header=BB13_7 Depth=1
	ldr	w9, [x19, #3188]
	eor	w8, w8, w9, ror #31
	str	w8, [x19, #3188]
	str	w23, [x19, #8]
LBB13_21:                               ; %.loopexit49
                                        ;   in Loop: Header=BB13_7 Depth=1
	mov	x0, x19
	bl	_BZ2_decompress
	cmp	w0, #4
	b.eq	LBB13_26
; %bb.22:                               ;   in Loop: Header=BB13_7 Depth=1
	ldr	w9, [x19, #8]
	mov	w8, #2                          ; =0x2
	cmp	w9, #2
	b.eq	LBB13_7
	b	LBB13_4
LBB13_23:                               ; %.loopexit.loopexit
	mov	w0, #-1                         ; =0xffffffff
	b	LBB13_4
LBB13_24:
	mov	w0, #-4                         ; =0xfffffffc
	b	LBB13_4
LBB13_25:
	mov	w0, #0                          ; =0x0
	b	LBB13_4
LBB13_26:
	ldr	w8, [x19, #52]
	cmp	w8, #3
	b.lt	LBB13_28
; %bb.27:
	ldr	x0, [x21]
	ldr	w8, [x19, #3180]
	ldr	w9, [x19, #3188]
	stp	x8, x9, [sp]
Lloh22:
	adrp	x1, l_.str.4@PAGE
Lloh23:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_fprintf
LBB13_28:
	ldr	w8, [x19, #3188]
	ldr	w9, [x19, #3180]
	cmp	w8, w9
	mov	w8, #4                          ; =0x4
	cneg	w0, w8, ne
	b	LBB13_4
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpAdd	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function unRLE_obuf_to_output_SMALL
_unRLE_obuf_to_output_SMALL:            ; @unRLE_obuf_to_output_SMALL
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	ldrb	w8, [x0, #20]
	cbnz	w8, LBB14_2
	b	LBB14_28
LBB14_1:                                ;   in Loop: Header=BB14_2 Depth=1
	str	w8, [x19, #64]
LBB14_2:                                ; %.backedge252
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldr	w9, [x8, #32]
	cbz	w9, LBB14_43
; %bb.3:                                ;   in Loop: Header=BB14_2 Depth=1
	ldr	w9, [x19, #16]
	cbz	w9, LBB14_6
; %bb.4:                                ;   in Loop: Header=BB14_2 Depth=1
	ldrb	w9, [x19, #12]
	ldr	x8, [x8, #24]
	strb	w9, [x8]
	ldr	w8, [x19, #3184]
	eor	w9, w9, w8, lsr #24
Lloh24:
	adrp	x10, _BZ2_crc32Table@GOTPAGE
Lloh25:
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	ldr	w9, [x10, w9, uxtw #2]
	eor	w8, w9, w8, lsl #8
	str	w8, [x19, #3184]
	ldr	w8, [x19, #16]
	sub	w8, w8, #1
	str	w8, [x19, #16]
	ldr	x8, [x19]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [x19]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [x19]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [x19]
	ldr	w9, [x8, #36]
	cbnz	w9, LBB14_2
; %bb.5:                                ;   in Loop: Header=BB14_2 Depth=1
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
	b	LBB14_2
LBB14_6:                                ;   in Loop: Header=BB14_2 Depth=1
	ldr	w27, [x19, #1092]
	mov	w8, #64080                      ; =0xfa50
	ldr	w24, [x19, x8]
	add	w8, w24, #1
	cmp	w27, w8
	b.eq	LBB14_43
; %bb.7:                                ;   in Loop: Header=BB14_2 Depth=1
	b.gt	LBB14_44
; %bb.8:                                ;   in Loop: Header=BB14_2 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [x19, #16]
	ldp	w20, w23, [x19, #60]
	strb	w23, [x19, #12]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldr	x28, [x19, #3160]
	ldrh	w22, [x28, x20, lsl #1]
	ldr	x25, [x19, #3168]
	lsr	x8, x20, #1
	ldrb	w8, [x25, x8]
	ubfiz	w9, w20, #2, #1
	lsr	w8, w8, w9
	mov	x20, x22
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	ldr	w8, [x19, #24]
	cbnz	w8, LBB14_10
; %bb.9:                                ;   in Loop: Header=BB14_2 Depth=1
	ldrsw	x9, [x19, #28]
Lloh26:
	adrp	x8, _BZ2_rNums@GOTPAGE
Lloh27:
	ldr	x8, [x8, _BZ2_rNums@GOTPAGEOFF]
	ldr	w8, [x8, x9, lsl #2]
	add	w10, w9, #1
	cmp	w10, #512
	csinc	w9, wzr, w9, eq
	str	w9, [x19, #28]
LBB14_10:                               ;   in Loop: Header=BB14_2 Depth=1
	sub	w26, w8, #1
	str	w26, [x19, #24]
	add	w21, w27, #1
	str	w21, [x19, #1092]
	cmp	w27, w24
	b.eq	LBB14_2
; %bb.11:                               ;   in Loop: Header=BB14_2 Depth=1
	cmp	w26, #1
	cset	w8, eq
	and	w9, w0, #0xff
	eor	w8, w9, w8
	cmp	w8, w23
	b.ne	LBB14_1
; %bb.12:                               ;   in Loop: Header=BB14_2 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldrh	w10, [x28, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x25, x8]
	ubfiz	w9, w22, #2, #1
	lsr	w8, w8, w9
	mov	x20, x10
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	cbnz	w26, LBB14_14
; %bb.13:                               ;   in Loop: Header=BB14_2 Depth=1
	ldrsw	x8, [x19, #28]
Lloh28:
	adrp	x9, _BZ2_rNums@GOTPAGE
Lloh29:
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	ldr	w26, [x9, x8, lsl #2]
	add	w9, w8, #1
	cmp	w9, #512
	csinc	w8, wzr, w8, eq
	str	w8, [x19, #28]
LBB14_14:                               ;   in Loop: Header=BB14_2 Depth=1
	sub	w26, w26, #1
	str	w26, [x19, #24]
	add	w22, w27, #2
	str	w22, [x19, #1092]
	cmp	w21, w24
	b.eq	LBB14_2
; %bb.15:                               ;   in Loop: Header=BB14_2 Depth=1
	cmp	w26, #1
	cset	w8, eq
	and	w9, w0, #0xff
	eor	w8, w9, w8
	cmp	w8, w23
	b.ne	LBB14_25
; %bb.16:                               ;   in Loop: Header=BB14_2 Depth=1
	mov	w8, #3                          ; =0x3
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	mov	x21, x10
	bl	_BZ2_indexIntoF
	ldrh	w10, [x28, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x25, x8]
	ubfiz	w9, w21, #2, #1
	lsr	w8, w8, w9
	mov	x20, x10
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	cbnz	w26, LBB14_18
; %bb.17:                               ;   in Loop: Header=BB14_2 Depth=1
	ldrsw	x8, [x19, #28]
Lloh30:
	adrp	x9, _BZ2_rNums@GOTPAGE
Lloh31:
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	ldr	w26, [x9, x8, lsl #2]
	add	w9, w8, #1
	cmp	w9, #512
	csinc	w8, wzr, w8, eq
	str	w8, [x19, #28]
LBB14_18:                               ;   in Loop: Header=BB14_2 Depth=1
	sub	w26, w26, #1
	str	w26, [x19, #24]
	add	w8, w27, #3
	str	w8, [x19, #1092]
	cmp	w22, w24
	b.eq	LBB14_2
; %bb.19:                               ;   in Loop: Header=BB14_2 Depth=1
	cmp	w26, #1
	cset	w8, eq
	and	w9, w0, #0xff
	eor	w8, w9, w8
	cmp	w8, w23
	b.ne	LBB14_26
; %bb.20:                               ;   in Loop: Header=BB14_2 Depth=1
	add	x1, x19, #1096
	mov	x0, x20
	mov	x21, x10
	bl	_BZ2_indexIntoF
	ldrh	w22, [x28, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x25, x8]
	ubfiz	w9, w21, #2, #1
	lsr	w8, w8, w9
	mov	x20, x22
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	cbnz	w26, LBB14_22
; %bb.21:                               ;   in Loop: Header=BB14_2 Depth=1
	ldrsw	x8, [x19, #28]
Lloh32:
	adrp	x9, _BZ2_rNums@GOTPAGE
Lloh33:
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	ldr	w26, [x9, x8, lsl #2]
	add	w9, w8, #1
	cmp	w9, #512
	csinc	w8, wzr, w8, eq
	str	w8, [x19, #28]
LBB14_22:                               ;   in Loop: Header=BB14_2 Depth=1
	sub	w21, w26, #1
	str	w21, [x19, #24]
	cmp	w21, #1
	cset	w8, eq
	add	w9, w27, #4
	str	w9, [x19, #1092]
	and	w9, w0, #0xff
	eor	w8, w9, w8
	add	w8, w8, #4
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	str	w0, [x19, #64]
	ldrh	w8, [x28, w20, uxtw #1]
	lsr	x9, x20, #1
	ldrb	w9, [x25, x9]
	ubfiz	w10, w22, #2, #1
	lsr	w9, w9, w10
	bfi	w8, w9, #16, #4
	str	w8, [x19, #60]
	cbnz	w21, LBB14_24
; %bb.23:                               ;   in Loop: Header=BB14_2 Depth=1
	ldrsw	x8, [x19, #28]
Lloh34:
	adrp	x9, _BZ2_rNums@GOTPAGE
Lloh35:
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	ldr	w21, [x9, x8, lsl #2]
	add	w9, w8, #1
	cmp	w9, #512
	csinc	w8, wzr, w8, eq
	str	w8, [x19, #28]
LBB14_24:                               ;   in Loop: Header=BB14_2 Depth=1
	sub	w8, w21, #1
	str	w8, [x19, #24]
	cmp	w8, #1
	cset	w8, eq
	eor	w8, w0, w8
	str	w8, [x19, #64]
	add	w8, w27, #5
	str	w8, [x19, #1092]
	b	LBB14_2
LBB14_25:                               ;   in Loop: Header=BB14_2 Depth=1
	str	w8, [x19, #64]
	b	LBB14_2
LBB14_26:                               ;   in Loop: Header=BB14_2 Depth=1
	str	w8, [x19, #64]
	b	LBB14_2
LBB14_27:                               ;   in Loop: Header=BB14_28 Depth=1
	str	w8, [x19, #64]
LBB14_28:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldr	w9, [x8, #32]
	cbz	w9, LBB14_43
; %bb.29:                               ;   in Loop: Header=BB14_28 Depth=1
	ldr	w9, [x19, #16]
	cbz	w9, LBB14_32
; %bb.30:                               ;   in Loop: Header=BB14_28 Depth=1
	ldrb	w9, [x19, #12]
	ldr	x8, [x8, #24]
	strb	w9, [x8]
	ldr	w8, [x19, #3184]
	eor	w9, w9, w8, lsr #24
Lloh36:
	adrp	x10, _BZ2_crc32Table@GOTPAGE
Lloh37:
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	ldr	w9, [x10, w9, uxtw #2]
	eor	w8, w9, w8, lsl #8
	str	w8, [x19, #3184]
	ldr	w8, [x19, #16]
	sub	w8, w8, #1
	str	w8, [x19, #16]
	ldr	x8, [x19]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [x19]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [x19]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [x19]
	ldr	w9, [x8, #36]
	cbnz	w9, LBB14_28
; %bb.31:                               ;   in Loop: Header=BB14_28 Depth=1
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
	b	LBB14_28
LBB14_32:                               ;   in Loop: Header=BB14_28 Depth=1
	ldr	w26, [x19, #1092]
	mov	w8, #64080                      ; =0xfa50
	ldr	w24, [x19, x8]
	add	w8, w24, #1
	cmp	w26, w8
	b.eq	LBB14_43
; %bb.33:                               ;   in Loop: Header=BB14_28 Depth=1
	b.gt	LBB14_44
; %bb.34:                               ;   in Loop: Header=BB14_28 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [x19, #16]
	ldp	w20, w23, [x19, #60]
	strb	w23, [x19, #12]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldr	x27, [x19, #3160]
	ldrh	w21, [x27, x20, lsl #1]
	ldr	x28, [x19, #3168]
	lsr	x8, x20, #1
	ldrb	w8, [x28, x8]
	ubfiz	w9, w20, #2, #1
	lsr	w8, w8, w9
	mov	x20, x21
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	add	w22, w26, #1
	str	w22, [x19, #1092]
	cmp	w26, w24
	b.eq	LBB14_28
; %bb.35:                               ;   in Loop: Header=BB14_28 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w23
	b.ne	LBB14_27
; %bb.36:                               ;   in Loop: Header=BB14_28 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldrh	w25, [x27, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x28, x8]
	ubfiz	w9, w21, #2, #1
	lsr	w8, w8, w9
	mov	x20, x25
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	add	w21, w26, #2
	str	w21, [x19, #1092]
	cmp	w22, w24
	b.eq	LBB14_28
; %bb.37:                               ;   in Loop: Header=BB14_28 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w23
	b.ne	LBB14_41
; %bb.38:                               ;   in Loop: Header=BB14_28 Depth=1
	mov	w8, #3                          ; =0x3
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldrh	w22, [x27, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x28, x8]
	ubfiz	w9, w25, #2, #1
	lsr	w8, w8, w9
	mov	x20, x22
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	add	w8, w26, #3
	str	w8, [x19, #1092]
	cmp	w21, w24
	b.eq	LBB14_28
; %bb.39:                               ;   in Loop: Header=BB14_28 Depth=1
	and	w8, w0, #0xff
	cmp	w8, w23
	b.ne	LBB14_42
; %bb.40:                               ;   in Loop: Header=BB14_28 Depth=1
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	ldrh	w21, [x27, w20, uxtw #1]
	lsr	x8, x20, #1
	ldrb	w8, [x28, x8]
	ubfiz	w9, w22, #2, #1
	lsr	w8, w8, w9
	mov	x20, x21
	bfi	w20, w8, #16, #4
	str	w20, [x19, #60]
	add	w8, w26, #4
	str	w8, [x19, #1092]
	and	w8, w0, #0xff
	add	w8, w8, #4
	str	w8, [x19, #16]
	add	x1, x19, #1096
	mov	x0, x20
	bl	_BZ2_indexIntoF
	str	w0, [x19, #64]
	ldrh	w8, [x27, w20, uxtw #1]
	lsr	x9, x20, #1
	ldrb	w9, [x28, x9]
	ubfiz	w10, w21, #2, #1
	lsr	w9, w9, w10
	bfi	w8, w9, #16, #4
	str	w8, [x19, #60]
	add	w8, w26, #5
	str	w8, [x19, #1092]
	b	LBB14_28
LBB14_41:                               ;   in Loop: Header=BB14_28 Depth=1
	str	w8, [x19, #64]
	b	LBB14_28
LBB14_42:                               ;   in Loop: Header=BB14_28 Depth=1
	str	w8, [x19, #64]
	b	LBB14_28
LBB14_43:
	mov	w0, #0                          ; =0x0
	b	LBB14_45
LBB14_44:
	mov	w0, #1                          ; =0x1
LBB14_45:                               ; %.loopexit
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpLdrGot	Lloh30, Lloh31
	.loh AdrpLdrGot	Lloh32, Lloh33
	.loh AdrpLdrGot	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh36, Lloh37
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function unRLE_obuf_to_output_FAST
_unRLE_obuf_to_output_FAST:             ; @unRLE_obuf_to_output_FAST
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	ldrb	w8, [x0, #20]
	cbz	w8, LBB15_29
; %bb.1:                                ; %.preheader283
	mov	w8, #64080                      ; =0xfa50
	mov	w9, #1                          ; =0x1
Lloh38:
	adrp	x10, _BZ2_rNums@GOTPAGE
Lloh39:
	ldr	x10, [x10, _BZ2_rNums@GOTPAGEOFF]
	mov	w11, #2                         ; =0x2
	mov	w12, #3                         ; =0x3
Lloh40:
	adrp	x13, _BZ2_crc32Table@GOTPAGE
Lloh41:
	ldr	x13, [x13, _BZ2_crc32Table@GOTPAGEOFF]
	b	LBB15_3
LBB15_2:                                ;   in Loop: Header=BB15_3 Depth=1
	str	w3, [x0, #64]
LBB15_3:                                ; %.backedge285
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x14, [x0]
	ldr	w15, [x14, #32]
	cbz	w15, LBB15_28
; %bb.4:                                ;   in Loop: Header=BB15_3 Depth=1
	ldr	w15, [x0, #16]
	cbz	w15, LBB15_7
; %bb.5:                                ;   in Loop: Header=BB15_3 Depth=1
	ldrb	w15, [x0, #12]
	ldr	x14, [x14, #24]
	strb	w15, [x14]
	ldr	w14, [x0, #3184]
	eor	w15, w15, w14, lsr #24
	ldr	w15, [x13, w15, uxtw #2]
	eor	w14, w15, w14, lsl #8
	str	w14, [x0, #3184]
	ldr	w14, [x0, #16]
	sub	w14, w14, #1
	str	w14, [x0, #16]
	ldr	x14, [x0]
	ldr	x15, [x14, #24]
	add	x15, x15, #1
	str	x15, [x14, #24]
	ldr	x14, [x0]
	ldr	w15, [x14, #32]
	sub	w15, w15, #1
	str	w15, [x14, #32]
	ldr	x14, [x0]
	ldr	w15, [x14, #36]
	add	w15, w15, #1
	str	w15, [x14, #36]
	ldr	x14, [x0]
	ldr	w15, [x14, #36]
	cbnz	w15, LBB15_3
; %bb.6:                                ;   in Loop: Header=BB15_3 Depth=1
	ldr	w15, [x14, #40]
	add	w15, w15, #1
	str	w15, [x14, #40]
	b	LBB15_3
LBB15_7:                                ;   in Loop: Header=BB15_3 Depth=1
	ldr	w14, [x0, #1092]
	ldr	w17, [x0, x8]
	add	w15, w17, #1
	cmp	w14, w15
	b.eq	LBB15_28
; %bb.8:                                ;   in Loop: Header=BB15_3 Depth=1
	b.gt	LBB15_51
; %bb.9:                                ;   in Loop: Header=BB15_3 Depth=1
	str	w9, [x0, #16]
	ldp	w1, w16, [x0, #60]
	strb	w16, [x0, #12]
	ldr	x15, [x0, #3152]
	ldr	w3, [x15, x1, lsl #2]
	lsr	x2, x3, #8
	str	w2, [x0, #60]
	ldr	w1, [x0, #24]
	cbnz	w1, LBB15_11
; %bb.10:                               ;   in Loop: Header=BB15_3 Depth=1
	ldrsw	x4, [x0, #28]
	ldr	w1, [x10, x4, lsl #2]
	add	w5, w4, #1
	cmp	w5, #512
	csinc	w4, wzr, w4, eq
	str	w4, [x0, #28]
LBB15_11:                               ;   in Loop: Header=BB15_3 Depth=1
	sub	w4, w1, #1
	str	w4, [x0, #24]
	add	w1, w14, #1
	str	w1, [x0, #1092]
	cmp	w14, w17
	b.eq	LBB15_3
; %bb.12:                               ;   in Loop: Header=BB15_3 Depth=1
	cmp	w4, #1
	cset	w5, eq
	and	w3, w3, #0xff
	eor	w3, w3, w5
	cmp	w3, w16
	b.ne	LBB15_2
; %bb.13:                               ;   in Loop: Header=BB15_3 Depth=1
	str	w11, [x0, #16]
	ldr	w5, [x15, x2, lsl #2]
	lsr	x3, x5, #8
	str	w3, [x0, #60]
	cbnz	w4, LBB15_15
; %bb.14:                               ;   in Loop: Header=BB15_3 Depth=1
	ldrsw	x2, [x0, #28]
	ldr	w4, [x10, x2, lsl #2]
	add	w6, w2, #1
	cmp	w6, #512
	csinc	w2, wzr, w2, eq
	str	w2, [x0, #28]
LBB15_15:                               ;   in Loop: Header=BB15_3 Depth=1
	sub	w4, w4, #1
	str	w4, [x0, #24]
	add	w2, w14, #2
	str	w2, [x0, #1092]
	cmp	w1, w17
	b.eq	LBB15_3
; %bb.16:                               ;   in Loop: Header=BB15_3 Depth=1
	cmp	w4, #1
	cset	w1, eq
	and	w5, w5, #0xff
	eor	w1, w5, w1
	cmp	w1, w16
	b.ne	LBB15_26
; %bb.17:                               ;   in Loop: Header=BB15_3 Depth=1
	str	w12, [x0, #16]
	ldr	w5, [x15, x3, lsl #2]
	lsr	x3, x5, #8
	str	w3, [x0, #60]
	cbnz	w4, LBB15_19
; %bb.18:                               ;   in Loop: Header=BB15_3 Depth=1
	ldrsw	x1, [x0, #28]
	ldr	w4, [x10, x1, lsl #2]
	add	w6, w1, #1
	cmp	w6, #512
	csinc	w1, wzr, w1, eq
	str	w1, [x0, #28]
LBB15_19:                               ;   in Loop: Header=BB15_3 Depth=1
	sub	w1, w4, #1
	str	w1, [x0, #24]
	add	w4, w14, #3
	str	w4, [x0, #1092]
	cmp	w2, w17
	b.eq	LBB15_3
; %bb.20:                               ;   in Loop: Header=BB15_3 Depth=1
	cmp	w1, #1
	cset	w17, eq
	and	w2, w5, #0xff
	eor	w17, w2, w17
	cmp	w17, w16
	b.ne	LBB15_27
; %bb.21:                               ;   in Loop: Header=BB15_3 Depth=1
	ldr	w17, [x15, x3, lsl #2]
	lsr	x16, x17, #8
	str	w16, [x0, #60]
	cbnz	w1, LBB15_23
; %bb.22:                               ;   in Loop: Header=BB15_3 Depth=1
	ldrsw	x2, [x0, #28]
	ldr	w1, [x10, x2, lsl #2]
	add	w3, w2, #1
	cmp	w3, #512
	csinc	w2, wzr, w2, eq
	str	w2, [x0, #28]
LBB15_23:                               ;   in Loop: Header=BB15_3 Depth=1
	sub	w1, w1, #1
	str	w1, [x0, #24]
	cmp	w1, #1
	cset	w2, eq
	add	w3, w14, #4
	str	w3, [x0, #1092]
	and	w17, w17, #0xff
	eor	w17, w17, w2
	add	w17, w17, #4
	str	w17, [x0, #16]
	ldr	w16, [x15, x16, lsl #2]
	and	w15, w16, #0xff
	lsr	w16, w16, #8
	stp	w16, w15, [x0, #60]
	cbnz	w1, LBB15_25
; %bb.24:                               ;   in Loop: Header=BB15_3 Depth=1
	ldrsw	x16, [x0, #28]
	ldr	w1, [x10, x16, lsl #2]
	add	w17, w16, #1
	cmp	w17, #512
	csinc	w16, wzr, w16, eq
	str	w16, [x0, #28]
LBB15_25:                               ;   in Loop: Header=BB15_3 Depth=1
	sub	w16, w1, #1
	str	w16, [x0, #24]
	cmp	w16, #1
	cset	w16, eq
	eor	w15, w15, w16
	str	w15, [x0, #64]
	add	w14, w14, #5
	str	w14, [x0, #1092]
	b	LBB15_3
LBB15_26:                               ;   in Loop: Header=BB15_3 Depth=1
	str	w1, [x0, #64]
	b	LBB15_3
LBB15_27:                               ;   in Loop: Header=BB15_3 Depth=1
	str	w17, [x0, #64]
	b	LBB15_3
LBB15_28:
	mov	w0, #0                          ; =0x0
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	ret
LBB15_29:
	ldr	w8, [x0, #3184]
	ldrb	w9, [x0, #12]
	ldr	w3, [x0, #16]
	ldr	w16, [x0, #1092]
	ldr	x10, [x0, #3152]
	ldp	w14, w15, [x0, #60]
	ldr	x12, [x0]
	ldr	x11, [x12, #24]
	ldr	w13, [x12, #32]
	mov	w12, #64080                     ; =0xfa50
	ldr	w1, [x0, x12]
	add	w17, w1, #1
Lloh42:
	adrp	x2, _BZ2_crc32Table@GOTPAGE
Lloh43:
	ldr	x2, [x2, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x12, x13
LBB15_30:                               ; %.backedge
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_32 Depth 2
	cmp	w3, #1
	b.lt	LBB15_36
; %bb.31:                               ; %.preheader
                                        ;   in Loop: Header=BB15_30 Depth=1
	mov	x4, #0                          ; =0x0
	sub	x5, x3, #1
	mov	w6, w12
	cmp	w6, w4
	b.eq	LBB15_47
LBB15_32:                               ;   Parent Loop BB15_30 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w5, w4
	b.eq	LBB15_34
; %bb.33:                               ;   in Loop: Header=BB15_32 Depth=2
	strb	w9, [x11, x4]
	eor	w7, w9, w8, lsr #24
	ldr	w7, [x2, w7, uxtw #2]
	eor	w8, w7, w8, lsl #8
	add	x4, x4, #1
	cmp	w6, w4
	b.ne	LBB15_32
	b	LBB15_47
LBB15_34:                               ; %.loopexit279.loopexit
                                        ;   in Loop: Header=BB15_30 Depth=1
	add	x11, x11, x4
	sub	w12, w12, w4
	cbz	w12, LBB15_52
LBB15_35:                               ;   in Loop: Header=BB15_30 Depth=1
	strb	w9, [x11], #1
	eor	w3, w9, w8, lsr #24
	ldr	w3, [x2, w3, uxtw #2]
	eor	w8, w3, w8, lsl #8
	sub	w12, w12, #1
LBB15_36:                               ;   in Loop: Header=BB15_30 Depth=1
	mov	x4, x16
	mov	x5, x15
	cmp	w16, w17
	b.gt	LBB15_51
; %bb.37:                               ;   in Loop: Header=BB15_30 Depth=1
	b.eq	LBB15_53
; %bb.38:                               ;   in Loop: Header=BB15_30 Depth=1
	and	w9, w5, #0xff
	ldr	w15, [x10, w14, uxtw #2]
	lsr	x14, x15, #8
	add	w16, w4, #1
	and	w15, w15, #0xff
	cmp	w15, w5
	b.ne	LBB15_41
; %bb.39:                               ;   in Loop: Header=BB15_30 Depth=1
	cmp	w4, w1
	b.ne	LBB15_42
; %bb.40:                               ;   in Loop: Header=BB15_30 Depth=1
	mov	x15, x5
LBB15_41:                               ;   in Loop: Header=BB15_30 Depth=1
                                        ; kill: def $w14 killed $w14 killed $x14 def $x14
	cbnz	w12, LBB15_35
	b	LBB15_52
LBB15_42:                               ;   in Loop: Header=BB15_30 Depth=1
	ldr	w7, [x10, x14, lsl #2]
	lsr	x14, x7, #8
	add	w6, w4, #2
	mov	w3, #2                          ; =0x2
	mov	x16, x17
	mov	x15, x5
	cmp	w6, w17
	b.eq	LBB15_30
; %bb.43:                               ;   in Loop: Header=BB15_30 Depth=1
	and	w15, w7, #0xff
	mov	w3, #2                          ; =0x2
	mov	x16, x6
	cmp	w15, w5
	b.ne	LBB15_30
; %bb.44:                               ;   in Loop: Header=BB15_30 Depth=1
	ldr	w19, [x10, x14, lsl #2]
	lsr	x6, x19, #8
	add	w7, w4, #3
	mov	w3, #3                          ; =0x3
	mov	x16, x17
	mov	x15, x5
	mov	x14, x6
	cmp	w7, w17
	b.eq	LBB15_30
; %bb.45:                               ;   in Loop: Header=BB15_30 Depth=1
	and	w15, w19, #0xff
	mov	w3, #3                          ; =0x3
	mov	x16, x7
	mov	x14, x6
	cmp	w15, w5
	b.ne	LBB15_30
; %bb.46:                               ;   in Loop: Header=BB15_30 Depth=1
	ldr	w14, [x10, x6, lsl #2]
	and	x15, x14, #0xff
	add	x3, x15, #4
	lsr	x14, x14, #6
	and	x14, x14, #0x3fffffc
	ldr	w14, [x10, x14]
	and	w15, w14, #0xff
	lsr	w14, w14, #8
	add	w16, w4, #5
	b	LBB15_30
LBB15_47:                               ; %.loopexit.loopexit
	mov	w12, #0                         ; =0x0
	sub	w1, w3, w4
	add	x11, x11, x4
LBB15_48:                               ; %.loopexit
	ldr	x17, [x0]
	ldr	w2, [x17, #36]
	sub	w13, w13, w12
	add	w13, w13, w2
	str	w13, [x17, #36]
	ldr	x13, [x0]
	ldr	w17, [x13, #36]
	cmp	w17, w2
	b.hs	LBB15_50
; %bb.49:
	ldr	w17, [x13, #40]
	add	w17, w17, #1
	str	w17, [x13, #40]
	ldr	x13, [x0]
LBB15_50:
	str	w8, [x0, #3184]
	strb	w9, [x0, #12]
	str	w1, [x0, #16]
	str	w16, [x0, #1092]
	str	x10, [x0, #3152]
	stp	w14, w15, [x0, #60]
	str	x11, [x13, #24]
	ldr	x8, [x0]
	mov	w0, #0                          ; =0x0
	str	w12, [x8, #32]
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	ret
LBB15_51:
	mov	w0, #1                          ; =0x1
	ldp	x20, x19, [sp], #16             ; 16-byte Folded Reload
	ret
LBB15_52:
	mov	w1, #1                          ; =0x1
	b	LBB15_48
LBB15_53:
	mov	w1, #0                          ; =0x0
	mov	x16, x17
	mov	x15, x5
	b	LBB15_48
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompressEnd            ; -- Begin function BZ2_bzDecompressEnd
	.p2align	2
_BZ2_bzDecompressEnd:                   ; @BZ2_bzDecompressEnd
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB16_4
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x20, [x0, #48]
	cbz	x20, LBB16_3
; %bb.2:
	ldr	x8, [x20]
	cmp	x8, x0
	b.eq	LBB16_5
LBB16_3:
	mov	w0, #-2                         ; =0xfffffffe
	b	LBB16_12
LBB16_4:
	mov	w0, #-2                         ; =0xfffffffe
	ret
LBB16_5:
	ldr	x1, [x20, #3152]
	mov	x19, x0
	cbz	x1, LBB16_7
; %bb.6:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB16_7:
	ldr	x1, [x20, #3160]
	cbz	x1, LBB16_9
; %bb.8:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB16_9:
	ldr	x1, [x20, #3168]
	cbz	x1, LBB16_11
; %bb.10:
	ldp	x8, x0, [x0, #64]
	blr	x8
	mov	x0, x19
LBB16_11:
	ldp	x9, x8, [x0, #64]
	ldr	x1, [x0, #48]
	mov	x19, x0
	mov	x0, x8
	blr	x9
	mov	w0, #0                          ; =0x0
	str	xzr, [x19, #48]
LBB16_12:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteOpen                ; -- Begin function BZ2_bzWriteOpen
	.p2align	2
_BZ2_bzWriteOpen:                       ; @BZ2_bzWriteOpen
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x0
	cbz	x0, LBB17_2
; %bb.1:
	str	wzr, [x19]
LBB17_2:
	cmp	w3, #4
	b.hi	LBB17_9
; %bb.3:
	cbz	x1, LBB17_9
; %bb.4:
	sub	w8, w2, #10
	cmn	w8, #9
	b.lo	LBB17_9
; %bb.5:
	cmp	w4, #251
	b.hs	LBB17_9
; %bb.6:
	mov	x22, x4
	mov	x21, x2
	mov	x20, x3
	mov	x24, x1
	mov	x0, x1
	bl	_ferror
	cbz	w0, LBB17_13
; %bb.7:
	mov	x0, #0                          ; =0x0
	cbz	x19, LBB17_12
; %bb.8:
	mov	w8, #-6                         ; =0xfffffffa
	b	LBB17_11
LBB17_9:
	mov	x0, #0                          ; =0x0
	cbz	x19, LBB17_12
; %bb.10:
	mov	w8, #-2                         ; =0xfffffffe
LBB17_11:
	str	w8, [x19]
LBB17_12:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB17_13:
	mov	w0, #5104                       ; =0x13f0
	bl	_malloc
	cbz	x0, LBB17_20
; %bb.14:
	add	x23, x0, #1, lsl #12            ; =4096
	cbz	x19, LBB17_16
; %bb.15:
	str	wzr, [x19]
LBB17_16:
	str	wzr, [x0, #5096]
	strb	wzr, [x23, #1004]
	str	wzr, [x0, #5008]
	str	x24, [x0]
	mov	w24, #1                         ; =0x1
	strb	w24, [x23, #916]
	mov	w8, #5016                       ; =0x1398
	mov	w9, #30                         ; =0x1e
	cmp	w22, #0
	csel	w3, w9, w22, eq
	str	xzr, [x0, #5072]
	str	xzr, [x0, #5088]
	str	xzr, [x0, #5080]
	mov	x22, x0
	add	x0, x0, x8
	mov	x1, x21
	mov	x2, x20
	bl	_BZ2_bzCompressInit
	cbz	w0, LBB17_22
; %bb.17:
	cbz	x19, LBB17_19
; %bb.18:
	str	w0, [x19]
LBB17_19:
	mov	x0, x22
	bl	_free
	mov	x0, #0                          ; =0x0
	b	LBB17_12
LBB17_20:
	mov	x0, #0                          ; =0x0
	cbz	x19, LBB17_12
; %bb.21:
	mov	w8, #-3                         ; =0xfffffffd
	b	LBB17_11
LBB17_22:
	mov	x0, x22
	str	wzr, [x22, #5024]
	strb	w24, [x23, #1004]
	b	LBB17_12
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWrite                    ; -- Begin function BZ2_bzWrite
	.p2align	2
_BZ2_bzWrite:                           ; @BZ2_bzWrite
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x1
	cbz	x0, LBB18_2
; %bb.1:
	str	wzr, [x0]
LBB18_2:
	cbz	x19, LBB18_10
; %bb.3:
	str	wzr, [x19, #5096]
	cbz	x2, LBB18_10
; %bb.4:
	tbnz	w3, #31, LBB18_10
; %bb.5:
	mov	w8, #5012                       ; =0x1394
	ldrb	w8, [x19, x8]
	cbz	w8, LBB18_14
; %bb.6:
	mov	x21, x3
	mov	x20, x2
	mov	x22, x0
	ldr	x0, [x19]
	bl	_ferror
	cbz	w0, LBB18_17
LBB18_7:
	cbz	x22, LBB18_9
; %bb.8:
	mov	w8, #-6                         ; =0xfffffffa
	str	w8, [x22]
LBB18_9:
	mov	w8, #-6                         ; =0xfffffffa
	str	w8, [x19, #5096]
	b	LBB18_30
LBB18_10:                               ; %.thread
	cbz	x0, LBB18_12
; %bb.11:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x0]
LBB18_12:
	cbz	x19, LBB18_30
; %bb.13:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x19, #5096]
	b	LBB18_30
LBB18_14:
	cbz	x0, LBB18_16
; %bb.15:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0]
LBB18_16:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x19, #5096]
	b	LBB18_30
LBB18_17:
	cbz	w21, LBB18_24
; %bb.18:
	mov	w23, #5016                      ; =0x1398
	str	w21, [x19, #5024]
	str	x20, [x19, #5016]
	add	x20, x19, #8
	mov	w24, #5000                      ; =0x1388
	b	LBB18_20
LBB18_19:                               ;   in Loop: Header=BB18_20 Depth=1
	ldr	w8, [x19, #5024]
	cbz	w8, LBB18_24
LBB18_20:                               ; =>This Inner Loop Header: Depth=1
	str	w24, [x19, #5048]
	str	x20, [x19, #5040]
	add	x0, x19, x23
	mov	w1, #0                          ; =0x0
	bl	_BZ2_bzCompress
	cmp	w0, #1
	b.ne	LBB18_27
; %bb.21:                               ;   in Loop: Header=BB18_20 Depth=1
	ldr	w8, [x19, #5048]
	ubfx	x9, x8, #3, #29
	cmp	w9, #624
	b.hi	LBB18_19
; %bb.22:                               ;   in Loop: Header=BB18_20 Depth=1
	sub	x21, x24, x8
	ldr	x3, [x19]
	mov	x0, x20
	mov	w1, #1                          ; =0x1
	mov	x2, x21
	bl	_fwrite
	cmp	w21, w0
	b.ne	LBB18_7
; %bb.23:                               ;   in Loop: Header=BB18_20 Depth=1
	ldr	x0, [x19]
	bl	_ferror
	cbz	w0, LBB18_19
	b	LBB18_7
LBB18_24:
	cbz	x22, LBB18_26
; %bb.25:
	str	wzr, [x22]
LBB18_26:
	str	wzr, [x19, #5096]
	b	LBB18_30
LBB18_27:
	cbz	x22, LBB18_29
; %bb.28:
	str	w0, [x22]
LBB18_29:
	str	w0, [x19, #5096]
LBB18_30:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteClose               ; -- Begin function BZ2_bzWriteClose
	.p2align	2
_BZ2_bzWriteClose:                      ; @BZ2_bzWriteClose
	.cfi_startproc
; %bb.0:
	mov	x5, x4
	mov	x4, #0                          ; =0x0
	mov	x6, #0                          ; =0x0
	b	_BZ2_bzWriteClose64
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteClose64             ; -- Begin function BZ2_bzWriteClose64
	.p2align	2
_BZ2_bzWriteClose64:                    ; @BZ2_bzWriteClose64
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x0
	cbz	x1, LBB20_6
; %bb.1:
	mov	x19, x1
	mov	w8, #5012                       ; =0x1394
	ldrb	w8, [x1, x8]
	cbz	w8, LBB20_8
; %bb.2:
	mov	x21, x2
	mov	x27, x3
	mov	x26, x4
	mov	x25, x5
	mov	x24, x6
	ldr	x0, [x19]
	bl	_ferror
	cbz	w0, LBB20_13
LBB20_3:
	cbz	x20, LBB20_5
; %bb.4:
	mov	w8, #-6                         ; =0xfffffffa
	str	w8, [x20]
LBB20_5:
	mov	w8, #-6                         ; =0xfffffffa
	b	LBB20_11
LBB20_6:
	cbz	x20, LBB20_12
; %bb.7:
	str	wzr, [x20]
	b	LBB20_12
LBB20_8:
	cbz	x20, LBB20_10
; %bb.9:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x20]
LBB20_10:
	mov	w8, #-1                         ; =0xffffffff
LBB20_11:
	str	w8, [x19, #5096]
LBB20_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB20_13:
	mov	x9, x25
	mov	x11, x27
	cbz	x27, LBB20_15
; %bb.14:
	str	wzr, [x11]
LBB20_15:
	mov	x8, x24
	mov	x10, x26
	mov	x12, x21
	cbz	x26, LBB20_17
; %bb.16:
	str	wzr, [x10]
LBB20_17:
	cbz	x9, LBB20_19
; %bb.18:
	str	wzr, [x9]
LBB20_19:
	cbz	x8, LBB20_21
; %bb.20:
	str	wzr, [x8]
LBB20_21:
	cbnz	w12, LBB20_24
; %bb.22:
	ldr	w8, [x19, #5096]
	cbz	w8, LBB20_35
LBB20_23:                               ; %.loopexit
	ldr	x21, [x19]
	mov	x0, x21
	bl	_ferror
	mov	x8, x24
	mov	x9, x25
	mov	x10, x26
	mov	x11, x27
	cbz	w0, LBB20_41
LBB20_24:                               ; %.critedge
	cbz	x11, LBB20_26
; %bb.25:
	ldr	w12, [x19, #5028]
	str	w12, [x11]
LBB20_26:
	cbz	x10, LBB20_28
; %bb.27:
	ldr	w11, [x19, #5032]
	str	w11, [x10]
LBB20_28:
	cbz	x9, LBB20_30
; %bb.29:
	ldr	w10, [x19, #5052]
	str	w10, [x9]
LBB20_30:
	cbz	x8, LBB20_32
; %bb.31:
	ldr	w9, [x19, #5056]
	str	w9, [x8]
LBB20_32:
	cbz	x20, LBB20_34
; %bb.33:
	str	wzr, [x20]
LBB20_34:
	str	wzr, [x19, #5096]
	mov	w8, #5016                       ; =0x1398
	add	x0, x19, x8
	bl	_BZ2_bzCompressEnd
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	b	_free
LBB20_35:                               ; %.preheader
	mov	w23, #5016                      ; =0x1398
	add	x21, x19, #8
	mov	w28, #5000                      ; =0x1388
	b	LBB20_37
LBB20_36:                               ;   in Loop: Header=BB20_37 Depth=1
	cmp	w22, #4
	b.eq	LBB20_23
LBB20_37:                               ; =>This Inner Loop Header: Depth=1
	str	w28, [x19, #5048]
	str	x21, [x19, #5040]
	add	x0, x19, x23
	mov	w1, #2                          ; =0x2
	bl	_BZ2_bzCompress
	mov	x22, x0
	sub	w8, w0, #5
	cmn	w8, #3
	b.ls	LBB20_42
; %bb.38:                               ;   in Loop: Header=BB20_37 Depth=1
	ldr	w8, [x19, #5048]
	ubfx	x9, x8, #3, #29
	cmp	w9, #624
	b.hi	LBB20_36
; %bb.39:                               ;   in Loop: Header=BB20_37 Depth=1
	sub	x23, x28, x8
	ldr	x3, [x19]
	mov	x0, x21
	mov	w1, #1                          ; =0x1
	mov	x2, x23
	bl	_fwrite
	cmp	w23, w0
	mov	w23, #5016                      ; =0x1398
	b.ne	LBB20_3
; %bb.40:                               ;   in Loop: Header=BB20_37 Depth=1
	ldr	x0, [x19]
	bl	_ferror
	cbz	w0, LBB20_36
	b	LBB20_3
LBB20_41:
	mov	x0, x21
	bl	_fflush
	ldr	x0, [x19]
	bl	_ferror
	mov	x11, x27
	mov	x10, x26
	mov	x9, x25
	mov	x8, x24
	cbnz	w0, LBB20_3
	b	LBB20_24
LBB20_42:
	cbz	x20, LBB20_44
; %bb.43:
	str	w22, [x20]
LBB20_44:
	str	w22, [x19, #5096]
	b	LBB20_12
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadOpen                 ; -- Begin function BZ2_bzReadOpen
	.p2align	2
_BZ2_bzReadOpen:                        ; @BZ2_bzReadOpen
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB21_2
; %bb.1:
	str	wzr, [x0]
LBB21_2:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	cbz	x1, LBB21_9
; %bb.3:
	cmp	w2, #4
	b.hi	LBB21_9
; %bb.4:
	cmp	w3, #1
	b.hi	LBB21_9
; %bb.5:
	cbnz	x4, LBB21_7
; %bb.6:
	cbnz	w5, LBB21_9
LBB21_7:
	cbz	x4, LBB21_12
; %bb.8:
	mov	w8, #5001                       ; =0x1389
	cmp	w5, w8
	b.lo	LBB21_12
LBB21_9:
	mov	x19, #0                         ; =0x0
	cbz	x0, LBB21_11
; %bb.10:
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x0]
LBB21_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB21_12:
	mov	x23, x4
	mov	x19, x5
	mov	x25, x2
	mov	x24, x3
	mov	x20, x0
	mov	x22, x1
	mov	x0, x1
	bl	_ferror
	cbz	w0, LBB21_15
; %bb.13:
	mov	x19, #0                         ; =0x0
	cbz	x20, LBB21_11
; %bb.14:
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x20]
	b	LBB21_11
LBB21_15:
	mov	w0, #5104                       ; =0x13f0
	bl	_malloc
	cbz	x0, LBB21_24
; %bb.16:
	add	x21, x0, #1, lsl #12            ; =4096
	cbz	x20, LBB21_18
; %bb.17:
	str	wzr, [x20]
LBB21_18:
	mov	w8, #0                          ; =0x0
	str	wzr, [x0, #5096]
	strb	wzr, [x21, #1004]
	str	x22, [x0]
	str	wzr, [x0, #5008]
	strb	wzr, [x21, #916]
	add	x22, x0, #8
	str	xzr, [x0, #5072]
	str	xzr, [x0, #5088]
	str	xzr, [x0, #5080]
	mov	x2, x24
	mov	x1, x25
	subs	w19, w19, #1
	b.lt	LBB21_20
LBB21_19:                               ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x23], #1
	strb	w9, [x22, w8, sxtw]
	ldr	w8, [x0, #5008]
	add	w8, w8, #1
	str	w8, [x0, #5008]
	subs	w19, w19, #1
	b.ge	LBB21_19
LBB21_20:
	mov	w8, #5016                       ; =0x1398
	mov	x19, x0
	add	x0, x0, x8
	bl	_BZ2_bzDecompressInit
	cbz	w0, LBB21_26
; %bb.21:
	cbz	x20, LBB21_23
; %bb.22:
	str	w0, [x20]
LBB21_23:
	mov	x0, x19
	bl	_free
	mov	x19, #0                         ; =0x0
	b	LBB21_11
LBB21_24:
	mov	x19, #0                         ; =0x0
	cbz	x20, LBB21_11
; %bb.25:
	mov	w9, #-3                         ; =0xfffffffd
	str	w9, [x20]
	b	LBB21_11
LBB21_26:
	ldr	w9, [x19, #5008]
	str	w9, [x19, #5024]
	str	x22, [x19, #5016]
	mov	w9, #1                          ; =0x1
	strb	w9, [x21, #1004]
	b	LBB21_11
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadClose                ; -- Begin function BZ2_bzReadClose
	.p2align	2
_BZ2_bzReadClose:                       ; @BZ2_bzReadClose
	.cfi_startproc
; %bb.0:
	add	x8, x1, #1, lsl #12             ; =4096
	cbz	x0, LBB22_4
; %bb.1:                                ; %.thread23
	str	wzr, [x0]
	cbz	x1, LBB22_7
; %bb.2:                                ; %.thread26
	str	wzr, [x1, #5096]
	ldrb	w9, [x8, #916]
	cbz	w9, LBB22_8
; %bb.3:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0]
	b	LBB22_6
LBB22_4:
	cbz	x1, LBB22_7
; %bb.5:
	str	wzr, [x1, #5096]
	ldrb	w9, [x8, #916]
	cbz	w9, LBB22_8
LBB22_6:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x1, #5096]
LBB22_7:
	ret
LBB22_8:
	ldrb	w8, [x8, #1004]
	cbz	w8, LBB22_10
; %bb.9:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w8, #5016                       ; =0x1398
	add	x0, x1, x8
	mov	x19, x1
	bl	_BZ2_bzDecompressEnd
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
LBB22_10:
	mov	x0, x1
	b	_free
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzRead                     ; -- Begin function BZ2_bzRead
	.p2align	2
_BZ2_bzRead:                            ; @BZ2_bzRead
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x3
	mov	x19, x1
	mov	x21, x0
	cbz	x0, LBB23_2
; %bb.1:
	str	wzr, [x21]
LBB23_2:
	cbz	x19, LBB23_9
; %bb.3:
	str	wzr, [x19, #5096]
	cbz	x2, LBB23_9
; %bb.4:
	tbnz	w20, #31, LBB23_9
; %bb.5:
	mov	w8, #5012                       ; =0x1394
	ldrb	w8, [x19, x8]
	cbz	w8, LBB23_15
; %bb.6:
	cbz	x21, LBB23_8
; %bb.7:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x21]
LBB23_8:
	mov	w20, #0                         ; =0x0
	mov	w8, #-1                         ; =0xffffffff
	b	LBB23_13
LBB23_9:                                ; %.thread
	cbz	x21, LBB23_11
; %bb.10:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x21]
LBB23_11:
	mov	w20, #0                         ; =0x0
	cbz	x19, LBB23_14
; %bb.12:
	mov	w8, #-2                         ; =0xfffffffe
LBB23_13:
	str	w8, [x19, #5096]
LBB23_14:
	mov	x0, x20
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB23_15:
	cbz	w20, LBB23_32
; %bb.16:
	mov	w24, #5016                      ; =0x1398
	str	w20, [x19, #5048]
	str	x2, [x19, #5040]
	add	x22, x19, #8
	b	LBB23_19
LBB23_17:                               ;   in Loop: Header=BB23_19 Depth=1
	cmp	w0, #4
	b.eq	LBB23_44
LBB23_18:                               ;   in Loop: Header=BB23_19 Depth=1
	ldr	w8, [x19, #5048]
	cbz	w8, LBB23_38
LBB23_19:                               ; =>This Inner Loop Header: Depth=1
	ldr	x23, [x19]
	mov	x0, x23
	bl	_ferror
	cbnz	w0, LBB23_35
; %bb.20:                               ;   in Loop: Header=BB23_19 Depth=1
	ldr	w8, [x19, #5024]
	cbnz	w8, LBB23_24
; %bb.21:                               ;   in Loop: Header=BB23_19 Depth=1
	mov	x0, x23
	bl	_myfeof
	cbnz	w0, LBB23_24
; %bb.22:                               ;   in Loop: Header=BB23_19 Depth=1
	ldr	x3, [x19]
	mov	x0, x22
	mov	w1, #1                          ; =0x1
	mov	w2, #5000                       ; =0x1388
	bl	_fread
	mov	x23, x0
	ldr	x0, [x19]
	bl	_ferror
	cbnz	w0, LBB23_35
; %bb.23:                               ;   in Loop: Header=BB23_19 Depth=1
	str	w23, [x19, #5008]
	str	w23, [x19, #5024]
	str	x22, [x19, #5016]
LBB23_24:                               ;   in Loop: Header=BB23_19 Depth=1
	add	x0, x19, x24
	bl	_BZ2_bzDecompress
	tst	w0, #0xfffffffb
	b.ne	LBB23_41
; %bb.25:                               ;   in Loop: Header=BB23_19 Depth=1
	cbnz	w0, LBB23_17
; %bb.26:                               ;   in Loop: Header=BB23_19 Depth=1
	ldr	x0, [x19]
	bl	_myfeof
	cbz	w0, LBB23_18
; %bb.27:                               ;   in Loop: Header=BB23_19 Depth=1
	ldr	w8, [x19, #5024]
	cbnz	w8, LBB23_18
; %bb.28:
	ldr	w8, [x19, #5048]
	cbz	w8, LBB23_38
; %bb.29:
	cbz	x21, LBB23_31
; %bb.30:
	mov	w8, #-7                         ; =0xfffffff9
	str	w8, [x21]
LBB23_31:
	mov	w20, #0                         ; =0x0
	mov	w8, #-7                         ; =0xfffffff9
	b	LBB23_13
LBB23_32:
	cbz	x21, LBB23_34
; %bb.33:
	str	wzr, [x21]
LBB23_34:
	mov	w20, #0                         ; =0x0
	b	LBB23_40
LBB23_35:
	cbz	x21, LBB23_37
; %bb.36:
	mov	w8, #-6                         ; =0xfffffffa
	str	w8, [x21]
LBB23_37:
	mov	w20, #0                         ; =0x0
	mov	w8, #-6                         ; =0xfffffffa
	b	LBB23_13
LBB23_38:                               ; %.thread97
	cbz	x21, LBB23_40
; %bb.39:
	str	wzr, [x21]
LBB23_40:
	str	wzr, [x19, #5096]
	b	LBB23_14
LBB23_41:
	cbz	x21, LBB23_43
; %bb.42:
	str	w0, [x21]
LBB23_43:
	mov	w20, #0                         ; =0x0
	str	w0, [x19, #5096]
	b	LBB23_14
LBB23_44:
	cbz	x21, LBB23_46
; %bb.45:
	mov	w8, #4                          ; =0x4
	str	w8, [x21]
LBB23_46:
	mov	w8, #4                          ; =0x4
	str	w8, [x19, #5096]
	ldr	w8, [x19, #5048]
	sub	w20, w20, w8
	b	LBB23_14
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function myfeof
_myfeof:                                ; @myfeof
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	bl	_fgetc
	cmn	w0, #1
	b.eq	LBB24_2
; %bb.1:
	mov	x1, x19
	bl	_ungetc
	mov	w0, #0                          ; =0x0
	b	LBB24_3
LBB24_2:
	mov	w0, #1                          ; =0x1
LBB24_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadGetUnused            ; -- Begin function BZ2_bzReadGetUnused
	.p2align	2
_BZ2_bzReadGetUnused:                   ; @BZ2_bzReadGetUnused
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB25_8
; %bb.1:
	ldr	w8, [x1, #5096]
	cmp	w8, #4
	b.ne	LBB25_10
; %bb.2:
	cbz	x2, LBB25_13
; %bb.3:
	cbz	x3, LBB25_13
; %bb.4:
	cbz	x0, LBB25_6
; %bb.5:
	str	wzr, [x0]
LBB25_6:
	str	wzr, [x1, #5096]
	ldr	w8, [x1, #5024]
	str	w8, [x3]
	ldr	x8, [x1, #5016]
	str	x8, [x2]
LBB25_7:
	ret
LBB25_8:
	cbz	x0, LBB25_7
; %bb.9:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x0]
	ret
LBB25_10:
	cbz	x0, LBB25_12
; %bb.11:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x0]
LBB25_12:
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x1, #5096]
	ret
LBB25_13:
	cbz	x0, LBB25_15
; %bb.14:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x0]
LBB25_15:
	mov	w8, #-2                         ; =0xfffffffe
	str	w8, [x1, #5096]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzBuffToBuffCompress       ; -- Begin function BZ2_bzBuffToBuffCompress
	.p2align	2
_BZ2_bzBuffToBuffCompress:              ; @BZ2_bzBuffToBuffCompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x22, x0
	mov	w0, #-2                         ; =0xfffffffe
	cmp	w6, #250
	b.hi	LBB26_13
; %bb.1:
	cmp	w5, #4
	b.hi	LBB26_13
; %bb.2:
	cbz	x22, LBB26_13
; %bb.3:
	mov	x19, x1
	cbz	x1, LBB26_13
; %bb.4:
	mov	x21, x2
	cbz	x2, LBB26_13
; %bb.5:
	sub	w8, w4, #10
	cmn	w8, #9
	b.lo	LBB26_13
; %bb.6:
	mov	x20, x3
	mov	w8, #30                         ; =0x1e
	cmp	w6, #0
	csel	w3, w8, w6, eq
	stp	xzr, xzr, [sp, #56]
	str	xzr, [sp, #72]
	mov	x0, sp
	mov	x1, x4
	mov	x2, x5
	bl	_BZ2_bzCompressInit
	cbnz	w0, LBB26_13
; %bb.7:
	str	x21, [sp]
	str	x22, [sp, #24]
	str	w20, [sp, #8]
	ldr	w8, [x19]
	str	w8, [sp, #32]
	mov	x0, sp
	mov	w1, #2                          ; =0x2
	bl	_BZ2_bzCompress
	cmp	w0, #3
	b.eq	LBB26_10
; %bb.8:
	cmp	w0, #4
	b.ne	LBB26_11
; %bb.9:
	mov	w20, #0                         ; =0x0
	ldr	w8, [sp, #32]
	ldr	w9, [x19]
	sub	w8, w9, w8
	str	w8, [x19]
	b	LBB26_12
LBB26_10:
	mov	w20, #-8                        ; =0xfffffff8
	b	LBB26_12
LBB26_11:
	mov	x20, x0
LBB26_12:                               ; %.sink.split
	mov	x0, sp
	bl	_BZ2_bzCompressEnd
	mov	x0, x20
LBB26_13:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzBuffToBuffDecompress     ; -- Begin function BZ2_bzBuffToBuffDecompress
	.p2align	2
_BZ2_bzBuffToBuffDecompress:            ; @BZ2_bzBuffToBuffDecompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x0
	mov	w0, #-2                         ; =0xfffffffe
	cbz	x19, LBB27_6
; %bb.1:
	cbz	x1, LBB27_6
; %bb.2:
	cbz	x2, LBB27_6
; %bb.3:
	cmp	w4, #1
	b.hi	LBB27_6
; %bb.4:
	cmp	w5, #4
	b.hi	LBB27_6
; %bb.5:
	stp	xzr, xzr, [sp, #56]
	str	xzr, [sp, #72]
	mov	x0, sp
	mov	x20, x1
	mov	x1, x5
	mov	x21, x2
	mov	x2, x4
	mov	x22, x3
	bl	_BZ2_bzDecompressInit
	cbz	w0, LBB27_7
LBB27_6:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB27_7:
	str	x21, [sp]
	str	x19, [sp, #24]
	str	w22, [sp, #8]
	ldr	w8, [x20]
	str	w8, [sp, #32]
	mov	x0, sp
	bl	_BZ2_bzDecompress
	cbz	w0, LBB27_10
; %bb.8:
	cmp	w0, #4
	b.ne	LBB27_11
; %bb.9:
	ldr	w8, [sp, #32]
	ldr	w9, [x20]
	sub	w8, w9, w8
	str	w8, [x20]
	mov	x0, sp
	bl	_BZ2_bzDecompressEnd
	mov	w0, #0                          ; =0x0
	b	LBB27_6
LBB27_10:
	ldr	w19, [sp, #32]
	mov	x0, sp
	bl	_BZ2_bzDecompressEnd
	cmp	w19, #0
	mov	w8, #-8                         ; =0xfffffff8
	cinc	w0, w8, ne
	b	LBB27_6
LBB27_11:
	mov	x19, x0
	mov	x0, sp
	bl	_BZ2_bzDecompressEnd
	mov	x0, x19
	b	LBB27_6
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzopen                     ; -- Begin function BZ2_bzopen
	.p2align	2
_BZ2_bzopen:                            ; @BZ2_bzopen
	.cfi_startproc
; %bb.0:
	mov	x2, x1
	mov	w1, #-1                         ; =0xffffffff
	mov	w3, #0                          ; =0x0
	b	_bzopen_or_bzdopen
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function bzopen_or_bzdopen
_bzopen_or_bzdopen:                     ; @bzopen_or_bzdopen
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #944
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
Lloh44:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh45:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh46:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
	str	xzr, [sp, #16]
	strh	wzr, [sp, #24]
	cbz	x2, LBB29_24
; %bb.1:                                ; %.preheader.preheader
	mov	x22, x3
	mov	x21, x1
	mov	x20, x0
	mov	w24, #0                         ; =0x0
	mov	w19, #0                         ; =0x0
	mov	w23, #9                         ; =0x9
	b	LBB29_3
LBB29_2:                                ;   in Loop: Header=BB29_3 Depth=1
	mov	w19, #1                         ; =0x1
	add	x2, x2, #1
LBB29_3:                                ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x2]
	cmp	w8, #114
	b.le	LBB29_7
; %bb.4:                                ; %.preheader
                                        ;   in Loop: Header=BB29_3 Depth=1
	cmp	w8, #115
	b.eq	LBB29_2
; %bb.5:                                ; %.preheader
                                        ;   in Loop: Header=BB29_3 Depth=1
	cmp	w8, #119
	b.ne	LBB29_10
; %bb.6:                                ;   in Loop: Header=BB29_3 Depth=1
	mov	w24, #1                         ; =0x1
	add	x2, x2, #1
	b	LBB29_3
LBB29_7:                                ; %.preheader
                                        ;   in Loop: Header=BB29_3 Depth=1
	b.ne	LBB29_9
; %bb.8:                                ;   in Loop: Header=BB29_3 Depth=1
	mov	w24, #0                         ; =0x0
	add	x2, x2, #1
	b	LBB29_3
LBB29_9:                                ; %.preheader
                                        ;   in Loop: Header=BB29_3 Depth=1
	cbz	w8, LBB29_11
LBB29_10:                               ;   in Loop: Header=BB29_3 Depth=1
	sxtb	w8, w8
	sub	w8, w8, #48
	cmp	w8, #10
	csel	w23, w8, w23, lo
	add	x2, x2, #1
	b	LBB29_3
LBB29_11:
Lloh47:
	adrp	x8, l_.str.6@PAGE
Lloh48:
	add	x8, x8, l_.str.6@PAGEOFF
Lloh49:
	adrp	x9, l_.str.7@PAGE
Lloh50:
	add	x9, x9, l_.str.7@PAGEOFF
	cmp	w24, #0
	csel	x1, x9, x8, eq
	add	x0, sp, #16
	mov	w2, #10                         ; =0xa
	bl	___strcat_chk
Lloh51:
	adrp	x1, l_.str.8@PAGE
Lloh52:
	add	x1, x1, l_.str.8@PAGEOFF
	add	x0, sp, #16
	mov	w2, #10                         ; =0xa
	bl	___strcat_chk
	cbz	w22, LBB29_14
; %bb.12:
	add	x1, sp, #16
	mov	x0, x21
	bl	_fdopen
LBB29_13:
	mov	x20, x0
	cbnz	x20, LBB29_18
	b	LBB29_24
LBB29_14:
	cbz	x20, LBB29_17
; %bb.15:
	ldrb	w8, [x20]
	cbz	w8, LBB29_17
; %bb.16:
	add	x1, sp, #16
	mov	x0, x20
	bl	_fopen
	b	LBB29_13
LBB29_17:
Lloh53:
	adrp	x8, ___stdoutp@GOTPAGE
Lloh54:
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
Lloh55:
	adrp	x9, ___stdinp@GOTPAGE
Lloh56:
	ldr	x9, [x9, ___stdinp@GOTPAGEOFF]
	cmp	w24, #0
	csel	x8, x9, x8, eq
	ldr	x20, [x8]
	cbz	x20, LBB29_24
LBB29_18:
	cbz	w24, LBB29_20
; %bb.19:
	cmp	w23, #1
	csinc	w8, w23, wzr, gt
	mov	w9, #9                          ; =0x9
	cmp	w8, #9
	csel	w2, w8, w9, lt
	add	x0, sp, #12
	mov	x1, x20
	mov	w3, #0                          ; =0x0
	mov	w4, #30                         ; =0x1e
	bl	_BZ2_bzWriteOpen
	cbnz	x0, LBB29_25
	b	LBB29_21
LBB29_20:
	add	x0, sp, #12
	add	x4, sp, #32
	mov	x1, x20
	mov	w2, #0                          ; =0x0
	mov	x3, x19
	mov	w5, #0                          ; =0x0
	bl	_BZ2_bzReadOpen
	cbnz	x0, LBB29_25
LBB29_21:
Lloh57:
	adrp	x8, ___stdinp@GOTPAGE
Lloh58:
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
Lloh59:
	ldr	x8, [x8]
	cmp	x20, x8
	b.eq	LBB29_25
; %bb.22:
Lloh60:
	adrp	x8, ___stdoutp@GOTPAGE
Lloh61:
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
Lloh62:
	ldr	x8, [x8]
	cmp	x20, x8
	b.eq	LBB29_25
; %bb.23:
	mov	x0, x20
	bl	_fclose
LBB29_24:
	mov	x0, #0                          ; =0x0
LBB29_25:
	ldur	x8, [x29, #-72]
Lloh63:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh64:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh65:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB29_27
; %bb.26:
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #944
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #80             ; 16-byte Folded Reload
	ret
LBB29_27:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh44, Lloh45, Lloh46
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpLdrGotLdr	Lloh57, Lloh58, Lloh59
	.loh AdrpLdrGotLdr	Lloh60, Lloh61, Lloh62
	.loh AdrpLdrGotLdr	Lloh63, Lloh64, Lloh65
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzdopen                    ; -- Begin function BZ2_bzdopen
	.p2align	2
_BZ2_bzdopen:                           ; @BZ2_bzdopen
	.cfi_startproc
; %bb.0:
	mov	x2, x1
	mov	x1, x0
	mov	x0, #0                          ; =0x0
	mov	w3, #1                          ; =0x1
	b	_bzopen_or_bzdopen
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzread                     ; -- Begin function BZ2_bzread
	.p2align	2
_BZ2_bzread:                            ; @BZ2_bzread
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #5096]
	cmp	w8, #4
	b.ne	LBB31_2
; %bb.1:
	mov	w0, #0                          ; =0x0
	ret
LBB31_2:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	sub	x0, x29, #4
	bl	_BZ2_bzRead
	ldur	w8, [x29, #-4]
	tst	w8, #0xfffffffb
	csinv	w0, w0, wzr, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzwrite                    ; -- Begin function BZ2_bzwrite
	.p2align	2
_BZ2_bzwrite:                           ; @BZ2_bzwrite
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x2
	mov	x2, x1
	mov	x1, x0
	add	x0, sp, #12
	mov	x3, x19
	bl	_BZ2_bzWrite
	ldr	w8, [sp, #12]
	cmp	w8, #0
	csinv	w0, w19, wzr, eq
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzflush                    ; -- Begin function BZ2_bzflush
	.p2align	2
_BZ2_bzflush:                           ; @BZ2_bzflush
	.cfi_startproc
; %bb.0:
	mov	w0, #0                          ; =0x0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzclose                    ; -- Begin function BZ2_bzclose
	.p2align	2
_BZ2_bzclose:                           ; @BZ2_bzclose
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB34_8
; %bb.1:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	ldr	x19, [x0]
	mov	w8, #5012                       ; =0x1394
	ldrb	w8, [x0, x8]
	cbz	w8, LBB34_4
; %bb.2:
	add	x0, sp, #12
	mov	x1, x20
	mov	w2, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	mov	x4, #0                          ; =0x0
	bl	_BZ2_bzWriteClose
	ldr	w8, [sp, #12]
	cbz	w8, LBB34_5
; %bb.3:
	mov	x0, #0                          ; =0x0
	mov	x1, x20
	mov	w2, #1                          ; =0x1
	mov	x3, #0                          ; =0x0
	mov	x4, #0                          ; =0x0
	bl	_BZ2_bzWriteClose
	b	LBB34_5
LBB34_4:
	add	x0, sp, #12
	mov	x1, x20
	bl	_BZ2_bzReadClose
LBB34_5:
Lloh66:
	adrp	x8, ___stdinp@GOTPAGE
Lloh67:
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
Lloh68:
	ldr	x8, [x8]
Lloh69:
	adrp	x9, ___stdoutp@GOTPAGE
Lloh70:
	ldr	x9, [x9, ___stdoutp@GOTPAGEOFF]
Lloh71:
	ldr	x9, [x9]
	cmp	x19, x8
	ccmp	x19, x9, #4, ne
	b.eq	LBB34_7
; %bb.6:
	mov	x0, x19
	bl	_fclose
LBB34_7:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
LBB34_8:
	ret
	.loh AdrpLdrGotLdr	Lloh69, Lloh70, Lloh71
	.loh AdrpLdrGotLdr	Lloh66, Lloh67, Lloh68
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzerror                    ; -- Begin function BZ2_bzerror
	.p2align	2
_BZ2_bzerror:                           ; @BZ2_bzerror
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #5096]
	and	w8, w8, w8, asr #31
	str	w8, [x1]
	neg	w8, w8
Lloh72:
	adrp	x9, _bzerrorstrings@PAGE
Lloh73:
	add	x9, x9, _bzerrorstrings@PAGEOFF
	ldr	x0, [x9, w8, uxtw #3]
	ret
	.loh AdrpAdd	Lloh72, Lloh73
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function copy_output_until_stop
_copy_output_until_stop:                ; @copy_output_until_stop
	.cfi_startproc
; %bb.0:                                ; %.peel.begin
	ldr	x8, [x0]
	ldr	w9, [x8, #32]
	cbz	w9, LBB36_6
; %bb.1:
	ldp	w10, w9, [x0, #116]
                                        ; kill: def $w9 killed $w9 def $x9
	sxtw	x9, w9
	cmp	w9, w10
	b.ge	LBB36_6
LBB36_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x10, [x0, #80]
	ldrb	w9, [x10, x9]
	ldr	x8, [x8, #24]
	strb	w9, [x8]
	ldr	w8, [x0, #120]
	add	w8, w8, #1
	str	w8, [x0, #120]
	ldr	x8, [x0]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [x0]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [x0]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [x0]
	ldr	w9, [x8, #36]
	cbz	w9, LBB36_5
LBB36_3:                                ; %.peel.next
                                        ;   in Loop: Header=BB36_2 Depth=1
	ldr	x8, [x0]
	ldr	w9, [x8, #32]
	cbz	w9, LBB36_7
; %bb.4:                                ;   in Loop: Header=BB36_2 Depth=1
	ldp	w10, w9, [x0, #116]
                                        ; kill: def $w9 killed $w9 def $x9
	sxtw	x9, w9
	cmp	w9, w10
	b.lt	LBB36_2
	b	LBB36_7
LBB36_5:                                ; %.peel.next.sink.split
                                        ;   in Loop: Header=BB36_2 Depth=1
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
	b	LBB36_3
LBB36_6:
	mov	w0, #0                          ; =0x0
	ret
LBB36_7:
	mov	w0, #1                          ; =0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function copy_input_until_stop
_copy_input_until_stop:                 ; @copy_input_until_stop
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x0
	ldr	w8, [x0, #8]
	cmp	w8, #2
	b.ne	LBB37_6
; %bb.1:                                ; %.preheader
	ldp	w8, w9, [x19, #108]
                                        ; kill: def $w8 killed $w8 def $x8
	sxtw	x8, w8
	cmp	w8, w9
	b.ge	LBB37_12
; %bb.2:
	ldr	x9, [x19]
	ldr	w10, [x9, #8]
	cbz	w10, LBB37_12
; %bb.3:
	add	x20, x19, #128
	ldr	x9, [x9]
	ldrb	w21, [x9]
	ldp	w9, w10, [x19, #92]
	cmp	w9, w21
	b.ne	LBB37_13
; %bb.4:
	cmp	w10, #255
	b.eq	LBB37_18
; %bb.5:
	add	w8, w10, #1
	b	LBB37_20
LBB37_6:                                ; %.preheader85
	ldp	w8, w9, [x19, #108]
                                        ; kill: def $w8 killed $w8 def $x8
	sxtw	x8, w8
	cmp	w8, w9
	b.ge	LBB37_12
; %bb.7:
	ldr	x9, [x19]
	ldr	w10, [x9, #8]
	cbz	w10, LBB37_12
; %bb.8:
	ldr	w10, [x19, #16]
	cbz	w10, LBB37_12
; %bb.9:
	add	x20, x19, #128
	ldr	x9, [x9]
	ldrb	w22, [x9]
	ldp	w9, w10, [x19, #92]
Lloh74:
	adrp	x21, _BZ2_crc32Table@GOTPAGE
Lloh75:
	ldr	x21, [x21, _BZ2_crc32Table@GOTPAGEOFF]
	cmp	w9, w22
	b.ne	LBB37_15
; %bb.10:
	cmp	w10, #255
	b.eq	LBB37_36
; %bb.11:
	add	w8, w10, #1
	b	LBB37_38
LBB37_12:
	mov	w0, #0                          ; =0x0
	b	LBB37_54
LBB37_13:
	cmp	w10, #1
	b.ne	LBB37_17
; %bb.14:
	ldr	w10, [x19, #648]
	and	w11, w9, #0xff
	eor	w11, w11, w10, lsr #24
Lloh76:
	adrp	x12, _BZ2_crc32Table@GOTPAGE
Lloh77:
	ldr	x12, [x12, _BZ2_crc32Table@GOTPAGEOFF]
	ldr	w11, [x12, w11, uxtw #2]
	eor	w10, w11, w10, lsl #8
	str	w10, [x19, #648]
	mov	w10, #1                         ; =0x1
	strb	w10, [x20, x9]
	ldr	x10, [x19, #64]
	strb	w9, [x10, x8]
	ldr	w8, [x19, #108]
	add	w8, w8, #1
	str	w8, [x19, #108]
	str	w21, [x19, #92]
	b	LBB37_21
LBB37_15:
	cmp	w10, #1
	b.ne	LBB37_35
; %bb.16:
	ldr	w10, [x19, #648]
	and	w11, w9, #0xff
	eor	w11, w11, w10, lsr #24
	ldr	w11, [x21, w11, uxtw #2]
	eor	w10, w11, w10, lsl #8
	str	w10, [x19, #648]
	mov	w10, #1                         ; =0x1
	strb	w10, [x20, x9]
	ldr	x10, [x19, #64]
	strb	w9, [x10, x8]
	ldr	w8, [x19, #108]
	add	w8, w8, #1
	str	w8, [x19, #108]
	str	w22, [x19, #92]
	b	LBB37_39
LBB37_17:
	cmp	w9, #256
	b.hs	LBB37_19
LBB37_18:                               ; %.thread82.peel
	mov	x0, x19
	bl	_add_pair_to_block
LBB37_19:
	mov	w8, #1                          ; =0x1
	str	w21, [x19, #92]
LBB37_20:
	str	w8, [x19, #96]
LBB37_21:
	ldr	x8, [x19]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldr	x8, [x19]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	cbnz	w9, LBB37_23
LBB37_22:                               ; %.peel.next90.sink.split
	ldr	w9, [x8, #16]
	add	w9, w9, #1
	str	w9, [x8, #16]
LBB37_23:                               ; %.peel.next90.preheader
	mov	w21, #1                         ; =0x1
Lloh78:
	adrp	x22, _BZ2_crc32Table@GOTPAGE
Lloh79:
	ldr	x22, [x22, _BZ2_crc32Table@GOTPAGEOFF]
	b	LBB37_26
LBB37_24:                               ;   in Loop: Header=BB37_26 Depth=1
	add	w8, w10, #1
	str	w8, [x19, #96]
LBB37_25:                               ;   in Loop: Header=BB37_26 Depth=1
	ldr	x8, [x19]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldr	x8, [x19]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	cbz	w9, LBB37_22
LBB37_26:                               ; %.peel.next90
                                        ; =>This Inner Loop Header: Depth=1
	ldp	w8, w9, [x19, #108]
                                        ; kill: def $w8 killed $w8 def $x8
	sxtw	x8, w8
	cmp	w8, w9
	b.ge	LBB37_53
; %bb.27:                               ;   in Loop: Header=BB37_26 Depth=1
	ldr	x9, [x19]
	ldr	w10, [x9, #8]
	cbz	w10, LBB37_53
; %bb.28:                               ;   in Loop: Header=BB37_26 Depth=1
	ldr	x9, [x9]
	ldrb	w23, [x9]
	ldp	w9, w10, [x19, #92]
	cmp	w9, w23
	b.ne	LBB37_30
; %bb.29:                               ;   in Loop: Header=BB37_26 Depth=1
	cmp	w10, #255
	b.ne	LBB37_24
	b	LBB37_33
LBB37_30:                               ;   in Loop: Header=BB37_26 Depth=1
	cmp	w10, #1
	b.ne	LBB37_32
; %bb.31:                               ;   in Loop: Header=BB37_26 Depth=1
	ldr	w10, [x19, #648]
	and	w11, w9, #0xff
	eor	w11, w11, w10, lsr #24
	ldr	w11, [x22, w11, uxtw #2]
	eor	w10, w11, w10, lsl #8
	str	w10, [x19, #648]
	strb	w21, [x20, x9]
	ldr	x10, [x19, #64]
	strb	w9, [x10, x8]
	ldr	w8, [x19, #108]
	add	w8, w8, #1
	str	w8, [x19, #108]
	str	w23, [x19, #92]
	b	LBB37_25
LBB37_32:                               ;   in Loop: Header=BB37_26 Depth=1
	cmp	w9, #255
	b.hi	LBB37_34
LBB37_33:                               ; %.thread82
                                        ;   in Loop: Header=BB37_26 Depth=1
	mov	x0, x19
	bl	_add_pair_to_block
LBB37_34:                               ;   in Loop: Header=BB37_26 Depth=1
	stp	w23, w21, [x19, #92]
	b	LBB37_25
LBB37_35:
	cmp	w9, #256
	b.hs	LBB37_37
LBB37_36:                               ; %.thread84.peel
	mov	x0, x19
	bl	_add_pair_to_block
LBB37_37:
	mov	w8, #1                          ; =0x1
	str	w22, [x19, #92]
LBB37_38:
	str	w8, [x19, #96]
LBB37_39:
	ldr	x8, [x19]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldr	x8, [x19]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	cbnz	w9, LBB37_41
LBB37_40:                               ; %.peel.next.sink.split
	ldr	w9, [x8, #16]
	add	w9, w9, #1
	str	w9, [x8, #16]
LBB37_41:                               ; %.peel.next.preheader
	mov	w22, #1                         ; =0x1
	b	LBB37_44
LBB37_42:                               ;   in Loop: Header=BB37_44 Depth=1
	add	w8, w10, #1
	str	w8, [x19, #96]
LBB37_43:                               ;   in Loop: Header=BB37_44 Depth=1
	ldr	x8, [x19]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldr	x8, [x19]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldr	x8, [x19]
	ldr	w9, [x8, #12]
	cbz	w9, LBB37_40
LBB37_44:                               ; %.peel.next
                                        ; =>This Inner Loop Header: Depth=1
	ldr	w8, [x19, #16]
	sub	w9, w8, #1
	str	w9, [x19, #16]
	ldp	w8, w10, [x19, #108]
                                        ; kill: def $w8 killed $w8 def $x8
	sxtw	x8, w8
	cmp	w8, w10
	b.ge	LBB37_53
; %bb.45:                               ;   in Loop: Header=BB37_44 Depth=1
	ldr	x10, [x19]
	ldr	w11, [x10, #8]
	cmp	w11, #0
	ccmp	w9, #0, #4, ne
	b.eq	LBB37_53
; %bb.46:                               ;   in Loop: Header=BB37_44 Depth=1
	ldr	x9, [x10]
	ldrb	w23, [x9]
	ldp	w9, w10, [x19, #92]
	cmp	w9, w23
	b.ne	LBB37_48
; %bb.47:                               ;   in Loop: Header=BB37_44 Depth=1
	cmp	w10, #255
	b.ne	LBB37_42
	b	LBB37_51
LBB37_48:                               ;   in Loop: Header=BB37_44 Depth=1
	cmp	w10, #1
	b.ne	LBB37_50
; %bb.49:                               ;   in Loop: Header=BB37_44 Depth=1
	ldr	w10, [x19, #648]
	and	w11, w9, #0xff
	eor	w11, w11, w10, lsr #24
	ldr	w11, [x21, w11, uxtw #2]
	eor	w10, w11, w10, lsl #8
	str	w10, [x19, #648]
	strb	w22, [x20, x9]
	ldr	x10, [x19, #64]
	strb	w9, [x10, x8]
	ldr	w8, [x19, #108]
	add	w8, w8, #1
	str	w8, [x19, #108]
	str	w23, [x19, #92]
	b	LBB37_43
LBB37_50:                               ;   in Loop: Header=BB37_44 Depth=1
	cmp	w9, #255
	b.hi	LBB37_52
LBB37_51:                               ; %.thread84
                                        ;   in Loop: Header=BB37_44 Depth=1
	mov	x0, x19
	bl	_add_pair_to_block
LBB37_52:                               ;   in Loop: Header=BB37_44 Depth=1
	stp	w23, w22, [x19, #92]
	b	LBB37_43
LBB37_53:
	mov	w0, #1                          ; =0x1
LBB37_54:                               ; %.loopexit
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh74, Lloh75
	.loh AdrpLdrGot	Lloh76, Lloh77
	.loh AdrpLdrGot	Lloh78, Lloh79
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function flush_RL
_flush_RL:                              ; @flush_RL
	.cfi_startproc
; %bb.0:
	ldr	w8, [x0, #92]
	cmp	w8, #255
	b.hi	LBB38_2
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	bl	_add_pair_to_block
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
LBB38_2:
	b	_init_RL
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function add_pair_to_block
_add_pair_to_block:                     ; @add_pair_to_block
	.cfi_startproc
; %bb.0:
	ldp	w8, w9, [x0, #92]
                                        ; kill: def $w9 killed $w9 def $x9
	sxtw	x9, w9
	and	w10, w8, #0xff
	bic	w11, w9, w9, asr #31
Lloh80:
	adrp	x12, _BZ2_crc32Table@GOTPAGE
Lloh81:
	ldr	x12, [x12, _BZ2_crc32Table@GOTPAGEOFF]
	cbz	w11, LBB39_2
LBB39_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w13, [x0, #648]
	eor	w14, w10, w13, lsr #24
	ldr	w14, [x12, w14, uxtw #2]
	eor	w13, w14, w13, lsl #8
	str	w13, [x0, #648]
	sub	w11, w11, #1
	cbnz	w11, LBB39_1
LBB39_2:
	add	x10, x0, #128
	mov	w11, #1                         ; =0x1
	strb	w11, [x10, x8]
	cmp	w9, #3
	b.eq	LBB39_7
; %bb.3:
	cmp	w9, #2
	b.eq	LBB39_6
; %bb.4:
	cmp	w9, #1
	b.ne	LBB39_8
; %bb.5:
	ldr	w10, [x0, #108]!
	sub	x9, x0, #44
	b	LBB39_9
LBB39_6:
	ldr	x10, [x0, #64]!
	mov	x9, x0
	ldrsw	x11, [x0, #44]!
	strb	w8, [x10, x11]
	ldr	w10, [x0]
	add	w10, w10, #1
	str	w10, [x0]
	b	LBB39_9
LBB39_7:
	ldr	x9, [x0, #64]!
	mov	x11, x0
	ldrsw	x10, [x11, #44]!
	strb	w8, [x9, x10]
	ldrsw	x9, [x11]
	add	x9, x9, #1
	str	w9, [x11]
	ldr	x10, [x0]
	strb	w8, [x10, x9]
	ldr	w9, [x11]
	add	w10, w9, #1
	str	w10, [x11]
	mov	x9, x0
	mov	x0, x11
	b	LBB39_9
LBB39_8:
	add	x9, x9, x10
	mov	w10, #1                         ; =0x1
	sturb	w10, [x9, #-4]
	ldrsw	x10, [x0, #108]!
	mov	x9, x0
	ldr	x11, [x9, #-44]!
	strb	w8, [x11, x10]
	ldrsw	x10, [x0]
	add	x10, x10, #1
	str	w10, [x0]
	ldr	x11, [x9]
	strb	w8, [x11, x10]
	ldrsw	x10, [x0]
	add	x10, x10, #1
	str	w10, [x0]
	ldr	x11, [x9]
	strb	w8, [x11, x10]
	ldrsw	x10, [x0]
	add	x10, x10, #1
	str	w10, [x0]
	ldr	x11, [x9]
	strb	w8, [x11, x10]
	ldr	w8, [x0]
	add	w10, w8, #1
	str	w10, [x0]
	ldurb	w8, [x0, #-12]
	sub	w8, w8, #4
LBB39_9:
	ldr	x9, [x9]
	strb	w8, [x9, w10, sxtw]
	ldr	w8, [x0]
	add	w8, w8, #1
	str	w8, [x0]
	ret
	.loh AdrpLdrGot	Lloh80, Lloh81
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\n\nbzip2/libbzip2: internal error number %d.\nThis is a bug in bzip2/libbzip2, %s.\nPlease report it to me at: jseward@bzip.org.  If this happened\nwhen you were using some program which uses libbzip2 as a\ncomponent, you should also report this bug to the author(s)\nof that program.  Please make an effort to report this bug;\ntimely and accurate bug reports eventually lead to higher\nquality software.  Thanks.  Julian Seward, 15 February 2005.\n\n"

l_.str.1:                               ; @.str.1
	.asciz	"\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"

l_.str.2:                               ; @.str.2
	.asciz	" {0x%08x, 0x%08x}"

l_.str.4:                               ; @.str.4
	.asciz	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"

l_.str.5:                               ; @.str.5
	.asciz	"1.0.4, 20-Dec-2006"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @bzerrorstrings
_bzerrorstrings:
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20
	.quad	l_.str.20
	.quad	l_.str.20
	.quad	l_.str.20
	.quad	l_.str.20
	.quad	l_.str.20

	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"w"

l_.str.7:                               ; @.str.7
	.asciz	"r"

l_.str.8:                               ; @.str.8
	.asciz	"b"

l_.str.10:                              ; @.str.10
	.asciz	"OK"

l_.str.11:                              ; @.str.11
	.asciz	"SEQUENCE_ERROR"

l_.str.12:                              ; @.str.12
	.asciz	"PARAM_ERROR"

l_.str.13:                              ; @.str.13
	.asciz	"MEM_ERROR"

l_.str.14:                              ; @.str.14
	.asciz	"DATA_ERROR"

l_.str.15:                              ; @.str.15
	.asciz	"DATA_ERROR_MAGIC"

l_.str.16:                              ; @.str.16
	.asciz	"IO_ERROR"

l_.str.17:                              ; @.str.17
	.asciz	"UNEXPECTED_EOF"

l_.str.18:                              ; @.str.18
	.asciz	"OUTBUFF_FULL"

l_.str.19:                              ; @.str.19
	.asciz	"CONFIG_ERROR"

l_.str.20:                              ; @.str.20
	.asciz	"???"

.subsections_via_symbols
