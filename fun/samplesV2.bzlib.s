	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_BZ2_bz__AssertH__fail          ; -- Begin function BZ2_bz__AssertH__fail
	.p2align	2
_BZ2_bz__AssertH__fail:                 ; @BZ2_bz__AssertH__fail
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	stur	w0, [x29, #-20]
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x19, [x8]
	ldur	w20, [x29, #-20]
	bl	_BZ2_bzlibVersion
	str	x0, [sp, #8]
	str	x20, [sp]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x19
	bl	_fprintf
	ldur	w8, [x29, #-20]
	cmp	w8, #1007
	b.ne	LBB0_2
; %bb.1:
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_fprintf
LBB0_2:
	mov	w0, #3                          ; =0x3
	bl	_exit
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzlibVersion               ; -- Begin function BZ2_bzlibVersion
	.p2align	2
_BZ2_bzlibVersion:                      ; @BZ2_bzlibVersion
	.cfi_startproc
; %bb.0:
	adrp	x8, l_.str.5@PAGE
	add	x0, x8, l_.str.5@PAGEOFF
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompressInit             ; -- Begin function BZ2_bzCompressInit
	.p2align	2
_BZ2_bzCompressInit:                    ; @BZ2_bzCompressInit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	bl	_bz_config_ok
	cbnz	w0, LBB2_2
; %bb.1:
	mov	w8, #-9                         ; =0xfffffff7
	stur	w8, [x29, #-4]
	b	LBB2_29
LBB2_2:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB2_7
; %bb.3:
	ldur	w8, [x29, #-20]
	cmp	w8, #1
	b.lt	LBB2_7
; %bb.4:
	ldur	w8, [x29, #-20]
	cmp	w8, #9
	b.gt	LBB2_7
; %bb.5:
	ldr	w8, [sp, #20]
	tbnz	w8, #31, LBB2_7
; %bb.6:
	ldr	w8, [sp, #20]
	cmp	w8, #250
	b.le	LBB2_8
LBB2_7:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB2_29
LBB2_8:
	ldr	w8, [sp, #20]
	cbnz	w8, LBB2_10
; %bb.9:
	mov	w8, #30                         ; =0x1e
	str	w8, [sp, #20]
LBB2_10:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	cbnz	x8, LBB2_12
; %bb.11:
	ldur	x8, [x29, #-16]
	adrp	x9, _default_bzalloc@PAGE
	add	x9, x9, _default_bzalloc@PAGEOFF
	str	x9, [x8, #56]
LBB2_12:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	cbnz	x8, LBB2_14
; %bb.13:
	ldur	x8, [x29, #-16]
	adrp	x9, _default_bzfree@PAGE
	add	x9, x9, _default_bzfree@PAGEOFF
	str	x9, [x8, #64]
LBB2_14:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	mov	w1, #55768                      ; =0xd9d8
	mov	w2, #1                          ; =0x1
	blr	x8
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB2_16
; %bb.15:
	mov	w8, #-3                         ; =0xfffffffd
	stur	w8, [x29, #-4]
	b	LBB2_29
LBB2_16:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #40]
	ldur	w8, [x29, #-20]
	mov	w9, #34464                      ; =0x86a0
	movk	w9, #1, lsl #16
	mul	w8, w9, w8
	str	w8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldrsw	x9, [sp, #16]
	lsl	x1, x9, #2
                                        ; kill: def $w1 killed $w1 killed $x1
	mov	w2, #1                          ; =0x1
	blr	x8
	ldr	x8, [sp, #8]
	str	x0, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldr	w9, [sp, #16]
	add	w9, w9, #34
	sbfiz	x1, x9, #2, #32
                                        ; kill: def $w1 killed $w1 killed $x1
	mov	w2, #1                          ; =0x1
	blr	x8
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	mov	w1, #262148                     ; =0x40004
	mov	w2, #1                          ; =0x1
	blr	x8
	ldr	x8, [sp, #8]
	str	x0, [x8, #40]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, LBB2_19
; %bb.17:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	cbz	x8, LBB2_19
; %bb.18:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	cbnz	x8, LBB2_28
LBB2_19:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, LBB2_21
; %bb.20:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #24]
	blr	x8
LBB2_21:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	cbz	x8, LBB2_23
; %bb.22:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #32]
	blr	x8
LBB2_23:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	cbz	x8, LBB2_25
; %bb.24:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #40]
	blr	x8
LBB2_25:
	ldr	x8, [sp, #8]
	cbz	x8, LBB2_27
; %bb.26:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldr	x1, [sp, #8]
	blr	x8
LBB2_27:
	mov	w8, #-3                         ; =0xfffffffd
	stur	w8, [x29, #-4]
	b	LBB2_29
LBB2_28:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #660]
	ldr	x8, [sp, #8]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #12]
	ldr	x8, [sp, #8]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #652]
	ldur	w8, [x29, #-20]
	ldr	x9, [sp, #8]
	str	w8, [x9, #664]
	ldur	w8, [x29, #-20]
	mov	w9, #34464                      ; =0x86a0
	movk	w9, #1, lsl #16
	mov	w10, #-19                       ; =0xffffffed
	madd	w8, w9, w8, w10
	ldr	x9, [sp, #8]
	str	w8, [x9, #112]
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #8]
	str	w8, [x9, #656]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #8]
	str	w8, [x9, #88]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	str	x8, [x9, #64]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #72]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #80]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #56]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #48]
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #12]
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #16]
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #36]
	ldur	x8, [x29, #-16]
	str	wzr, [x8, #40]
	ldr	x0, [sp, #8]
	bl	_init_RL
	ldr	x0, [sp, #8]
	bl	_prepare_new_block
	stur	wzr, [x29, #-4]
LBB2_29:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function bz_config_ok
_bz_config_ok:                          ; @bz_config_ok
	.cfi_startproc
; %bb.0:
	mov	w0, #1                          ; =0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function default_bzalloc
_default_bzalloc:                       ; @default_bzalloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	sxtw	x0, w8
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function default_bzfree
_default_bzfree:                        ; @default_bzfree
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	cbz	x8, LBB5_2
; %bb.1:
	ldr	x0, [sp]
	bl	_free
LBB5_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function init_RL
_init_RL:                               ; @init_RL
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	w9, #256                        ; =0x100
	str	w9, [x8, #92]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #96]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function prepare_new_block
_prepare_new_block:                     ; @prepare_new_block
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #108]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #116]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #120]
	ldr	x8, [sp, #8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #648]
	str	wzr, [sp, #4]
LBB7_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cmp	w8, #256
	b.ge	LBB7_4
; %bb.2:                                ;   in Loop: Header=BB7_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #128
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9
	strb	wzr, [x8]
; %bb.3:                                ;   in Loop: Header=BB7_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB7_1
LBB7_4:
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #660]
	add	w9, w9, #1
	str	w9, [x8, #660]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompress                 ; -- Begin function BZ2_bzCompress
	.p2align	2
_BZ2_bzCompress:                        ; @BZ2_bzCompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB8_2
; %bb.1:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #48]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, LBB8_4
; %bb.3:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_4:
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	cmp	x8, x9
	b.eq	LBB8_6
; %bb.5:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_6:
	b	LBB8_7
LBB8_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	subs	w9, w8, #1
	b.eq	LBB8_11
	b	LBB8_8
LBB8_8:                                 ;   in Loop: Header=BB8_7 Depth=1
	subs	w9, w8, #2
	b.eq	LBB8_12
	b	LBB8_9
LBB8_9:
	subs	w9, w8, #3
	b.eq	LBB8_20
	b	LBB8_10
LBB8_10:
	subs	w8, w8, #4
	b.eq	LBB8_29
	b	LBB8_40
LBB8_11:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_12:                                ;   in Loop: Header=BB8_7 Depth=1
	ldr	w8, [sp, #12]
	cbnz	w8, LBB8_14
; %bb.13:
	ldr	x0, [sp, #16]
	bl	_handle_compress
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	cmp	w8, #0
	cset	w8, ne
	mov	w9, #1                          ; =0x1
	mov	w10, #-2                        ; =0xfffffffe
	tst	w8, #0x1
	csel	w8, w9, w10, ne
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_14:                                ;   in Loop: Header=BB8_7 Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.ne	LBB8_17
; %bb.15:                               ;   in Loop: Header=BB8_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp]
	str	w8, [x9, #16]
	ldr	x8, [sp]
	mov	w9, #3                          ; =0x3
	str	w9, [x8, #8]
LBB8_16:                                ; %.backedge
                                        ;   in Loop: Header=BB8_7 Depth=1
	b	LBB8_7
LBB8_17:                                ;   in Loop: Header=BB8_7 Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #2
	b.ne	LBB8_19
; %bb.18:                               ;   in Loop: Header=BB8_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp]
	str	w8, [x9, #16]
	ldr	x8, [sp]
	mov	w9, #4                          ; =0x4
	str	w9, [x8, #8]
	b	LBB8_16
LBB8_19:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_20:
	ldr	w8, [sp, #12]
	cmp	w8, #1
	b.eq	LBB8_22
; %bb.21:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_22:
	ldr	x8, [sp]
	ldr	w8, [x8, #16]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	w9, [x9, #8]
	cmp	w8, w9
	b.eq	LBB8_24
; %bb.23:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_24:
	ldr	x0, [sp, #16]
	bl	_handle_compress
	strb	w0, [sp, #11]
	ldr	x8, [sp]
	ldr	w8, [x8, #16]
	cmp	w8, #0
	b.hi	LBB8_27
; %bb.25:
	ldr	x0, [sp]
	bl	_isempty_RL
	uxtb	w8, w0
	cbz	w8, LBB8_27
; %bb.26:
	ldr	x8, [sp]
	ldr	w8, [x8, #120]
	ldr	x9, [sp]
	ldr	w9, [x9, #116]
	cmp	w8, w9
	b.ge	LBB8_28
LBB8_27:
	mov	w8, #2                          ; =0x2
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_28:
	ldr	x8, [sp]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #8]
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_29:
	ldr	w8, [sp, #12]
	cmp	w8, #2
	b.eq	LBB8_31
; %bb.30:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_31:
	ldr	x8, [sp]
	ldr	w8, [x8, #16]
	ldr	x9, [sp]
	ldr	x9, [x9]
	ldr	w9, [x9, #8]
	cmp	w8, w9
	b.eq	LBB8_33
; %bb.32:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_33:
	ldr	x0, [sp, #16]
	bl	_handle_compress
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	uxtb	w8, w8
	cbnz	w8, LBB8_35
; %bb.34:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_35:
	ldr	x8, [sp]
	ldr	w8, [x8, #16]
	cmp	w8, #0
	b.hi	LBB8_38
; %bb.36:
	ldr	x0, [sp]
	bl	_isempty_RL
	uxtb	w8, w0
	cbz	w8, LBB8_38
; %bb.37:
	ldr	x8, [sp]
	ldr	w8, [x8, #120]
	ldr	x9, [sp]
	ldr	w9, [x9, #116]
	cmp	w8, w9
	b.ge	LBB8_39
LBB8_38:
	mov	w8, #3                          ; =0x3
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_39:
	ldr	x8, [sp]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #8]
	mov	w8, #4                          ; =0x4
	stur	w8, [x29, #-4]
	b	LBB8_41
LBB8_40:
	stur	wzr, [x29, #-4]
LBB8_41:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function handle_compress
_handle_compress:                       ; @handle_compress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	sturb	wzr, [x29, #-10]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #48]
	str	x8, [sp, #8]
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #12]
	cmp	w8, #1
	b.ne	LBB9_13
; %bb.2:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_copy_output_until_stop
	uxtb	w8, w0
	ldurb	w9, [x29, #-10]
	orr	w8, w9, w8
	sturb	w8, [x29, #-10]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #120]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #116]
	cmp	w8, w9
	b.ge	LBB9_4
; %bb.3:
	b	LBB9_25
LBB9_4:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cmp	w8, #4
	b.ne	LBB9_8
; %bb.5:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB9_8
; %bb.6:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_isempty_RL
	uxtb	w8, w0
	cbz	w8, LBB9_8
; %bb.7:
	b	LBB9_25
LBB9_8:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_prepare_new_block
	ldr	x8, [sp, #8]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #12]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cmp	w8, #3
	b.ne	LBB9_12
; %bb.9:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB9_12
; %bb.10:                               ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_isempty_RL
	uxtb	w8, w0
	cbz	w8, LBB9_12
; %bb.11:
	b	LBB9_25
LBB9_12:                                ;   in Loop: Header=BB9_1 Depth=1
	b	LBB9_13
LBB9_13:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #12]
	cmp	w8, #2
	b.ne	LBB9_24
; %bb.14:                               ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_copy_input_until_stop
	uxtb	w8, w0
	ldurb	w9, [x29, #-9]
	orr	w8, w9, w8
	sturb	w8, [x29, #-9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cmp	w8, #2
	b.eq	LBB9_17
; %bb.15:                               ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB9_17
; %bb.16:                               ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_flush_RL
	ldr	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	cmp	w8, #4
	cset	w8, eq
	and	w8, w8, #0x1
	uxtb	w1, w8
	bl	_BZ2_compressBlock
	ldr	x8, [sp, #8]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #12]
	b	LBB9_23
LBB9_17:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #108]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #112]
	cmp	w8, w9
	b.lt	LBB9_19
; %bb.18:                               ;   in Loop: Header=BB9_1 Depth=1
	ldr	x0, [sp, #8]
	uxtb	w1, wzr
	bl	_BZ2_compressBlock
	ldr	x8, [sp, #8]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #12]
	b	LBB9_22
LBB9_19:                                ;   in Loop: Header=BB9_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	cbnz	w8, LBB9_21
; %bb.20:
	b	LBB9_25
LBB9_21:                                ;   in Loop: Header=BB9_1 Depth=1
	b	LBB9_22
LBB9_22:                                ;   in Loop: Header=BB9_1 Depth=1
	b	LBB9_23
LBB9_23:                                ;   in Loop: Header=BB9_1 Depth=1
	b	LBB9_24
LBB9_24:                                ;   in Loop: Header=BB9_1 Depth=1
	b	LBB9_1
LBB9_25:
	ldurb	w9, [x29, #-9]
	mov	w8, #1                          ; =0x1
	cbnz	w9, LBB9_27
; %bb.26:
	ldurb	w8, [x29, #-10]
	cmp	w8, #0
	cset	w8, ne
LBB9_27:
	and	w8, w8, #0x1
	uxtb	w0, w8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function isempty_RL
_isempty_RL:                            ; @isempty_RL
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w8, [x8, #92]
	cmp	w8, #256
	b.hs	LBB10_3
; %bb.1:
	ldr	x8, [sp]
	ldr	w8, [x8, #96]
	cmp	w8, #0
	b.le	LBB10_3
; %bb.2:
	strb	wzr, [sp, #15]
	b	LBB10_4
LBB10_3:
	mov	w8, #1                          ; =0x1
	strb	w8, [sp, #15]
LBB10_4:
	ldrb	w8, [sp, #15]
	uxtb	w0, w8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzCompressEnd              ; -- Begin function BZ2_bzCompressEnd
	.p2align	2
_BZ2_bzCompressEnd:                     ; @BZ2_bzCompressEnd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB11_2
; %bb.1:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB11_13
LBB11_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #48]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB11_4
; %bb.3:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB11_13
LBB11_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	cmp	x8, x9
	b.eq	LBB11_6
; %bb.5:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB11_13
LBB11_6:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	cbz	x8, LBB11_8
; %bb.7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #24]
	blr	x8
LBB11_8:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	cbz	x8, LBB11_10
; %bb.9:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #32]
	blr	x8
LBB11_10:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	cbz	x8, LBB11_12
; %bb.11:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #40]
	blr	x8
LBB11_12:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #16]
	ldr	x1, [x9, #48]
	blr	x8
	ldr	x8, [sp, #16]
	str	xzr, [x8, #48]
	stur	wzr, [x29, #-4]
LBB11_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompressInit           ; -- Begin function BZ2_bzDecompressInit
	.p2align	2
_BZ2_bzDecompressInit:                  ; @BZ2_bzDecompressInit
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	str	w2, [sp, #8]
	bl	_bz_config_ok
	cbnz	w0, LBB12_2
; %bb.1:
	mov	w8, #-9                         ; =0xfffffff7
	stur	w8, [x29, #-4]
	b	LBB12_17
LBB12_2:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB12_4
; %bb.3:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB12_17
LBB12_4:
	ldr	w8, [sp, #8]
	cbz	w8, LBB12_7
; %bb.5:
	ldr	w8, [sp, #8]
	cmp	w8, #1
	b.eq	LBB12_7
; %bb.6:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB12_17
LBB12_7:
	ldr	w8, [sp, #12]
	tbnz	w8, #31, LBB12_9
; %bb.8:
	ldr	w8, [sp, #12]
	cmp	w8, #4
	b.le	LBB12_10
LBB12_9:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB12_17
LBB12_10:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	cbnz	x8, LBB12_12
; %bb.11:
	ldr	x8, [sp, #16]
	adrp	x9, _default_bzalloc@PAGE
	add	x9, x9, _default_bzalloc@PAGEOFF
	str	x9, [x8, #56]
LBB12_12:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	cbnz	x8, LBB12_14
; %bb.13:
	ldr	x8, [sp, #16]
	adrp	x9, _default_bzfree@PAGE
	add	x9, x9, _default_bzfree@PAGEOFF
	str	x9, [x8, #64]
LBB12_14:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #56]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	mov	w1, #64144                      ; =0xfa90
	mov	w2, #1                          ; =0x1
	blr	x8
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, LBB12_16
; %bb.15:
	mov	w8, #-3                         ; =0xfffffffd
	stur	w8, [x29, #-4]
	b	LBB12_17
LBB12_16:
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	str	x8, [x9, #48]
	ldr	x8, [sp]
	mov	w9, #10                         ; =0xa
	str	w9, [x8, #8]
	ldr	x8, [sp]
	str	wzr, [x8, #36]
	ldr	x8, [sp]
	str	wzr, [x8, #32]
	ldr	x8, [sp]
	str	wzr, [x8, #3188]
	ldr	x8, [sp, #16]
	str	wzr, [x8, #12]
	ldr	x8, [sp, #16]
	str	wzr, [x8, #16]
	ldr	x8, [sp, #16]
	str	wzr, [x8, #36]
	ldr	x8, [sp, #16]
	str	wzr, [x8, #40]
	ldr	w8, [sp, #8]
	ldr	x9, [sp]
	strb	w8, [x9, #44]
	ldr	x8, [sp]
	str	xzr, [x8, #3168]
	ldr	x8, [sp]
	str	xzr, [x8, #3160]
	ldr	x8, [sp]
	str	xzr, [x8, #3152]
	ldr	x8, [sp]
	str	wzr, [x8, #48]
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #52]
	stur	wzr, [x29, #-4]
LBB12_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_indexIntoF                 ; -- Begin function BZ2_indexIntoF
	.p2align	2
_BZ2_indexIntoF:                        ; @BZ2_indexIntoF
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	mov	w8, #256                        ; =0x100
	str	w8, [sp, #8]
LBB13_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	asr	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mov	x11, #4                         ; =0x4
	madd	x9, x10, x11, x9
	ldr	w9, [x9]
	cmp	w8, w9
	b.lt	LBB13_3
; %bb.2:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	LBB13_4
LBB13_3:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
LBB13_4:                                ;   in Loop: Header=BB13_1 Depth=1
	b	LBB13_5
LBB13_5:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	sub	w8, w8, w9
	cmp	w8, #1
	b.ne	LBB13_1
; %bb.6:
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompress               ; -- Begin function BZ2_bzDecompress
	.p2align	2
_BZ2_bzDecompress:                      ; @BZ2_bzDecompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB14_2
; %bb.1:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	cbnz	x8, LBB14_4
; %bb.3:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_4:
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	cmp	x8, x9
	b.eq	LBB14_6
; %bb.5:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_6:
	b	LBB14_7
LBB14_7:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #8]
	cmp	w8, #1
	b.ne	LBB14_9
; %bb.8:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_9:                                ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #8]
	cmp	w8, #2
	b.ne	LBB14_26
; %bb.10:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldrb	w8, [x8, #44]
	uxtb	w8, w8
	cbz	w8, LBB14_12
; %bb.11:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x0, [sp, #32]
	bl	_unRLE_obuf_to_output_SMALL
	sturb	w0, [x29, #-17]
	b	LBB14_13
LBB14_12:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x0, [sp, #32]
	bl	_unRLE_obuf_to_output_FAST
	sturb	w0, [x29, #-17]
LBB14_13:                               ;   in Loop: Header=BB14_7 Depth=1
	ldurb	w8, [x29, #-17]
	uxtb	w8, w8
	cbz	w8, LBB14_15
; %bb.14:
	mov	w8, #-4                         ; =0xfffffffc
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_15:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #32]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB14_24
; %bb.16:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB14_24
; %bb.17:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3184]
	mov	w9, #-1                         ; =0xffffffff
	eor	w8, w8, w9
	ldr	x9, [sp, #32]
	str	w8, [x9, #3184]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #52]
	cmp	w8, #3
	b.lt	LBB14_19
; %bb.18:                               ;   in Loop: Header=BB14_7 Depth=1
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3176]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #3184]
	str	x9, [sp, #8]
	str	x8, [sp]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fprintf
LBB14_19:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #52]
	cmp	w8, #2
	b.lt	LBB14_21
; %bb.20:                               ;   in Loop: Header=BB14_7 Depth=1
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_fprintf
LBB14_21:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3184]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #3176]
	cmp	w8, w9
	b.eq	LBB14_23
; %bb.22:
	mov	w8, #-4                         ; =0xfffffffc
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_23:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3188]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #3188]
	lsr	w9, w9, #31
	orr	w8, w9, w8, lsl #1
	ldr	x9, [sp, #32]
	str	w8, [x9, #3188]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3184]
	ldr	x9, [sp, #32]
	ldr	w10, [x9, #3188]
	eor	w8, w10, w8
	str	w8, [x9, #3188]
	ldr	x8, [sp, #32]
	mov	w9, #14                         ; =0xe
	str	w9, [x8, #8]
	b	LBB14_25
LBB14_24:
	stur	wzr, [x29, #-4]
	b	LBB14_37
LBB14_25:                               ;   in Loop: Header=BB14_7 Depth=1
	b	LBB14_26
LBB14_26:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #8]
	cmp	w8, #10
	b.lt	LBB14_36
; %bb.27:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x0, [sp, #32]
	bl	_BZ2_decompress
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	cmp	w8, #4
	b.ne	LBB14_33
; %bb.28:
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #52]
	cmp	w8, #3
	b.lt	LBB14_30
; %bb.29:
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3180]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #3188]
	str	x9, [sp, #8]
	str	x8, [sp]
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_fprintf
LBB14_30:
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #3188]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #3180]
	cmp	w8, w9
	b.eq	LBB14_32
; %bb.31:
	mov	w8, #-4                         ; =0xfffffffc
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_32:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_33:                               ;   in Loop: Header=BB14_7 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #8]
	cmp	w8, #2
	b.eq	LBB14_35
; %bb.34:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	LBB14_37
LBB14_35:                               ;   in Loop: Header=BB14_7 Depth=1
	b	LBB14_36
LBB14_36:                               ;   in Loop: Header=BB14_7 Depth=1
	b	LBB14_7
LBB14_37:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function unRLE_obuf_to_output_SMALL
_unRLE_obuf_to_output_SMALL:            ; @unRLE_obuf_to_output_SMALL
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8, #20]
	uxtb	w8, w8
	cbz	w8, LBB15_48
; %bb.1:
	b	LBB15_2
LBB15_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_3 Depth 2
	b	LBB15_3
LBB15_3:                                ;   Parent Loop BB15_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #32]
	cbnz	w8, LBB15_5
; %bb.4:
	sturb	wzr, [x29, #-1]
	b	LBB15_75
LBB15_5:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB15_7
; %bb.6:                                ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_10
LBB15_7:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x8, [sp, #16]
	ldrb	w8, [x8, #12]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldr	x9, [x9, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #3184]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #3184]
	lsr	w9, w9, #24
	ldr	x10, [sp, #16]
	ldrb	w10, [x10, #12]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldr	x9, [sp, #16]
	str	w8, [x9, #3184]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #16]
	sub	w9, w9, #1
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	cbnz	w8, LBB15_9
; %bb.8:                                ;   in Loop: Header=BB15_3 Depth=2
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
LBB15_9:                                ;   in Loop: Header=BB15_3 Depth=2
	b	LBB15_3
LBB15_10:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_12
; %bb.11:
	sturb	wzr, [x29, #-1]
	b	LBB15_75
LBB15_12:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.le	LBB15_14
; %bb.13:
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-1]
	b	LBB15_75
LBB15_14:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #64]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #12]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB15_18
; %bb.15:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB15_17
; %bb.16:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	str	wzr, [x8, #28]
LBB15_17:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_18
LBB15_18:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #15]
	eor	w8, w9, w8
	strb	w8, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_21
; %bb.19:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_20
LBB15_20:                               ; %.backedge
                                        ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_2
LBB15_21:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_23
; %bb.22:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_20
LBB15_23:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB15_27
; %bb.24:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB15_26
; %bb.25:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	str	wzr, [x8, #28]
LBB15_26:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_27
LBB15_27:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #15]
	eor	w8, w9, w8
	strb	w8, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_29
; %bb.28:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_20
LBB15_29:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_31
; %bb.30:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_20
LBB15_31:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #3                          ; =0x3
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB15_35
; %bb.32:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB15_34
; %bb.33:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	str	wzr, [x8, #28]
LBB15_34:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_35
LBB15_35:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #15]
	eor	w8, w9, w8
	strb	w8, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_37
; %bb.36:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_20
LBB15_37:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_39
; %bb.38:                               ;   in Loop: Header=BB15_2 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_20
LBB15_39:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB15_43
; %bb.40:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB15_42
; %bb.41:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	str	wzr, [x8, #28]
LBB15_42:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_43
LBB15_43:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #15]
	eor	w8, w9, w8
	strb	w8, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldrb	w8, [sp, #15]
	add	w8, w8, #4
	ldr	x9, [sp, #16]
	str	w8, [x9, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	ldr	x8, [sp, #16]
	str	w0, [x8, #64]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB15_47
; %bb.44:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB15_46
; %bb.45:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	str	wzr, [x8, #28]
LBB15_46:                               ;   in Loop: Header=BB15_2 Depth=1
	b	LBB15_47
LBB15_47:                               ;   in Loop: Header=BB15_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldr	x9, [sp, #16]
	ldr	w10, [x9, #64]
	eor	w8, w10, w8
	str	w8, [x9, #64]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	b	LBB15_20
LBB15_48:
	b	LBB15_49
LBB15_49:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB15_50 Depth 2
	b	LBB15_50
LBB15_50:                               ;   Parent Loop BB15_49 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #32]
	cbnz	w8, LBB15_52
; %bb.51:
	sturb	wzr, [x29, #-1]
	b	LBB15_75
LBB15_52:                               ;   in Loop: Header=BB15_50 Depth=2
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB15_54
; %bb.53:                               ;   in Loop: Header=BB15_49 Depth=1
	b	LBB15_57
LBB15_54:                               ;   in Loop: Header=BB15_50 Depth=2
	ldr	x8, [sp, #16]
	ldrb	w8, [x8, #12]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldr	x9, [x9, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #3184]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #3184]
	lsr	w9, w9, #24
	ldr	x10, [sp, #16]
	ldrb	w10, [x10, #12]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldr	x9, [sp, #16]
	str	w8, [x9, #3184]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #16]
	sub	w9, w9, #1
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	cbnz	w8, LBB15_56
; %bb.55:                               ;   in Loop: Header=BB15_50 Depth=2
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
LBB15_56:                               ;   in Loop: Header=BB15_50 Depth=2
	b	LBB15_50
LBB15_57:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_59
; %bb.58:
	sturb	wzr, [x29, #-1]
	b	LBB15_75
LBB15_59:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.le	LBB15_61
; %bb.60:
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-1]
	b	LBB15_75
LBB15_61:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #64]
	ldr	x9, [sp, #16]
	strb	w8, [x9, #12]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_64
; %bb.62:                               ;   in Loop: Header=BB15_49 Depth=1
	b	LBB15_63
LBB15_63:                               ; %.backedge1
                                        ;   in Loop: Header=BB15_49 Depth=1
	b	LBB15_49
LBB15_64:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_66
; %bb.65:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_63
LBB15_66:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_68
; %bb.67:                               ;   in Loop: Header=BB15_49 Depth=1
	b	LBB15_63
LBB15_68:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_70
; %bb.69:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_63
LBB15_70:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	mov	w9, #3                          ; =0x3
	str	w9, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #16]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB15_72
; %bb.71:                               ;   in Loop: Header=BB15_49 Depth=1
	b	LBB15_63
LBB15_72:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB15_74
; %bb.73:                               ;   in Loop: Header=BB15_49 Depth=1
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #16]
	str	w8, [x9, #64]
	b	LBB15_63
LBB15_74:                               ;   in Loop: Header=BB15_49 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	strb	w0, [sp, #15]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldrb	w8, [sp, #15]
	add	w8, w8, #4
	ldr	x9, [sp, #16]
	str	w8, [x9, #16]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #60]
	ldr	x8, [sp, #16]
	add	x1, x8, #1096
	bl	_BZ2_indexIntoF
	ldr	x8, [sp, #16]
	str	w0, [x8, #64]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #3160]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #60]
	mov	x10, #2                         ; =0x2
	madd	x8, x9, x10, x8
	ldrh	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #3168]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	lsr	w10, w10, #1
	ubfx	x10, x10, #0, #32
	add	x9, x9, x10
	ldrb	w9, [x9]
	ldr	x10, [sp, #16]
	ldr	w10, [x10, #60]
	mov	w11, #4                         ; =0x4
	and	w10, w11, w10, lsl #2
	lsr	w9, w9, w10
	and	w9, w9, #0xf
	orr	w8, w8, w9, lsl #16
	ldr	x9, [sp, #16]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	b	LBB15_63
LBB15_75:
	ldurb	w8, [x29, #-1]
	uxtb	w0, w8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function unRLE_obuf_to_output_FAST
_unRLE_obuf_to_output_FAST:             ; @unRLE_obuf_to_output_FAST
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	ldrb	w8, [x8, #20]
	uxtb	w8, w8
	cbz	w8, LBB16_48
; %bb.1:
	b	LBB16_2
LBB16_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_3 Depth 2
	b	LBB16_3
LBB16_3:                                ;   Parent Loop BB16_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w8, [x8, #32]
	cbnz	w8, LBB16_5
; %bb.4:
	strb	wzr, [sp, #79]
	b	LBB16_82
LBB16_5:                                ;   in Loop: Header=BB16_3 Depth=2
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB16_7
; %bb.6:                                ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_10
LBB16_7:                                ;   in Loop: Header=BB16_3 Depth=2
	ldr	x8, [sp, #64]
	ldrb	w8, [x8, #12]
	ldr	x9, [sp, #64]
	ldr	x9, [x9]
	ldr	x9, [x9, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #3184]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #3184]
	lsr	w9, w9, #24
	ldr	x10, [sp, #64]
	ldrb	w10, [x10, #12]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldr	x9, [sp, #64]
	str	w8, [x9, #3184]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #16]
	sub	w9, w9, #1
	str	w9, [x8, #16]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	cbnz	w8, LBB16_9
; %bb.8:                                ;   in Loop: Header=BB16_3 Depth=2
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
LBB16_9:                                ;   in Loop: Header=BB16_3 Depth=2
	b	LBB16_3
LBB16_10:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #64]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB16_12
; %bb.11:
	strb	wzr, [sp, #79]
	b	LBB16_82
LBB16_12:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #64]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.le	LBB16_14
; %bb.13:
	mov	w8, #1                          ; =0x1
	strb	w8, [sp, #79]
	b	LBB16_82
LBB16_14:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #16]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #64]
	ldr	x9, [sp, #64]
	strb	w8, [x9, #12]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #60]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #60]
	lsr	w9, w9, #8
	str	w9, [x8, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB16_18
; %bb.15:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #24]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB16_17
; %bb.16:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	str	wzr, [x8, #28]
LBB16_17:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_18
LBB16_18:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #63]
	eor	w8, w9, w8
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #64]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB16_21
; %bb.19:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_20
LBB16_20:                               ; %.backedge
                                        ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_2
LBB16_21:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB16_23
; %bb.22:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	str	w8, [x9, #64]
	b	LBB16_20
LBB16_23:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	mov	w9, #2                          ; =0x2
	str	w9, [x8, #16]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #60]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #60]
	lsr	w9, w9, #8
	str	w9, [x8, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB16_27
; %bb.24:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #24]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB16_26
; %bb.25:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	str	wzr, [x8, #28]
LBB16_26:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_27
LBB16_27:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #63]
	eor	w8, w9, w8
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #64]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB16_29
; %bb.28:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_20
LBB16_29:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB16_31
; %bb.30:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	str	w8, [x9, #64]
	b	LBB16_20
LBB16_31:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	mov	w9, #3                          ; =0x3
	str	w9, [x8, #16]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #60]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #60]
	lsr	w9, w9, #8
	str	w9, [x8, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB16_35
; %bb.32:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #24]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB16_34
; %bb.33:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	str	wzr, [x8, #28]
LBB16_34:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_35
LBB16_35:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #63]
	eor	w8, w9, w8
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	ldr	x9, [sp, #64]
	mov	x10, #64080                     ; =0xfa50
	add	x9, x9, x10
	ldr	w9, [x9]
	add	w9, w9, #1
	cmp	w8, w9
	b.ne	LBB16_37
; %bb.36:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_20
LBB16_37:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #64]
	cmp	w8, w9
	b.eq	LBB16_39
; %bb.38:                               ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w8, [sp, #63]
	ldr	x9, [sp, #64]
	str	w8, [x9, #64]
	b	LBB16_20
LBB16_39:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #60]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #60]
	lsr	w9, w9, #8
	str	w9, [x8, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB16_43
; %bb.40:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #24]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB16_42
; %bb.41:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	str	wzr, [x8, #28]
LBB16_42:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_43
LBB16_43:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldrb	w9, [sp, #63]
	eor	w8, w9, w8
	strb	w8, [sp, #63]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	ldrb	w8, [sp, #63]
	add	w8, w8, #4
	ldr	x9, [sp, #64]
	str	w8, [x9, #16]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	ldr	x9, [sp, #64]
	ldr	w9, [x9, #60]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	and	w8, w8, #0xff
	uxtb	w8, w8
	ldr	x9, [sp, #64]
	str	w8, [x9, #64]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #60]
	lsr	w9, w9, #8
	str	w9, [x8, #60]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cbnz	w8, LBB16_47
; %bb.44:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x8, [x8, #28]
	adrp	x9, _BZ2_rNums@GOTPAGE
	ldr	x9, [x9, _BZ2_rNums@GOTPAGEOFF]
	mov	x10, #4                         ; =0x4
	madd	x8, x8, x10, x9
	ldr	w8, [x8]
	ldr	x9, [sp, #64]
	str	w8, [x9, #24]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #28]
	add	w9, w9, #1
	str	w9, [x8, #28]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #28]
	cmp	w8, #512
	b.ne	LBB16_46
; %bb.45:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	str	wzr, [x8, #28]
LBB16_46:                               ;   in Loop: Header=BB16_2 Depth=1
	b	LBB16_47
LBB16_47:                               ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #24]
	sub	w9, w9, #1
	str	w9, [x8, #24]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #24]
	cmp	w8, #1
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	tst	w8, #0x1
	csel	w8, w9, wzr, ne
	ldr	x9, [sp, #64]
	ldr	w10, [x9, #64]
	eor	w8, w10, w8
	str	w8, [x9, #64]
	ldr	x8, [sp, #64]
	ldr	w9, [x8, #1092]
	add	w9, w9, #1
	str	w9, [x8, #1092]
	b	LBB16_20
LBB16_48:
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #3184]
	str	w8, [sp, #56]
	ldr	x8, [sp, #64]
	ldrb	w8, [x8, #12]
	strb	w8, [sp, #55]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #16]
	str	w8, [sp, #48]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #1092]
	str	w8, [sp, #44]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #64]
	str	w8, [sp, #40]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #3152]
	str	x8, [sp, #32]
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #60]
	str	w8, [sp, #28]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w8, [x8, #32]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]
	ldr	x8, [sp, #64]
	mov	x9, #64080                      ; =0xfa50
	add	x8, x8, x9
	ldr	w8, [x8]
	add	w8, w8, #1
	str	w8, [sp, #4]
LBB16_49:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB16_51 Depth 2
	ldr	w8, [sp, #48]
	cmp	w8, #0
	b.le	LBB16_60
; %bb.50:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_51
LBB16_51:                               ;   Parent Loop BB16_49 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	cbnz	w8, LBB16_53
; %bb.52:
	b	LBB16_78
LBB16_53:                               ;   in Loop: Header=BB16_51 Depth=2
	ldr	w8, [sp, #48]
	cmp	w8, #1
	b.ne	LBB16_55
; %bb.54:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_56
LBB16_55:                               ;   in Loop: Header=BB16_51 Depth=2
	ldrb	w8, [sp, #55]
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #56]
	lsr	w9, w9, #24
	ldrb	w10, [sp, #55]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	str	w8, [sp, #56]
	ldr	w8, [sp, #48]
	sub	w8, w8, #1
	str	w8, [sp, #48]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	w8, [sp, #12]
	sub	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB16_51
LBB16_56:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_57
LBB16_57:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	w8, [sp, #12]
	cbnz	w8, LBB16_59
; %bb.58:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #48]
	b	LBB16_78
LBB16_59:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #55]
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	ldr	w8, [sp, #56]
	ldr	w9, [sp, #56]
	lsr	w9, w9, #24
	ldrb	w10, [sp, #55]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	str	w8, [sp, #56]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	ldr	w8, [sp, #12]
	sub	w8, w8, #1
	str	w8, [sp, #12]
LBB16_60:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	cmp	w8, w9
	b.le	LBB16_62
; %bb.61:
	mov	w8, #1                          ; =0x1
	strb	w8, [sp, #79]
	b	LBB16_82
LBB16_62:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	cmp	w8, w9
	b.ne	LBB16_64
; %bb.63:
	str	wzr, [sp, #48]
	b	LBB16_78
LBB16_64:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	w8, [sp, #40]
	strb	w8, [sp, #55]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #8
	str	w8, [sp, #28]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	ldrb	w8, [sp, #63]
	ldr	w9, [sp, #40]
	cmp	w8, w9
	b.eq	LBB16_66
; %bb.65:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #63]
	str	w8, [sp, #40]
	b	LBB16_57
LBB16_66:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	cmp	w8, w9
	b.ne	LBB16_68
; %bb.67:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_57
LBB16_68:                               ;   in Loop: Header=BB16_49 Depth=1
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #48]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #8
	str	w8, [sp, #28]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	cmp	w8, w9
	b.ne	LBB16_71
; %bb.69:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_70
LBB16_70:                               ; %.backedge1
                                        ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_49
LBB16_71:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #63]
	ldr	w9, [sp, #40]
	cmp	w8, w9
	b.eq	LBB16_73
; %bb.72:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #63]
	str	w8, [sp, #40]
	b	LBB16_70
LBB16_73:                               ;   in Loop: Header=BB16_49 Depth=1
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #48]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #8
	str	w8, [sp, #28]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #4]
	cmp	w8, w9
	b.ne	LBB16_75
; %bb.74:                               ;   in Loop: Header=BB16_49 Depth=1
	b	LBB16_70
LBB16_75:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #63]
	ldr	w9, [sp, #40]
	cmp	w8, w9
	b.eq	LBB16_77
; %bb.76:                               ;   in Loop: Header=BB16_49 Depth=1
	ldrb	w8, [sp, #63]
	str	w8, [sp, #40]
	b	LBB16_70
LBB16_77:                               ;   in Loop: Header=BB16_49 Depth=1
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	and	w8, w8, #0xff
	strb	w8, [sp, #63]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #8
	str	w8, [sp, #28]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	ldrb	w8, [sp, #63]
	add	w8, w8, #4
	str	w8, [sp, #48]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #28]
	mov	x10, #4                         ; =0x4
	madd	x8, x9, x10, x8
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	and	w8, w8, #0xff
	uxtb	w8, w8
	str	w8, [sp, #40]
	ldr	w8, [sp, #28]
	lsr	w8, w8, #8
	str	w8, [sp, #28]
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB16_70
LBB16_78:
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	str	w8, [sp]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	sub	w8, w8, w9
	ldr	x9, [sp, #64]
	ldr	x9, [x9]
	ldr	w10, [x9, #36]
	add	w8, w10, w8
	str	w8, [x9, #36]
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	ldr	w9, [sp]
	cmp	w8, w9
	b.hs	LBB16_80
; %bb.79:
	ldr	x8, [sp, #64]
	ldr	x8, [x8]
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
LBB16_80:
	ldr	w8, [sp, #56]
	ldr	x9, [sp, #64]
	str	w8, [x9, #3184]
	ldrb	w8, [sp, #55]
	ldr	x9, [sp, #64]
	strb	w8, [x9, #12]
	ldr	w8, [sp, #48]
	ldr	x9, [sp, #64]
	str	w8, [x9, #16]
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #64]
	str	w8, [x9, #1092]
	ldr	w8, [sp, #40]
	ldr	x9, [sp, #64]
	str	w8, [x9, #64]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #64]
	str	x8, [x9, #3152]
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #64]
	str	w8, [x9, #60]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #64]
	ldr	x9, [x9]
	str	x8, [x9, #24]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #64]
	ldr	x9, [x9]
	str	w8, [x9, #32]
; %bb.81:
	strb	wzr, [sp, #79]
LBB16_82:
	ldrb	w8, [sp, #79]
	uxtb	w0, w8
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzDecompressEnd            ; -- Begin function BZ2_bzDecompressEnd
	.p2align	2
_BZ2_bzDecompressEnd:                   ; @BZ2_bzDecompressEnd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, LBB17_2
; %bb.1:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB17_13
LBB17_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #48]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB17_4
; %bb.3:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB17_13
LBB17_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	cmp	x8, x9
	b.eq	LBB17_6
; %bb.5:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB17_13
LBB17_6:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #3152]
	cbz	x8, LBB17_8
; %bb.7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #3152]
	blr	x8
LBB17_8:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #3160]
	cbz	x8, LBB17_10
; %bb.9:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #3160]
	blr	x8
LBB17_10:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #3168]
	cbz	x8, LBB17_12
; %bb.11:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #8]
	ldr	x1, [x9, #3168]
	blr	x8
LBB17_12:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	ldr	x9, [sp, #16]
	ldr	x0, [x9, #72]
	ldr	x9, [sp, #16]
	ldr	x1, [x9, #48]
	blr	x8
	ldr	x8, [sp, #16]
	str	xzr, [x8, #48]
	stur	wzr, [x29, #-4]
LBB17_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteOpen                ; -- Begin function BZ2_bzWriteOpen
	.p2align	2
_BZ2_bzWriteOpen:                       ; @BZ2_bzWriteOpen
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	w3, [sp, #16]
	str	w4, [sp, #12]
	str	xzr, [sp]
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_2
; %bb.1:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB18_2:
	ldr	x8, [sp]
	cbz	x8, LBB18_4
; %bb.3:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB18_4:
	ldr	x8, [sp, #24]
	cbz	x8, LBB18_11
; %bb.5:
	ldr	w8, [sp, #20]
	cmp	w8, #1
	b.lt	LBB18_11
; %bb.6:
	ldr	w8, [sp, #20]
	cmp	w8, #9
	b.gt	LBB18_11
; %bb.7:
	ldr	w8, [sp, #12]
	tbnz	w8, #31, LBB18_11
; %bb.8:
	ldr	w8, [sp, #12]
	cmp	w8, #250
	b.gt	LBB18_11
; %bb.9:
	ldr	w8, [sp, #16]
	tbnz	w8, #31, LBB18_11
; %bb.10:
	ldr	w8, [sp, #16]
	cmp	w8, #4
	b.le	LBB18_16
LBB18_11:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_13
; %bb.12:
	ldur	x8, [x29, #-16]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB18_13:
	ldr	x8, [sp]
	cbz	x8, LBB18_15
; %bb.14:
	ldr	x8, [sp]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB18_15:
	stur	xzr, [x29, #-8]
	b	LBB18_41
LBB18_16:
	ldr	x0, [sp, #24]
	bl	_ferror
	cbz	w0, LBB18_22
; %bb.17:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_19
; %bb.18:
	ldur	x8, [x29, #-16]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB18_19:
	ldr	x8, [sp]
	cbz	x8, LBB18_21
; %bb.20:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB18_21:
	stur	xzr, [x29, #-8]
	b	LBB18_41
LBB18_22:
	mov	x0, #5104                       ; =0x13f0
	bl	_malloc
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, LBB18_28
; %bb.23:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_25
; %bb.24:
	ldur	x8, [x29, #-16]
	mov	w9, #-3                         ; =0xfffffffd
	str	w9, [x8]
LBB18_25:
	ldr	x8, [sp]
	cbz	x8, LBB18_27
; %bb.26:
	ldr	x8, [sp]
	mov	w9, #-3                         ; =0xfffffffd
	str	w9, [x8, #5096]
LBB18_27:
	stur	xzr, [x29, #-8]
	b	LBB18_41
LBB18_28:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_30
; %bb.29:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB18_30:
	ldr	x8, [sp]
	cbz	x8, LBB18_32
; %bb.31:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB18_32:
	ldr	x8, [sp]
	mov	x9, #5100                       ; =0x13ec
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp]
	str	wzr, [x8, #5008]
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp]
	mov	w9, #1                          ; =0x1
	mov	x10, #5012                      ; =0x1394
	add	x8, x8, x10
	strb	w9, [x8]
	ldr	x8, [sp]
	str	xzr, [x8, #5072]
	ldr	x8, [sp]
	str	xzr, [x8, #5080]
	ldr	x8, [sp]
	str	xzr, [x8, #5088]
	ldr	w8, [sp, #12]
	cbnz	w8, LBB18_34
; %bb.33:
	mov	w8, #30                         ; =0x1e
	str	w8, [sp, #12]
LBB18_34:
	ldr	x8, [sp]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	ldr	w1, [sp, #20]
	ldr	w2, [sp, #16]
	ldr	w3, [sp, #12]
	bl	_BZ2_bzCompressInit
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbz	w8, LBB18_40
; %bb.35:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB18_37
; %bb.36:
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
LBB18_37:
	ldr	x8, [sp]
	cbz	x8, LBB18_39
; %bb.38:
	ldr	w8, [sp, #8]
	ldr	x9, [sp]
	str	w8, [x9, #5096]
LBB18_39:
	ldr	x0, [sp]
	bl	_free
	stur	xzr, [x29, #-8]
	b	LBB18_41
LBB18_40:
	ldr	x8, [sp]
	str	wzr, [x8, #5024]
	ldr	x8, [sp]
	mov	w9, #1                          ; =0x1
	mov	x10, #5100                      ; =0x13ec
	add	x8, x8, x10
	strb	w9, [x8]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
LBB18_41:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWrite                    ; -- Begin function BZ2_bzWrite
	.p2align	2
_BZ2_bzWrite:                           ; @BZ2_bzWrite
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_2
; %bb.1:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB19_2:
	ldr	x8, [sp]
	cbz	x8, LBB19_4
; %bb.3:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB19_4:
	ldr	x8, [sp]
	cbz	x8, LBB19_7
; %bb.5:
	ldr	x8, [sp, #24]
	cbz	x8, LBB19_7
; %bb.6:
	ldr	w8, [sp, #20]
	tbz	w8, #31, LBB19_12
LBB19_7:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_9
; %bb.8:
	ldur	x8, [x29, #-8]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB19_9:
	ldr	x8, [sp]
	cbz	x8, LBB19_11
; %bb.10:
	ldr	x8, [sp]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB19_11:
	b	LBB19_53
LBB19_12:
	ldr	x8, [sp]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbnz	w8, LBB19_18
; %bb.13:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_15
; %bb.14:
	ldur	x8, [x29, #-8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8]
LBB19_15:
	ldr	x8, [sp]
	cbz	x8, LBB19_17
; %bb.16:
	ldr	x8, [sp]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #5096]
LBB19_17:
	b	LBB19_53
LBB19_18:
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB19_24
; %bb.19:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_21
; %bb.20:
	ldur	x8, [x29, #-8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB19_21:
	ldr	x8, [sp]
	cbz	x8, LBB19_23
; %bb.22:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB19_23:
	b	LBB19_53
LBB19_24:
	ldr	w8, [sp, #20]
	cbnz	w8, LBB19_30
; %bb.25:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_27
; %bb.26:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB19_27:
	ldr	x8, [sp]
	cbz	x8, LBB19_29
; %bb.28:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB19_29:
	b	LBB19_53
LBB19_30:
	ldr	w8, [sp, #20]
	ldr	x9, [sp]
	str	w8, [x9, #5024]
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	str	x8, [x9, #5016]
LBB19_31:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	mov	w9, #5000                       ; =0x1388
	str	w9, [x8, #5048]
	ldr	x8, [sp]
	add	x8, x8, #8
	ldr	x9, [sp]
	str	x8, [x9, #5040]
	ldr	x8, [sp]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	mov	w1, #0                          ; =0x0
	bl	_BZ2_bzCompress
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cmp	w8, #1
	b.eq	LBB19_37
; %bb.32:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_34
; %bb.33:
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
LBB19_34:
	ldr	x8, [sp]
	cbz	x8, LBB19_36
; %bb.35:
	ldr	w8, [sp, #8]
	ldr	x9, [sp]
	str	w8, [x9, #5096]
LBB19_36:
	b	LBB19_53
LBB19_37:                               ;   in Loop: Header=BB19_31 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #5048]
	mov	w9, #5000                       ; =0x1388
	cmp	w8, w9
	b.hs	LBB19_46
; %bb.38:                               ;   in Loop: Header=BB19_31 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #5048]
	mov	w9, #5000                       ; =0x1388
	sub	w8, w9, w8
	str	w8, [sp, #16]
	ldr	x8, [sp]
	add	x0, x8, #8
	ldrsw	x2, [sp, #16]
	ldr	x8, [sp]
	ldr	x3, [x8]
	mov	x1, #1                          ; =0x1
	bl	_fwrite
	str	w0, [sp, #12]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	cmp	w8, w9
	b.ne	LBB19_40
; %bb.39:                               ;   in Loop: Header=BB19_31 Depth=1
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB19_45
LBB19_40:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_42
; %bb.41:
	ldur	x8, [x29, #-8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB19_42:
	ldr	x8, [sp]
	cbz	x8, LBB19_44
; %bb.43:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB19_44:
	b	LBB19_53
LBB19_45:                               ;   in Loop: Header=BB19_31 Depth=1
	b	LBB19_46
LBB19_46:                               ;   in Loop: Header=BB19_31 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #5024]
	cbnz	w8, LBB19_52
; %bb.47:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB19_49
; %bb.48:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB19_49:
	ldr	x8, [sp]
	cbz	x8, LBB19_51
; %bb.50:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB19_51:
	b	LBB19_53
LBB19_52:                               ;   in Loop: Header=BB19_31 Depth=1
	b	LBB19_31
LBB19_53:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteClose               ; -- Begin function BZ2_bzWriteClose
	.p2align	2
_BZ2_bzWriteClose:                      ; @BZ2_bzWriteClose
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldr	x3, [sp, #16]
	ldr	x5, [sp, #8]
	mov	x4, #0                          ; =0x0
	mov	x6, #0                          ; =0x0
	bl	_BZ2_bzWriteClose64
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzWriteClose64             ; -- Begin function BZ2_bzWriteClose64
	.p2align	2
_BZ2_bzWriteClose64:                    ; @BZ2_bzWriteClose64
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	x3, [x29, #-32]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	x6, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldr	x8, [sp]
	cbnz	x8, LBB21_6
; %bb.1:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_3
; %bb.2:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB21_3:
	ldr	x8, [sp]
	cbz	x8, LBB21_5
; %bb.4:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB21_5:
	b	LBB21_71
LBB21_6:
	ldr	x8, [sp]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbnz	w8, LBB21_12
; %bb.7:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_9
; %bb.8:
	ldur	x8, [x29, #-8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8]
LBB21_9:
	ldr	x8, [sp]
	cbz	x8, LBB21_11
; %bb.10:
	ldr	x8, [sp]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #5096]
LBB21_11:
	b	LBB21_71
LBB21_12:
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB21_18
; %bb.13:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_15
; %bb.14:
	ldur	x8, [x29, #-8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB21_15:
	ldr	x8, [sp]
	cbz	x8, LBB21_17
; %bb.16:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB21_17:
	b	LBB21_71
LBB21_18:
	ldur	x8, [x29, #-32]
	cbz	x8, LBB21_20
; %bb.19:
	ldur	x8, [x29, #-32]
	str	wzr, [x8]
LBB21_20:
	ldr	x8, [sp, #40]
	cbz	x8, LBB21_22
; %bb.21:
	ldr	x8, [sp, #40]
	str	wzr, [x8]
LBB21_22:
	ldr	x8, [sp, #32]
	cbz	x8, LBB21_24
; %bb.23:
	ldr	x8, [sp, #32]
	str	wzr, [x8]
LBB21_24:
	ldr	x8, [sp, #24]
	cbz	x8, LBB21_26
; %bb.25:
	ldr	x8, [sp, #24]
	str	wzr, [x8]
LBB21_26:
	ldur	w8, [x29, #-20]
	cbnz	w8, LBB21_49
; %bb.27:
	ldr	x8, [sp]
	ldr	w8, [x8, #5096]
	cbnz	w8, LBB21_49
; %bb.28:
	b	LBB21_29
LBB21_29:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	mov	w9, #5000                       ; =0x1388
	str	w9, [x8, #5048]
	ldr	x8, [sp]
	add	x8, x8, #8
	ldr	x9, [sp]
	str	x8, [x9, #5040]
	ldr	x8, [sp]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	mov	w1, #2                          ; =0x2
	bl	_BZ2_bzCompress
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cmp	w8, #3
	b.eq	LBB21_36
; %bb.30:                               ;   in Loop: Header=BB21_29 Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #4
	b.eq	LBB21_36
; %bb.31:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_33
; %bb.32:
	ldr	w8, [sp, #12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
LBB21_33:
	ldr	x8, [sp]
	cbz	x8, LBB21_35
; %bb.34:
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #5096]
LBB21_35:
	b	LBB21_71
LBB21_36:                               ;   in Loop: Header=BB21_29 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #5048]
	mov	w9, #5000                       ; =0x1388
	cmp	w8, w9
	b.hs	LBB21_45
; %bb.37:                               ;   in Loop: Header=BB21_29 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8, #5048]
	mov	w9, #5000                       ; =0x1388
	sub	w8, w9, w8
	str	w8, [sp, #20]
	ldr	x8, [sp]
	add	x0, x8, #8
	ldrsw	x2, [sp, #20]
	ldr	x8, [sp]
	ldr	x3, [x8]
	mov	x1, #1                          ; =0x1
	bl	_fwrite
	str	w0, [sp, #16]
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #16]
	cmp	w8, w9
	b.ne	LBB21_39
; %bb.38:                               ;   in Loop: Header=BB21_29 Depth=1
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB21_44
LBB21_39:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_41
; %bb.40:
	ldur	x8, [x29, #-8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB21_41:
	ldr	x8, [sp]
	cbz	x8, LBB21_43
; %bb.42:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB21_43:
	b	LBB21_71
LBB21_44:                               ;   in Loop: Header=BB21_29 Depth=1
	b	LBB21_45
LBB21_45:                               ;   in Loop: Header=BB21_29 Depth=1
	ldr	w8, [sp, #12]
	cmp	w8, #4
	b.ne	LBB21_47
; %bb.46:
	b	LBB21_48
LBB21_47:                               ;   in Loop: Header=BB21_29 Depth=1
	b	LBB21_29
LBB21_48:
	b	LBB21_49
LBB21_49:
	ldur	w8, [x29, #-20]
	cbnz	w8, LBB21_58
; %bb.50:
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbnz	w0, LBB21_58
; %bb.51:
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_fflush
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB21_57
; %bb.52:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_54
; %bb.53:
	ldur	x8, [x29, #-8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB21_54:
	ldr	x8, [sp]
	cbz	x8, LBB21_56
; %bb.55:
	ldr	x8, [sp]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB21_56:
	b	LBB21_71
LBB21_57:
	b	LBB21_58
LBB21_58:
	ldur	x8, [x29, #-32]
	cbz	x8, LBB21_60
; %bb.59:
	ldr	x8, [sp]
	ldr	w8, [x8, #5028]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
LBB21_60:
	ldr	x8, [sp, #40]
	cbz	x8, LBB21_62
; %bb.61:
	ldr	x8, [sp]
	ldr	w8, [x8, #5032]
	ldr	x9, [sp, #40]
	str	w8, [x9]
LBB21_62:
	ldr	x8, [sp, #32]
	cbz	x8, LBB21_64
; %bb.63:
	ldr	x8, [sp]
	ldr	w8, [x8, #5052]
	ldr	x9, [sp, #32]
	str	w8, [x9]
LBB21_64:
	ldr	x8, [sp, #24]
	cbz	x8, LBB21_66
; %bb.65:
	ldr	x8, [sp]
	ldr	w8, [x8, #5056]
	ldr	x9, [sp, #24]
	str	w8, [x9]
LBB21_66:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB21_68
; %bb.67:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB21_68:
	ldr	x8, [sp]
	cbz	x8, LBB21_70
; %bb.69:
	ldr	x8, [sp]
	str	wzr, [x8, #5096]
LBB21_70:
	ldr	x8, [sp]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	bl	_BZ2_bzCompressEnd
	ldr	x0, [sp]
	bl	_free
LBB21_71:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadOpen                 ; -- Begin function BZ2_bzReadOpen
	.p2align	2
_BZ2_bzReadOpen:                        ; @BZ2_bzReadOpen
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	str	w3, [sp, #32]
	str	x4, [sp, #24]
	str	w5, [sp, #20]
	str	xzr, [sp, #8]
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_2
; %bb.1:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB22_2:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_4
; %bb.3:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB22_4:
	ldur	x8, [x29, #-24]
	cbz	x8, LBB22_14
; %bb.5:
	ldr	w8, [sp, #32]
	cbz	w8, LBB22_7
; %bb.6:
	ldr	w8, [sp, #32]
	cmp	w8, #1
	b.ne	LBB22_14
LBB22_7:
	ldur	w8, [x29, #-28]
	tbnz	w8, #31, LBB22_14
; %bb.8:
	ldur	w8, [x29, #-28]
	cmp	w8, #4
	b.gt	LBB22_14
; %bb.9:
	ldr	x8, [sp, #24]
	cbnz	x8, LBB22_11
; %bb.10:
	ldr	w8, [sp, #20]
	cbnz	w8, LBB22_14
LBB22_11:
	ldr	x8, [sp, #24]
	cbz	x8, LBB22_19
; %bb.12:
	ldr	w8, [sp, #20]
	tbnz	w8, #31, LBB22_14
; %bb.13:
	ldr	w8, [sp, #20]
	mov	w9, #5000                       ; =0x1388
	cmp	w8, w9
	b.le	LBB22_19
LBB22_14:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_16
; %bb.15:
	ldur	x8, [x29, #-16]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB22_16:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_18
; %bb.17:
	ldr	x8, [sp, #8]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB22_18:
	stur	xzr, [x29, #-8]
	b	LBB22_45
LBB22_19:
	ldur	x0, [x29, #-24]
	bl	_ferror
	cbz	w0, LBB22_25
; %bb.20:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_22
; %bb.21:
	ldur	x8, [x29, #-16]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB22_22:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_24
; %bb.23:
	ldr	x8, [sp, #8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB22_24:
	stur	xzr, [x29, #-8]
	b	LBB22_45
LBB22_25:
	mov	x0, #5104                       ; =0x13f0
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB22_31
; %bb.26:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_28
; %bb.27:
	ldur	x8, [x29, #-16]
	mov	w9, #-3                         ; =0xfffffffd
	str	w9, [x8]
LBB22_28:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_30
; %bb.29:
	ldr	x8, [sp, #8]
	mov	w9, #-3                         ; =0xfffffffd
	str	w9, [x8, #5096]
LBB22_30:
	stur	xzr, [x29, #-8]
	b	LBB22_45
LBB22_31:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_33
; %bb.32:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB22_33:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_35
; %bb.34:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB22_35:
	ldr	x8, [sp, #8]
	mov	x9, #5100                       ; =0x13ec
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5008]
	ldr	x8, [sp, #8]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #5072]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #5080]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #5088]
LBB22_36:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	cmp	w8, #0
	b.le	LBB22_38
; %bb.37:                               ;   in Loop: Header=BB22_36 Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	add	x9, x9, #8
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #5008]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #5008]
	add	w9, w9, #1
	str	w9, [x8, #5008]
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	w8, [sp, #20]
	sub	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB22_36
LBB22_38:
	ldr	x8, [sp, #8]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	ldur	w1, [x29, #-28]
	ldr	w2, [sp, #32]
	bl	_BZ2_bzDecompressInit
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	cbz	w8, LBB22_44
; %bb.39:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB22_41
; %bb.40:
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
LBB22_41:
	ldr	x8, [sp, #8]
	cbz	x8, LBB22_43
; %bb.42:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5096]
LBB22_43:
	ldr	x0, [sp, #8]
	bl	_free
	stur	xzr, [x29, #-8]
	b	LBB22_45
LBB22_44:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5008]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5024]
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	ldr	x9, [sp, #8]
	str	x8, [x9, #5016]
	ldr	x8, [sp, #8]
	mov	w9, #1                          ; =0x1
	mov	x10, #5100                      ; =0x13ec
	add	x8, x8, x10
	strb	w9, [x8]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
LBB22_45:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadClose                ; -- Begin function BZ2_bzReadClose
	.p2align	2
_BZ2_bzReadClose:                       ; @BZ2_bzReadClose
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	cbz	x8, LBB23_2
; %bb.1:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB23_2:
	ldr	x8, [sp, #8]
	cbz	x8, LBB23_4
; %bb.3:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB23_4:
	ldr	x8, [sp, #8]
	cbnz	x8, LBB23_10
; %bb.5:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB23_7
; %bb.6:
	ldur	x8, [x29, #-8]
	str	wzr, [x8]
LBB23_7:
	ldr	x8, [sp, #8]
	cbz	x8, LBB23_9
; %bb.8:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB23_9:
	b	LBB23_19
LBB23_10:
	ldr	x8, [sp, #8]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbz	w8, LBB23_16
; %bb.11:
	ldur	x8, [x29, #-8]
	cbz	x8, LBB23_13
; %bb.12:
	ldur	x8, [x29, #-8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8]
LBB23_13:
	ldr	x8, [sp, #8]
	cbz	x8, LBB23_15
; %bb.14:
	ldr	x8, [sp, #8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #5096]
LBB23_15:
	b	LBB23_19
LBB23_16:
	ldr	x8, [sp, #8]
	mov	x9, #5100                       ; =0x13ec
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbz	w8, LBB23_18
; %bb.17:
	ldr	x8, [sp, #8]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	bl	_BZ2_bzDecompressEnd
LBB23_18:
	ldr	x0, [sp, #8]
	bl	_free
LBB23_19:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzRead                     ; -- Begin function BZ2_bzRead
	.p2align	2
_BZ2_bzRead:                            ; @BZ2_bzRead
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	w3, [sp, #28]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_2
; %bb.1:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB24_2:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_4
; %bb.3:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB24_4:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_7
; %bb.5:
	ldr	x8, [sp, #32]
	cbz	x8, LBB24_7
; %bb.6:
	ldr	w8, [sp, #28]
	tbz	w8, #31, LBB24_12
LBB24_7:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_9
; %bb.8:
	ldur	x8, [x29, #-16]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB24_9:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_11
; %bb.10:
	ldr	x8, [sp, #8]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB24_11:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_12:
	ldr	x8, [sp, #8]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbz	w8, LBB24_18
; %bb.13:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_15
; %bb.14:
	ldur	x8, [x29, #-16]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8]
LBB24_15:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_17
; %bb.16:
	ldr	x8, [sp, #8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #5096]
LBB24_17:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_18:
	ldr	w8, [sp, #28]
	cbnz	w8, LBB24_24
; %bb.19:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_21
; %bb.20:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB24_21:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_23
; %bb.22:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB24_23:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_24:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5048]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	str	x8, [x9, #5040]
LBB24_25:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB24_31
; %bb.26:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_28
; %bb.27:
	ldur	x8, [x29, #-16]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB24_28:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_30
; %bb.29:
	ldr	x8, [sp, #8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB24_30:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_31:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5024]
	cbnz	w8, LBB24_40
; %bb.32:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_myfeof
	uxtb	w8, w0
	cbnz	w8, LBB24_40
; %bb.33:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	ldr	x8, [sp, #8]
	ldr	x3, [x8]
	mov	x1, #1                          ; =0x1
	mov	x2, #5000                       ; =0x1388
	bl	_fread
	str	w0, [sp, #24]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_ferror
	cbz	w0, LBB24_39
; %bb.34:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_36
; %bb.35:
	ldur	x8, [x29, #-16]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8]
LBB24_36:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_38
; %bb.37:
	ldr	x8, [sp, #8]
	mov	w9, #-6                         ; =0xfffffffa
	str	w9, [x8, #5096]
LBB24_38:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_39:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5008]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5008]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5024]
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	ldr	x9, [sp, #8]
	str	x8, [x9, #5016]
LBB24_40:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	mov	x9, #5016                       ; =0x1398
	add	x0, x8, x9
	bl	_BZ2_bzDecompress
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	cbz	w8, LBB24_47
; %bb.41:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	w8, [sp, #20]
	cmp	w8, #4
	b.eq	LBB24_47
; %bb.42:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_44
; %bb.43:
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
LBB24_44:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_46
; %bb.45:
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #8]
	str	w8, [x9, #5096]
LBB24_46:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_47:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	w8, [sp, #20]
	cbnz	w8, LBB24_56
; %bb.48:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_myfeof
	uxtb	w8, w0
	cbz	w8, LBB24_56
; %bb.49:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5024]
	cbnz	w8, LBB24_56
; %bb.50:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5048]
	cmp	w8, #0
	b.ls	LBB24_56
; %bb.51:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_53
; %bb.52:
	ldur	x8, [x29, #-16]
	mov	w9, #-7                         ; =0xfffffff9
	str	w9, [x8]
LBB24_53:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_55
; %bb.54:
	ldr	x8, [sp, #8]
	mov	w9, #-7                         ; =0xfffffff9
	str	w9, [x8, #5096]
LBB24_55:
	stur	wzr, [x29, #-4]
	b	LBB24_69
LBB24_56:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	w8, [sp, #20]
	cmp	w8, #4
	b.ne	LBB24_62
; %bb.57:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_59
; %bb.58:
	ldur	x8, [x29, #-16]
	mov	w9, #4                          ; =0x4
	str	w9, [x8]
LBB24_59:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_61
; %bb.60:
	ldr	x8, [sp, #8]
	mov	w9, #4                          ; =0x4
	str	w9, [x8, #5096]
LBB24_61:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #5048]
	sub	w8, w8, w9
	stur	w8, [x29, #-4]
	b	LBB24_69
LBB24_62:                               ;   in Loop: Header=BB24_25 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5048]
	cbnz	w8, LBB24_68
; %bb.63:
	ldur	x8, [x29, #-16]
	cbz	x8, LBB24_65
; %bb.64:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
LBB24_65:
	ldr	x8, [sp, #8]
	cbz	x8, LBB24_67
; %bb.66:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB24_67:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	LBB24_69
LBB24_68:                               ;   in Loop: Header=BB24_25 Depth=1
	b	LBB24_25
LBB24_69:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function myfeof
_myfeof:                                ; @myfeof
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_fgetc
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cmn	w8, #1
	b.ne	LBB25_2
; %bb.1:
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-1]
	b	LBB25_3
LBB25_2:
	ldr	w0, [sp, #12]
	ldr	x1, [sp, #16]
	bl	_ungetc
	sturb	wzr, [x29, #-1]
LBB25_3:
	ldurb	w8, [x29, #-1]
	uxtb	w0, w8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzReadGetUnused            ; -- Begin function BZ2_bzReadGetUnused
	.p2align	2
_BZ2_bzReadGetUnused:                   ; @BZ2_bzReadGetUnused
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB26_6
; %bb.1:
	ldr	x8, [sp, #40]
	cbz	x8, LBB26_3
; %bb.2:
	ldr	x8, [sp, #40]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB26_3:
	ldr	x8, [sp, #8]
	cbz	x8, LBB26_5
; %bb.4:
	ldr	x8, [sp, #8]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB26_5:
	b	LBB26_24
LBB26_6:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5096]
	cmp	w8, #4
	b.eq	LBB26_12
; %bb.7:
	ldr	x8, [sp, #40]
	cbz	x8, LBB26_9
; %bb.8:
	ldr	x8, [sp, #40]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8]
LBB26_9:
	ldr	x8, [sp, #8]
	cbz	x8, LBB26_11
; %bb.10:
	ldr	x8, [sp, #8]
	mov	w9, #-1                         ; =0xffffffff
	str	w9, [x8, #5096]
LBB26_11:
	b	LBB26_24
LBB26_12:
	ldr	x8, [sp, #24]
	cbz	x8, LBB26_14
; %bb.13:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB26_19
LBB26_14:
	ldr	x8, [sp, #40]
	cbz	x8, LBB26_16
; %bb.15:
	ldr	x8, [sp, #40]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8]
LBB26_16:
	ldr	x8, [sp, #8]
	cbz	x8, LBB26_18
; %bb.17:
	ldr	x8, [sp, #8]
	mov	w9, #-2                         ; =0xfffffffe
	str	w9, [x8, #5096]
LBB26_18:
	b	LBB26_24
LBB26_19:
	ldr	x8, [sp, #40]
	cbz	x8, LBB26_21
; %bb.20:
	ldr	x8, [sp, #40]
	str	wzr, [x8]
LBB26_21:
	ldr	x8, [sp, #8]
	cbz	x8, LBB26_23
; %bb.22:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #5096]
LBB26_23:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #5024]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #5016]
	ldr	x9, [sp, #24]
	str	x8, [x9]
LBB26_24:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzBuffToBuffCompress       ; -- Begin function BZ2_bzBuffToBuffCompress
	.p2align	2
_BZ2_bzBuffToBuffCompress:              ; @BZ2_bzBuffToBuffCompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	w4, [x29, #-40]
	stur	w5, [x29, #-44]
	stur	w6, [x29, #-48]
	ldur	x8, [x29, #-16]
	cbz	x8, LBB27_9
; %bb.1:
	ldur	x8, [x29, #-24]
	cbz	x8, LBB27_9
; %bb.2:
	ldur	x8, [x29, #-32]
	cbz	x8, LBB27_9
; %bb.3:
	ldur	w8, [x29, #-40]
	cmp	w8, #1
	b.lt	LBB27_9
; %bb.4:
	ldur	w8, [x29, #-40]
	cmp	w8, #9
	b.gt	LBB27_9
; %bb.5:
	ldur	w8, [x29, #-44]
	tbnz	w8, #31, LBB27_9
; %bb.6:
	ldur	w8, [x29, #-44]
	cmp	w8, #4
	b.gt	LBB27_9
; %bb.7:
	ldur	w8, [x29, #-48]
	tbnz	w8, #31, LBB27_9
; %bb.8:
	ldur	w8, [x29, #-48]
	cmp	w8, #250
	b.le	LBB27_10
LBB27_9:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB27_21
LBB27_10:
	ldur	w8, [x29, #-48]
	cbnz	w8, LBB27_12
; %bb.11:
	mov	w8, #30                         ; =0x1e
	stur	w8, [x29, #-48]
LBB27_12:
	str	xzr, [sp, #72]
	str	xzr, [sp, #80]
	str	xzr, [sp, #88]
	ldur	w1, [x29, #-40]
	ldur	w2, [x29, #-44]
	ldur	w3, [x29, #-48]
	add	x0, sp, #16
	bl	_BZ2_bzCompressInit
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, LBB27_14
; %bb.13:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB27_21
LBB27_14:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-36]
	str	w8, [sp, #24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	add	x0, sp, #16
	mov	w1, #2                          ; =0x2
	bl	_BZ2_bzCompress
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cmp	w8, #3
	b.ne	LBB27_16
; %bb.15:
	b	LBB27_19
LBB27_16:
	ldr	w8, [sp, #12]
	cmp	w8, #4
	b.eq	LBB27_18
; %bb.17:
	b	LBB27_20
LBB27_18:
	ldr	w8, [sp, #48]
	ldur	x9, [x29, #-24]
	ldr	w10, [x9]
	sub	w8, w10, w8
	str	w8, [x9]
	add	x0, sp, #16
	bl	_BZ2_bzCompressEnd
	stur	wzr, [x29, #-4]
	b	LBB27_21
LBB27_19:
	add	x0, sp, #16
	bl	_BZ2_bzCompressEnd
	mov	w8, #-8                         ; =0xfffffff8
	stur	w8, [x29, #-4]
	b	LBB27_21
LBB27_20:
	add	x0, sp, #16
	bl	_BZ2_bzCompressEnd
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
LBB27_21:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzBuffToBuffDecompress     ; -- Begin function BZ2_bzBuffToBuffDecompress
	.p2align	2
_BZ2_bzBuffToBuffDecompress:            ; @BZ2_bzBuffToBuffDecompress
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	w4, [x29, #-40]
	stur	w5, [x29, #-44]
	ldur	x8, [x29, #-16]
	cbz	x8, LBB28_7
; %bb.1:
	ldur	x8, [x29, #-24]
	cbz	x8, LBB28_7
; %bb.2:
	ldur	x8, [x29, #-32]
	cbz	x8, LBB28_7
; %bb.3:
	ldur	w8, [x29, #-40]
	cbz	w8, LBB28_5
; %bb.4:
	ldur	w8, [x29, #-40]
	cmp	w8, #1
	b.ne	LBB28_7
LBB28_5:
	ldur	w8, [x29, #-44]
	tbnz	w8, #31, LBB28_7
; %bb.6:
	ldur	w8, [x29, #-44]
	cmp	w8, #4
	b.le	LBB28_8
LBB28_7:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB28_19
LBB28_8:
	str	xzr, [sp, #72]
	str	xzr, [sp, #80]
	str	xzr, [sp, #88]
	ldur	w1, [x29, #-44]
	ldur	w2, [x29, #-40]
	add	x0, sp, #16
	bl	_BZ2_bzDecompressInit
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, LBB28_10
; %bb.9:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB28_19
LBB28_10:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldur	w8, [x29, #-36]
	str	w8, [sp, #24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	add	x0, sp, #16
	bl	_BZ2_bzDecompress
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbnz	w8, LBB28_12
; %bb.11:
	b	LBB28_15
LBB28_12:
	ldr	w8, [sp, #12]
	cmp	w8, #4
	b.eq	LBB28_14
; %bb.13:
	b	LBB28_18
LBB28_14:
	ldr	w8, [sp, #48]
	ldur	x9, [x29, #-24]
	ldr	w10, [x9]
	sub	w8, w10, w8
	str	w8, [x9]
	add	x0, sp, #16
	bl	_BZ2_bzDecompressEnd
	stur	wzr, [x29, #-4]
	b	LBB28_19
LBB28_15:
	ldr	w8, [sp, #48]
	cmp	w8, #0
	b.ls	LBB28_17
; %bb.16:
	add	x0, sp, #16
	bl	_BZ2_bzDecompressEnd
	mov	w8, #-7                         ; =0xfffffff9
	stur	w8, [x29, #-4]
	b	LBB28_19
LBB28_17:
	add	x0, sp, #16
	bl	_BZ2_bzDecompressEnd
	mov	w8, #-8                         ; =0xfffffff8
	stur	w8, [x29, #-4]
	b	LBB28_19
LBB28_18:
	add	x0, sp, #16
	bl	_BZ2_bzDecompressEnd
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
LBB28_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzopen                     ; -- Begin function BZ2_bzopen
	.p2align	2
_BZ2_bzopen:                            ; @BZ2_bzopen
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x2, [sp]
	mov	w1, #-1                         ; =0xffffffff
	mov	w3, #0                          ; =0x0
	bl	_bzopen_or_bzdopen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function bzopen_or_bzdopen
_bzopen_or_bzdopen:                     ; @bzopen_or_bzdopen
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1, lsl #12             ; =4096
	sub	sp, sp, #1008
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	x0, [sp, #64]
	str	w1, [sp, #60]
	str	x2, [sp, #48]
	str	w3, [sp, #44]
	mov	w8, #9                          ; =0x9
	str	w8, [sp, #36]
	str	wzr, [sp, #32]
	add	x0, sp, #86
	uxtb	w1, wzr
	mov	x2, #10                         ; =0xa
	bl	_memset
	str	xzr, [sp, #24]
	str	xzr, [sp, #16]
	str	wzr, [sp, #12]
	mov	w8, #30                         ; =0x1e
	str	w8, [sp, #8]
	str	wzr, [sp, #4]
	str	wzr, [sp]
	ldr	x8, [sp, #48]
	cbnz	x8, LBB30_2
; %bb.1:
	str	xzr, [sp, #72]
	b	LBB30_39
LBB30_2:
	b	LBB30_3
LBB30_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbz	w8, LBB30_14
; %bb.4:                                ;   in Loop: Header=BB30_3 Depth=1
	ldr	x8, [sp, #48]
	ldrsb	w8, [x8]
	subs	w9, w8, #114
	b.eq	LBB30_7
	b	LBB30_5
LBB30_5:                                ;   in Loop: Header=BB30_3 Depth=1
	subs	w9, w8, #115
	b.eq	LBB30_9
	b	LBB30_6
LBB30_6:                                ;   in Loop: Header=BB30_3 Depth=1
	subs	w8, w8, #119
	b.eq	LBB30_8
	b	LBB30_10
LBB30_7:                                ;   in Loop: Header=BB30_3 Depth=1
	str	wzr, [sp, #32]
	b	LBB30_13
LBB30_8:                                ;   in Loop: Header=BB30_3 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #32]
	b	LBB30_13
LBB30_9:                                ;   in Loop: Header=BB30_3 Depth=1
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #4]
	b	LBB30_13
LBB30_10:                               ;   in Loop: Header=BB30_3 Depth=1
	ldr	x8, [sp, #48]
	ldrsb	w0, [x8]
	bl	_isdigit
	cbz	w0, LBB30_12
; %bb.11:                               ;   in Loop: Header=BB30_3 Depth=1
	ldr	x8, [sp, #48]
	ldrsb	w8, [x8]
	sub	w8, w8, #48
	str	w8, [sp, #36]
LBB30_12:                               ;   in Loop: Header=BB30_3 Depth=1
	b	LBB30_13
LBB30_13:                               ;   in Loop: Header=BB30_3 Depth=1
	ldr	x8, [sp, #48]
	add	x8, x8, #1
	str	x8, [sp, #48]
	b	LBB30_3
LBB30_14:
	ldr	w8, [sp, #32]
	cmp	w8, #0
	cset	w8, ne
	adrp	x9, l_.str.6@PAGE
	add	x9, x9, l_.str.6@PAGEOFF
	adrp	x10, l_.str.7@PAGE
	add	x10, x10, l_.str.7@PAGEOFF
	tst	w8, #0x1
	csel	x1, x9, x10, ne
	add	x0, sp, #86
	mov	x2, #10                         ; =0xa
	bl	___strcat_chk
	adrp	x8, l_.str.8@PAGE
	add	x1, x8, l_.str.8@PAGEOFF
	add	x0, sp, #86
	mov	x2, #10                         ; =0xa
	bl	___strcat_chk
	ldr	w8, [sp, #44]
	cbnz	w8, LBB30_23
; %bb.15:
	ldr	x8, [sp, #64]
	cbz	x8, LBB30_17
; %bb.16:
	ldr	x0, [sp, #64]
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	_strcmp
	cbnz	w0, LBB30_21
LBB30_17:
	ldr	w8, [sp, #32]
	cbz	w8, LBB30_19
; %bb.18:
	adrp	x8, ___stdoutp@GOTPAGE
	ldr	x8, [x8, ___stdoutp@GOTPAGEOFF]
	ldr	x8, [x8]
	b	LBB30_20
LBB30_19:
	adrp	x8, ___stdinp@GOTPAGE
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
	ldr	x8, [x8]
LBB30_20:
	str	x8, [sp, #24]
	b	LBB30_22
LBB30_21:
	ldr	x0, [sp, #64]
	add	x1, sp, #86
	bl	_fopen
	str	x0, [sp, #24]
LBB30_22:
	b	LBB30_24
LBB30_23:
	ldr	w0, [sp, #60]
	add	x1, sp, #86
	bl	_fdopen
	str	x0, [sp, #24]
LBB30_24:
	ldr	x8, [sp, #24]
	cbnz	x8, LBB30_26
; %bb.25:
	str	xzr, [sp, #72]
	b	LBB30_39
LBB30_26:
	ldr	w8, [sp, #32]
	cbz	w8, LBB30_32
; %bb.27:
	ldr	w8, [sp, #36]
	cmp	w8, #1
	b.ge	LBB30_29
; %bb.28:
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #36]
LBB30_29:
	ldr	w8, [sp, #36]
	cmp	w8, #9
	b.le	LBB30_31
; %bb.30:
	mov	w8, #9                          ; =0x9
	str	w8, [sp, #36]
LBB30_31:
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #36]
	ldr	w3, [sp, #12]
	ldr	w4, [sp, #8]
	add	x0, sp, #40
	bl	_BZ2_bzWriteOpen
	str	x0, [sp, #16]
	b	LBB30_33
LBB30_32:
	ldr	x1, [sp, #24]
	ldr	w2, [sp, #12]
	ldr	w3, [sp, #4]
	ldr	w5, [sp]
	add	x0, sp, #40
	add	x4, sp, #96
	bl	_BZ2_bzReadOpen
	str	x0, [sp, #16]
LBB30_33:
	ldr	x8, [sp, #16]
	cbnz	x8, LBB30_38
; %bb.34:
	ldr	x8, [sp, #24]
	adrp	x9, ___stdinp@GOTPAGE
	ldr	x9, [x9, ___stdinp@GOTPAGEOFF]
	ldr	x9, [x9]
	cmp	x8, x9
	b.eq	LBB30_37
; %bb.35:
	ldr	x8, [sp, #24]
	adrp	x9, ___stdoutp@GOTPAGE
	ldr	x9, [x9, ___stdoutp@GOTPAGEOFF]
	ldr	x9, [x9]
	cmp	x8, x9
	b.eq	LBB30_37
; %bb.36:
	ldr	x0, [sp, #24]
	bl	_fclose
LBB30_37:
	str	xzr, [sp, #72]
	b	LBB30_39
LBB30_38:
	ldr	x8, [sp, #16]
	str	x8, [sp, #72]
LBB30_39:
	ldr	x0, [sp, #72]
	ldur	x8, [x29, #-24]
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	subs	x8, x9, x8
	b.ne	LBB30_40
	b	LBB30_41
LBB30_40:
	bl	___stack_chk_fail
LBB30_41:
	add	sp, sp, #1, lsl #12             ; =4096
	add	sp, sp, #1008
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzdopen                    ; -- Begin function BZ2_bzdopen
	.p2align	2
_BZ2_bzdopen:                           ; @BZ2_bzdopen
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w1, [x29, #-4]
	ldr	x2, [sp]
	mov	x0, #0                          ; =0x0
	mov	w3, #1                          ; =0x1
	bl	_bzopen_or_bzdopen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzread                     ; -- Begin function BZ2_bzread
	.p2align	2
_BZ2_bzread:                            ; @BZ2_bzread
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #5096]
	cmp	w8, #4
	b.ne	LBB32_2
; %bb.1:
	stur	wzr, [x29, #-4]
	b	LBB32_6
LBB32_2:
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	w3, [sp, #20]
	add	x0, sp, #16
	bl	_BZ2_bzRead
	str	w0, [sp, #12]
	ldr	w8, [sp, #16]
	cbz	w8, LBB32_4
; %bb.3:
	ldr	w8, [sp, #16]
	cmp	w8, #4
	b.ne	LBB32_5
LBB32_4:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB32_6
LBB32_5:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
LBB32_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzwrite                    ; -- Begin function BZ2_bzwrite
	.p2align	2
_BZ2_bzwrite:                           ; @BZ2_bzwrite
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	w2, [sp, #4]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	w3, [sp, #4]
	mov	x0, sp
	bl	_BZ2_bzWrite
	ldr	w8, [sp]
	cbnz	w8, LBB33_2
; %bb.1:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	LBB33_3
LBB33_2:
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
LBB33_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzflush                    ; -- Begin function BZ2_bzflush
	.p2align	2
_BZ2_bzflush:                           ; @BZ2_bzflush
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	w0, #0                          ; =0x0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzclose                    ; -- Begin function BZ2_bzclose
	.p2align	2
_BZ2_bzclose:                           ; @BZ2_bzclose
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	cbnz	x8, LBB35_2
; %bb.1:
	b	LBB35_10
LBB35_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	mov	x9, #5012                       ; =0x1394
	add	x8, x8, x9
	ldrb	w8, [x8]
	uxtb	w8, w8
	cbz	w8, LBB35_6
; %bb.3:
	ldur	x1, [x29, #-8]
	sub	x0, x29, #12
	mov	w2, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	mov	x4, #0                          ; =0x0
	bl	_BZ2_bzWriteClose
	ldur	w8, [x29, #-12]
	cbz	w8, LBB35_5
; %bb.4:
	ldur	x1, [x29, #-8]
	mov	x0, #0                          ; =0x0
	mov	w2, #1                          ; =0x1
	mov	x3, #0                          ; =0x0
	mov	x4, #0                          ; =0x0
	bl	_BZ2_bzWriteClose
LBB35_5:
	b	LBB35_7
LBB35_6:
	ldur	x1, [x29, #-8]
	sub	x0, x29, #12
	bl	_BZ2_bzReadClose
LBB35_7:
	ldr	x8, [sp, #8]
	adrp	x9, ___stdinp@GOTPAGE
	ldr	x9, [x9, ___stdinp@GOTPAGEOFF]
	ldr	x9, [x9]
	cmp	x8, x9
	b.eq	LBB35_10
; %bb.8:
	ldr	x8, [sp, #8]
	adrp	x9, ___stdoutp@GOTPAGE
	ldr	x9, [x9, ___stdoutp@GOTPAGEOFF]
	ldr	x9, [x9]
	cmp	x8, x9
	b.eq	LBB35_10
; %bb.9:
	ldr	x0, [sp, #8]
	bl	_fclose
LBB35_10:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_BZ2_bzerror                    ; -- Begin function BZ2_bzerror
	.p2align	2
_BZ2_bzerror:                           ; @BZ2_bzerror
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #5096]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	cmp	w8, #0
	b.le	LBB36_2
; %bb.1:
	str	wzr, [sp, #12]
LBB36_2:
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	mov	w9, #-1                         ; =0xffffffff
	mul	w8, w8, w9
	sxtw	x8, w8
	adrp	x9, _bzerrorstrings@PAGE
	add	x9, x9, _bzerrorstrings@PAGEOFF
	mov	x10, #8                         ; =0x8
	madd	x8, x8, x10, x9
	ldr	x0, [x8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function copy_output_until_stop
_copy_output_until_stop:                ; @copy_output_until_stop
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	strb	wzr, [sp, #7]
LBB37_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8, #32]
	cbnz	w8, LBB37_3
; %bb.2:
	b	LBB37_8
LBB37_3:                                ;   in Loop: Header=BB37_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #120]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #116]
	cmp	w8, w9
	b.lt	LBB37_5
; %bb.4:
	b	LBB37_8
LBB37_5:                                ;   in Loop: Header=BB37_1 Depth=1
	mov	w8, #1                          ; =0x1
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #80]
	ldr	x9, [sp, #8]
	ldrsw	x9, [x9, #120]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	ldr	x9, [x9, #24]
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #120]
	add	w9, w9, #1
	str	w9, [x8, #120]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w9, [x8, #32]
	sub	w9, w9, #1
	str	w9, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [x8, #24]
	add	x9, x9, #1
	str	x9, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w9, [x8, #36]
	add	w9, w9, #1
	str	w9, [x8, #36]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8, #36]
	cbnz	w8, LBB37_7
; %bb.6:                                ;   in Loop: Header=BB37_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w9, [x8, #40]
	add	w9, w9, #1
	str	w9, [x8, #40]
LBB37_7:                                ;   in Loop: Header=BB37_1 Depth=1
	b	LBB37_1
LBB37_8:
	ldrb	w8, [sp, #7]
	uxtb	w0, w8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function copy_input_until_stop
_copy_input_until_stop:                 ; @copy_input_until_stop
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	wzr, [x29, #-9]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	cmp	w8, #2
	b.ne	LBB38_20
; %bb.1:
	b	LBB38_2
LBB38_2:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #108]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #112]
	cmp	w8, w9
	b.lt	LBB38_4
; %bb.3:
	b	LBB38_19
LBB38_4:                                ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	cbnz	w8, LBB38_6
; %bb.5:
	b	LBB38_19
LBB38_6:                                ;   in Loop: Header=BB38_2 Depth=1
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-9]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldrb	w8, [x8]
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	cmp	w8, w9
	b.eq	LBB38_9
; %bb.7:                                ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #96]
	cmp	w8, #1
	b.ne	LBB38_9
; %bb.8:                                ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #92]
	strb	w8, [sp, #15]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #648]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #648]
	lsr	w9, w9, #24
	ldrb	w10, [sp, #15]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldur	x9, [x29, #-8]
	str	w8, [x9, #648]
	ldur	x8, [x29, #-8]
	add	x8, x8, #128
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	add	x8, x8, x9
	mov	w9, #1                          ; =0x1
	strb	w9, [x8]
	ldrb	w8, [sp, #15]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #64]
	ldur	x10, [x29, #-8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #92]
	b	LBB38_16
LBB38_9:                                ;   in Loop: Header=BB38_2 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	cmp	w8, w9
	b.ne	LBB38_11
; %bb.10:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #96]
	cmp	w8, #255
	b.ne	LBB38_14
LBB38_11:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #92]
	cmp	w8, #256
	b.hs	LBB38_13
; %bb.12:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x0, [x29, #-8]
	bl	_add_pair_to_block
LBB38_13:                               ;   in Loop: Header=BB38_2 Depth=1
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #92]
	ldur	x8, [x29, #-8]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #96]
	b	LBB38_15
LBB38_14:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #96]
	add	w9, w9, #1
	str	w9, [x8, #96]
LBB38_15:                               ;   in Loop: Header=BB38_2 Depth=1
	b	LBB38_16
LBB38_16:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8, #12]
	cbnz	w8, LBB38_18
; %bb.17:                               ;   in Loop: Header=BB38_2 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #16]
	add	w9, w9, #1
	str	w9, [x8, #16]
LBB38_18:                               ;   in Loop: Header=BB38_2 Depth=1
	b	LBB38_2
LBB38_19:
	b	LBB38_41
LBB38_20:
	b	LBB38_21
LBB38_21:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #108]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #112]
	cmp	w8, w9
	b.lt	LBB38_23
; %bb.22:
	b	LBB38_40
LBB38_23:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	cbnz	w8, LBB38_25
; %bb.24:
	b	LBB38_40
LBB38_25:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	cbnz	w8, LBB38_27
; %bb.26:
	b	LBB38_40
LBB38_27:                               ;   in Loop: Header=BB38_21 Depth=1
	mov	w8, #1                          ; =0x1
	sturb	w8, [x29, #-9]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldrb	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	cmp	w8, w9
	b.eq	LBB38_30
; %bb.28:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #96]
	cmp	w8, #1
	b.ne	LBB38_30
; %bb.29:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #92]
	strb	w8, [sp, #7]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #648]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #648]
	lsr	w9, w9, #24
	ldrb	w10, [sp, #7]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldur	x9, [x29, #-8]
	str	w8, [x9, #648]
	ldur	x8, [x29, #-8]
	add	x8, x8, #128
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	add	x8, x8, x9
	mov	w9, #1                          ; =0x1
	strb	w9, [x8]
	ldrb	w8, [sp, #7]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #64]
	ldur	x10, [x29, #-8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #92]
	b	LBB38_37
LBB38_30:                               ;   in Loop: Header=BB38_21 Depth=1
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #92]
	cmp	w8, w9
	b.ne	LBB38_32
; %bb.31:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #96]
	cmp	w8, #255
	b.ne	LBB38_35
LBB38_32:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #92]
	cmp	w8, #256
	b.hs	LBB38_34
; %bb.33:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x0, [x29, #-8]
	bl	_add_pair_to_block
LBB38_34:                               ;   in Loop: Header=BB38_21 Depth=1
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #92]
	ldur	x8, [x29, #-8]
	mov	w9, #1                          ; =0x1
	str	w9, [x8, #96]
	b	LBB38_36
LBB38_35:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #96]
	add	w9, w9, #1
	str	w9, [x8, #96]
LBB38_36:                               ;   in Loop: Header=BB38_21 Depth=1
	b	LBB38_37
LBB38_37:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x9, [x8]
	add	x9, x9, #1
	str	x9, [x8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #8]
	sub	w9, w9, #1
	str	w9, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #12]
	add	w9, w9, #1
	str	w9, [x8, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8, #12]
	cbnz	w8, LBB38_39
; %bb.38:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w9, [x8, #16]
	add	w9, w9, #1
	str	w9, [x8, #16]
LBB38_39:                               ;   in Loop: Header=BB38_21 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w9, [x8, #16]
	sub	w9, w9, #1
	str	w9, [x8, #16]
	b	LBB38_21
LBB38_40:
	b	LBB38_41
LBB38_41:
	ldurb	w8, [x29, #-9]
	uxtb	w0, w8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function flush_RL
_flush_RL:                              ; @flush_RL
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #92]
	cmp	w8, #256
	b.hs	LBB39_2
; %bb.1:
	ldr	x0, [sp, #8]
	bl	_add_pair_to_block
LBB39_2:
	ldr	x0, [sp, #8]
	bl	_init_RL
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function add_pair_to_block
_add_pair_to_block:                     ; @add_pair_to_block
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #92]
	strb	w8, [sp, #3]
	str	wzr, [sp, #4]
LBB40_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #96]
	cmp	w8, w9
	b.ge	LBB40_4
; %bb.2:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #648]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #648]
	lsr	w9, w9, #24
	ldrb	w10, [sp, #3]
	eor	w9, w9, w10
	ubfx	x9, x9, #0, #32
	adrp	x10, _BZ2_crc32Table@GOTPAGE
	ldr	x10, [x10, _BZ2_crc32Table@GOTPAGEOFF]
	mov	x11, #4                         ; =0x4
	madd	x9, x9, x11, x10
	ldr	w9, [x9]
	eor	w8, w9, w8, lsl #8
	ldr	x9, [sp, #8]
	str	w8, [x9, #648]
; %bb.3:                                ;   in Loop: Header=BB40_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB40_1
LBB40_4:
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #92]
	add	x8, x8, x9
	mov	w9, #1                          ; =0x1
	strb	w9, [x8, #128]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #96]
	subs	w9, w8, #1
	b.eq	LBB40_7
	b	LBB40_5
LBB40_5:
	subs	w9, w8, #2
	b.eq	LBB40_8
	b	LBB40_6
LBB40_6:
	subs	w8, w8, #3
	b.eq	LBB40_9
	b	LBB40_10
LBB40_7:
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	b	LBB40_11
LBB40_8:
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	b	LBB40_11
LBB40_9:
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	b	LBB40_11
LBB40_10:
	ldr	x8, [sp, #8]
	add	x8, x8, #128
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #96]
	sub	w9, w9, #4
	sxtw	x9, w9
	add	x8, x8, x9
	mov	w9, #1                          ; =0x1
	strb	w9, [x8]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldrb	w8, [sp, #3]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #96]
	sub	w8, w8, #4
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #64]
	ldr	x10, [sp, #8]
	ldrsw	x10, [x10, #108]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #108]
	add	w9, w9, #1
	str	w9, [x8, #108]
LBB40_11:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\n\nbzip2/libbzip2: internal error number %d.\nThis is a bug in bzip2/libbzip2, %s.\nPlease report it to me at: jseward@bzip.org.  If this happened\nwhen you were using some program which uses libbzip2 as a\ncomponent, you should also report this bug to the author(s)\nof that program.  Please make an effort to report this bug;\ntimely and accurate bug reports eventually lead to higher\nquality software.  Thanks.  Julian Seward, 15 February 2005.\n\n"

l_.str.1:                               ; @.str.1
	.asciz	"\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"

l_.str.2:                               ; @.str.2
	.asciz	" {0x%08x, 0x%08x}"

l_.str.3:                               ; @.str.3
	.asciz	"]"

l_.str.4:                               ; @.str.4
	.asciz	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"

l_.str.5:                               ; @.str.5
	.asciz	"1.0.4, 20-Dec-2006"

	.section	__DATA,__data
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

l_.str.9:                               ; @.str.9
	.space	1

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
