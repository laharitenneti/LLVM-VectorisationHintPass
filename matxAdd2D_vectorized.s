	.build_version macos, 26, 0	sdk_version 26, 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10matrix_addPA1000_fS0_S0_   ; -- Begin function _Z10matrix_addPA1000_fS0_S0_
	.p2align	2
__Z10matrix_addPA1000_fS0_S0_:          ; @_Z10matrix_addPA1000_fS0_S0_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	str	x1, [sp, #88]                   ; 8-byte Folded Spill
	str	x2, [sp, #96]                   ; 8-byte Folded Spill
	subs	x8, x2, x0
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	subs	x8, x2, x1
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #120]                  ; 4-byte Folded Spill
	str	w8, [sp, #124]                  ; 4-byte Folded Spill
	b	LBB0_1
LBB0_1:                                 ; %iter.check
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
	ldr	w9, [sp, #120]                  ; 4-byte Folded Reload
	ldr	w8, [sp, #124]                  ; 4-byte Folded Reload
	str	w8, [sp, #72]                   ; 4-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w9, [sp, #76]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_12
	b	LBB0_2
LBB0_2:                                 ; %vector.memcheck
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #120]                  ; 4-byte Folded Reload
	ldr	x9, [sp, #104]                  ; 8-byte Folded Reload
	subs	x9, x9, #64
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_3
LBB0_3:                                 ; %vector.memcheck
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #120]                  ; 4-byte Folded Reload
	ldr	x9, [sp, #112]                  ; 8-byte Folded Reload
	subs	x9, x9, #64
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_4
LBB0_4:                                 ; %vector.main.loop.iter.check
                                        ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0                          ; =0x0
	mov	x9, x8
	str	w9, [sp, #68]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_9
	b	LBB0_5
LBB0_5:                                 ; %vector.ph
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #88]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #80]                  ; 8-byte Folded Reload
	mov	w9, #4000                       ; =0xfa0
	smaddl	x9, w8, w9, x12
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	mov	w9, #4000                       ; =0xfa0
	smaddl	x9, w8, w9, x11
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	mov	w9, #4000                       ; =0xfa0
	smaddl	x8, w8, w9, x10
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b	LBB0_6
LBB0_6:                                 ; %vector.body
                                        ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #48]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #40]                  ; 8-byte Folded Reload
	add	x11, x11, w8, sxtw #2
	ldr	q3, [x11]
	ldr	q2, [x11, #16]
	ldr	q1, [x11, #32]
	ldr	q0, [x11, #48]
	add	x10, x10, w8, sxtw #2
	ldr	q7, [x10]
	ldr	q6, [x10, #16]
	ldr	q5, [x10, #32]
	ldr	q4, [x10, #48]
	fadd.4s	v3, v3, v7
	fadd.4s	v2, v2, v6
	fadd.4s	v1, v1, v5
	fadd.4s	v0, v0, v4
	add	x9, x9, w8, sxtw #2
	str	q3, [x9]
	str	q2, [x9, #16]
	str	q1, [x9, #32]
	str	q0, [x9, #48]
	add	w8, w8, #16
	subs	w9, w8, #992
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	b.ne	LBB0_6
	b	LBB0_7
LBB0_7:                                 ; %middle.block
                                        ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #0                          ; =0x0
	tbnz	w8, #0, LBB0_16
	b	LBB0_8
LBB0_8:                                 ; %vec.epilog.iter.check
                                        ;   in Loop: Header=BB0_1 Depth=1
	mov	w9, #992                        ; =0x3e0
	mov	w8, #0                          ; =0x0
	mov	x10, x9
	str	w10, [sp, #68]                  ; 4-byte Folded Spill
	str	w9, [sp, #76]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_12
	b	LBB0_9
LBB0_9:                                 ; %vec.epilog.ph
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #72]                   ; 4-byte Folded Reload
	ldr	x11, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #88]                  ; 8-byte Folded Reload
	ldr	x13, [sp, #80]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w9, w10, x13
	str	x10, [sp, #8]                   ; 8-byte Folded Spill
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w9, w10, x12
	str	x10, [sp, #16]                  ; 8-byte Folded Spill
	mov	w10, #4000                      ; =0xfa0
	smaddl	x9, w9, w10, x11
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB0_10
LBB0_10:                                ; %vec.epilog.vector.body
                                        ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
                                        ; implicit-def: $x12
	mov	x12, x8
	sxtw	x12, w12
	lsl	x12, x12, #2
	ldr	q0, [x11, x12]
                                        ; implicit-def: $x11
	mov	x11, x8
	sxtw	x11, w11
	lsl	x11, x11, #2
	ldr	q1, [x10, x11]
	fadd.4s	v0, v0, v1
                                        ; implicit-def: $x10
	mov	x10, x8
	sxtw	x10, w10
	lsl	x10, x10, #2
	str	q0, [x9, x10]
	add	w8, w8, #4
	subs	w9, w8, #1000
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b.ne	LBB0_10
	b	LBB0_11
LBB0_11:                                ; %vec.epilog.middle.block
                                        ;   in Loop: Header=BB0_1 Depth=1
	mov	w9, #1000                       ; =0x3e8
	mov	w8, #1                          ; =0x1
	str	w9, [sp, #76]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_16
	b	LBB0_12
LBB0_12:                                ; %vec.epilog.scalar.ph
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_13
LBB0_13:                                ; %for.body3
                                        ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	ldr	x11, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #88]                  ; 8-byte Folded Reload
	ldr	x13, [sp, #80]                  ; 8-byte Folded Reload
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	str	w9, [sp]                        ; 4-byte Folded Spill
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w8, w10, x13
	ldr	s0, [x10, w9, sxtw #2]
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w8, w10, x12
	ldr	s1, [x10, w9, sxtw #2]
	fadd	s0, s0, s1
	mov	w10, #4000                      ; =0xfa0
	smaddl	x8, w8, w10, x11
	str	s0, [x8, w9, sxtw #2]
	b	LBB0_14
LBB0_14:                                ; %for.inc
                                        ;   in Loop: Header=BB0_13 Depth=2
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, #1000
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b.lt	LBB0_13
	b	LBB0_15
LBB0_15:                                ; %for.end.loopexit
                                        ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_16
LBB0_16:                                ; %for.end
                                        ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_17
LBB0_17:                                ; %for.inc14
                                        ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #72]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, #1000
	str	w8, [sp, #124]                  ; 4-byte Folded Spill
	b.lt	LBB0_1
	b	LBB0_18
LBB0_18:                                ; %for.end16
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function main
lCPI1_0:
	.long	0                               ; 0x0
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #288
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	movi.4s	v0, #4
	stur	q0, [x29, #-96]                 ; 16-byte Folded Spill
	mov	w8, #0                          ; =0x0
	adrp	x9, lCPI1_0@PAGE
	ldr	q0, [x9, lCPI1_0@PAGEOFF]
	stur	q0, [x29, #-80]                 ; 16-byte Folded Spill
	stur	w8, [x29, #-52]                 ; 4-byte Folded Spill
	b	LBB1_1
LBB1_1:                                 ; %iter.check
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
                                        ;     Child Loop BB1_8 Depth 2
                                        ;     Child Loop BB1_11 Depth 2
	ldur	w8, [x29, #-52]                 ; 4-byte Folded Reload
	stur	w8, [x29, #-104]                ; 4-byte Folded Spill
	mov	w8, #0                          ; =0x0
	mov	x9, x8
	stur	w9, [x29, #-100]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB1_10
	b	LBB1_2
LBB1_2:                                 ; %vector.main.loop.iter.check
                                        ;   in Loop: Header=BB1_1 Depth=1
	mov	w8, #0                          ; =0x0
	mov	x9, x8
	stur	w9, [x29, #-108]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB1_7
	b	LBB1_3
LBB1_3:                                 ; %vector.ph
                                        ;   in Loop: Header=BB1_1 Depth=1
	ldur	q0, [x29, #-80]                 ; 16-byte Folded Reload
	ldur	w8, [x29, #-104]                ; 4-byte Folded Reload
	adrp	x10, __ZZ4mainE1A@PAGE
	add	x10, x10, __ZZ4mainE1A@PAGEOFF
	mov	w9, #4000                       ; =0xfa0
	smaddl	x9, w8, w9, x10
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
	adrp	x10, __ZZ4mainE1B@PAGE
	add	x10, x10, __ZZ4mainE1B@PAGEOFF
	mov	w9, #4000                       ; =0xfa0
	smaddl	x9, w8, w9, x10
	str	x9, [sp, #104]                  ; 8-byte Folded Spill
	dup.4s	v1, w8
	str	q1, [sp, #112]                  ; 16-byte Folded Spill
	mov	w8, #0                          ; =0x0
	stur	w8, [x29, #-132]                ; 4-byte Folded Spill
	stur	q0, [x29, #-128]                ; 16-byte Folded Spill
	b	LBB1_4
LBB1_4:                                 ; %vector.body
                                        ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	q5, [x29, #-128]                ; 16-byte Folded Reload
	ldur	w8, [x29, #-132]                ; 4-byte Folded Reload
	ldur	q1, [x29, #-96]                 ; 16-byte Folded Reload
	ldr	x9, [sp, #104]                  ; 8-byte Folded Reload
	ldr	q2, [sp, #112]                  ; 16-byte Folded Reload
	ldr	x10, [sp, #96]                  ; 8-byte Folded Reload
	add.4s	v4, v5, v1
	add.4s	v3, v4, v1
	add.4s	v0, v3, v1
	add.4s	v17, v2, v5
	add.4s	v16, v2, v4
	add.4s	v7, v2, v3
	add.4s	v6, v2, v0
	scvtf.4s	v17, v17
	scvtf.4s	v16, v16
	scvtf.4s	v7, v7
	scvtf.4s	v6, v6
	add	x10, x10, w8, sxtw #2
	str	q17, [x10]
	str	q16, [x10, #16]
	str	q7, [x10, #32]
	str	q6, [x10, #48]
	mul.4s	v5, v2, v5
	mul.4s	v4, v2, v4
	mul.4s	v3, v2, v3
	mul.4s	v2, v2, v0
	scvtf.4s	v5, v5
	scvtf.4s	v4, v4
	scvtf.4s	v3, v3
	scvtf.4s	v2, v2
	add	x9, x9, w8, sxtw #2
	str	q5, [x9]
	str	q4, [x9, #16]
	str	q3, [x9, #32]
	str	q2, [x9, #48]
	add	w8, w8, #16
	add.4s	v0, v0, v1
	subs	w9, w8, #992
	stur	w8, [x29, #-132]                ; 4-byte Folded Spill
	stur	q0, [x29, #-128]                ; 16-byte Folded Spill
	b.ne	LBB1_4
	b	LBB1_5
LBB1_5:                                 ; %middle.block
                                        ;   in Loop: Header=BB1_1 Depth=1
	mov	w8, #0                          ; =0x0
	tbnz	w8, #0, LBB1_14
	b	LBB1_6
LBB1_6:                                 ; %vec.epilog.iter.check
                                        ;   in Loop: Header=BB1_1 Depth=1
	mov	w9, #992                        ; =0x3e0
	mov	w8, #0                          ; =0x0
	mov	x10, x9
	stur	w10, [x29, #-108]               ; 4-byte Folded Spill
	stur	w9, [x29, #-100]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB1_10
	b	LBB1_7
LBB1_7:                                 ; %vec.epilog.ph
                                        ;   in Loop: Header=BB1_1 Depth=1
	ldur	q1, [x29, #-80]                 ; 16-byte Folded Reload
	ldur	w9, [x29, #-104]                ; 4-byte Folded Reload
	ldur	w8, [x29, #-108]                ; 4-byte Folded Reload
	adrp	x11, __ZZ4mainE1A@PAGE
	add	x11, x11, __ZZ4mainE1A@PAGEOFF
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w9, w10, x11
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
	adrp	x11, __ZZ4mainE1B@PAGE
	add	x11, x11, __ZZ4mainE1B@PAGEOFF
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w9, w10, x11
	str	x10, [sp, #40]                  ; 8-byte Folded Spill
	dup.4s	v0, w9
	str	q0, [sp, #48]                   ; 16-byte Folded Spill
	dup.4s	v0, w8
	add.4s	v0, v0, v1
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	str	q0, [sp, #80]                   ; 16-byte Folded Spill
	b	LBB1_8
LBB1_8:                                 ; %vec.epilog.vector.body
                                        ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	q0, [sp, #80]                   ; 16-byte Folded Reload
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	ldur	q1, [x29, #-96]                 ; 16-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldr	q2, [sp, #48]                   ; 16-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	add.4s	v3, v2, v0
	scvtf.4s	v3, v3
                                        ; implicit-def: $x11
	mov	x11, x8
	sxtw	x11, w11
	lsl	x11, x11, #2
	str	q3, [x10, x11]
	mul.4s	v2, v2, v0
	scvtf.4s	v2, v2
                                        ; implicit-def: $x10
	mov	x10, x8
	sxtw	x10, w10
	lsl	x10, x10, #2
	str	q2, [x9, x10]
	add	w8, w8, #4
	add.4s	v0, v0, v1
	subs	w9, w8, #1000
	str	w8, [sp, #76]                   ; 4-byte Folded Spill
	str	q0, [sp, #80]                   ; 16-byte Folded Spill
	b.ne	LBB1_8
	b	LBB1_9
LBB1_9:                                 ; %vec.epilog.middle.block
                                        ;   in Loop: Header=BB1_1 Depth=1
	mov	w9, #1000                       ; =0x3e8
	mov	w8, #1                          ; =0x1
	stur	w9, [x29, #-100]                ; 4-byte Folded Spill
	tbnz	w8, #0, LBB1_14
	b	LBB1_10
LBB1_10:                                ; %vec.epilog.scalar.ph
                                        ;   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-100]                ; 4-byte Folded Reload
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB1_11
LBB1_11:                                ; %for.body3
                                        ;   Parent Loop BB1_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-104]                ; 4-byte Folded Reload
	ldr	w9, [sp, #28]                   ; 4-byte Folded Reload
	str	w9, [sp, #24]                   ; 4-byte Folded Spill
	add	w10, w8, w9
	scvtf	s0, w10
	adrp	x11, __ZZ4mainE1A@PAGE
	add	x11, x11, __ZZ4mainE1A@PAGEOFF
	mov	w10, #4000                      ; =0xfa0
	smaddl	x10, w8, w10, x11
	str	s0, [x10, w9, sxtw #2]
	mul	w10, w8, w9
	scvtf	s0, w10
	adrp	x11, __ZZ4mainE1B@PAGE
	add	x11, x11, __ZZ4mainE1B@PAGEOFF
	mov	w10, #4000                      ; =0xfa0
	smaddl	x8, w8, w10, x11
	str	s0, [x8, w9, sxtw #2]
	b	LBB1_12
LBB1_12:                                ; %for.inc
                                        ;   in Loop: Header=BB1_11 Depth=2
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, #1000
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b.lt	LBB1_11
	b	LBB1_13
LBB1_13:                                ; %for.end.loopexit
                                        ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_14
LBB1_14:                                ; %for.end
                                        ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_15
LBB1_15:                                ; %for.inc11
                                        ;   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-104]                ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, #1000
	stur	w8, [x29, #-52]                 ; 4-byte Folded Spill
	b.lt	LBB1_1
	b	LBB1_16
LBB1_16:                                ; %for.end13
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-24]
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB1_17
LBB1_17:                                ; %for.body17
                                        ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	adrp	x0, __ZZ4mainE1A@PAGE
	add	x0, x0, __ZZ4mainE1A@PAGEOFF
	adrp	x1, __ZZ4mainE1B@PAGE
	add	x1, x1, __ZZ4mainE1B@PAGEOFF
	adrp	x2, __ZZ4mainE1C@PAGE
	add	x2, x2, __ZZ4mainE1C@PAGEOFF
	bl	__Z10matrix_addPA1000_fS0_S0_
	b	LBB1_18
LBB1_18:                                ; %for.inc18
                                        ;   in Loop: Header=BB1_17 Depth=1
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, #1000
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b.lt	LBB1_17
	b	LBB1_19
LBB1_19:                                ; %for.end20
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	sub	x1, x29, #24
	bl	__ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	mov	x8, x0
	sub	x0, x29, #48
	stur	x8, [x29, #-48]
	bl	__ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE
	mov	x8, x0
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev
	mov	x1, x0
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	w8, #33920                      ; =0x8480
	movk	w8, #30, lsl #16
	mov	x9, x8
	adrp	x8, __ZZ4mainE1C@PAGE
	add	x8, x8, __ZZ4mainE1C@PAGEOFF
	add	x8, x8, x9
	ldr	s0, [x8, #2000]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne210104INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x1
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB8ne210104INS0_8durationIxNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEETnNS_9enable_ifIX15__is_duration_vIT_EEiE4typeELi0EEES8_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x1, x0
	add	x0, sp, #7
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB8ne210104INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	sub	x9, x29, #16
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
	bl	__ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x0, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_ ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne210104ERKS5_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, x1
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
                                        ; kill: def $x8 killed $w8
	sdiv	x8, x0, x8
	mov	x1, sp
	str	x8, [sp]
	add	x0, sp, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x0, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x8, [x1]
	str	x8, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB8ne210104IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x1]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne210104Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	sub	x1, x29, #16
	stur	x8, [x29, #-16]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	ldr	x8, [x0]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne210104IxTnNS_9enable_ifIXaasr14is_convertibleIRKT_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS7_EE5valueEiE4typeELi0EEES9_
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x8, [x1]
	str	x8, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne210104IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:                                ; %entry
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-56]                 ; 8-byte Folded Spill
	mov	x8, x1
	ldur	x1, [x29, #-56]                 ; 8-byte Folded Reload
	stur	x8, [x29, #-48]                 ; 8-byte Folded Spill
	stur	x2, [x29, #-40]                 ; 8-byte Folded Spill
Ltmp2:
	sub	x0, x29, #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp3:
	b	LBB14_1
LBB14_1:                                ; %invoke.cont
Ltmp5:
	sub	x0, x29, #16
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev
	stur	w0, [x29, #-60]                 ; 4-byte Folded Spill
Ltmp6:
	b	LBB14_2
LBB14_2:                                ; %invoke.cont2
	ldur	w8, [x29, #-60]                 ; 4-byte Folded Reload
	tbz	w8, #0, LBB14_18
	b	LBB14_3
LBB14_3:                                ; %if.then
	ldur	x1, [x29, #-56]                 ; 8-byte Folded Reload
	sub	x0, x29, #32
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp7:
	bl	__ZNKSt3__18ios_base5flagsB8ne210104Ev
	stur	w0, [x29, #-64]                 ; 4-byte Folded Spill
Ltmp8:
	b	LBB14_4
LBB14_4:                                ; %invoke.cont5
	ldur	w8, [x29, #-64]                 ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	b.ne	LBB14_6
	b	LBB14_5
LBB14_5:                                ; %cond.true
	ldur	x8, [x29, #-48]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-40]                 ; 8-byte Folded Reload
	add	x8, x8, x9
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB14_7
LBB14_6:                                ; %cond.false
	ldur	x8, [x29, #-48]                 ; 8-byte Folded Reload
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB14_7
LBB14_7:                                ; %cond.end
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-48]                 ; 8-byte Folded Reload
	ldur	x10, [x29, #-40]                ; 8-byte Folded Reload
	ldr	x11, [sp, #72]                  ; 8-byte Folded Reload
	str	x11, [sp, #40]                  ; 8-byte Folded Spill
	add	x9, x9, x10
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldur	x10, [x9, #-24]
	mov	x9, x8
	add	x9, x9, x10
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp9:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp10:
	b	LBB14_8
LBB14_8:                                ; %invoke.cont17
	ldr	w5, [sp, #68]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]                 ; 8-byte Folded Reload
	ldur	x0, [x29, #-32]
Ltmp11:
	bl	__ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp12:
	b	LBB14_9
LBB14_9:                                ; %invoke.cont19
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev
	tbz	w0, #0, LBB14_17
	b	LBB14_10
LBB14_10:                               ; %if.then23
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp13:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej
Ltmp14:
	b	LBB14_11
LBB14_11:                               ; %invoke.cont28
	b	LBB14_17
LBB14_12:                               ; %lpad
Ltmp4:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB14_14
LBB14_13:                               ; %lpad1
Ltmp15:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB14_14
LBB14_14:                               ; %catch
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp16:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp17:
	b	LBB14_15
LBB14_15:                               ; %invoke.cont37
	bl	___cxa_end_catch
	b	LBB14_16
LBB14_16:                               ; %try.cont
	ldur	x0, [x29, #-56]                 ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB14_17:                               ; %if.end
	b	LBB14_18
LBB14_18:                               ; %if.end29
	sub	x0, x29, #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB14_16
LBB14_19:                               ; %lpad36
Ltmp18:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp19:
	bl	___cxa_end_catch
Ltmp20:
	b	LBB14_20
LBB14_20:                               ; %invoke.cont38
	b	LBB14_21
LBB14_21:                               ; %eh.resume
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Unwind_Resume
LBB14_22:                               ; %terminate.lpad
Ltmp21:
	bl	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp14-Ltmp5                   ;   Call between Ltmp5 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 3 <<
	.uleb128 Ltmp16-Ltmp14                  ;   Call between Ltmp14 and Ltmp16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.uleb128 Ltmp18-Lfunc_begin0            ;     jumps to Ltmp18
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp19-Ltmp17                  ;   Call between Ltmp17 and Ltmp19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp20-Ltmp19                  ;   Call between Ltmp19 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp20              ;   Call between Ltmp20 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne210104EPKc
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldrb	w8, [x0]
	and	w0, w8, #0x1
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne210104IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:                                ; %entry
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-80]                 ; 8-byte Folded Spill
	stur	x2, [x29, #-72]                 ; 8-byte Folded Spill
	stur	x3, [x29, #-64]                 ; 8-byte Folded Spill
	stur	x4, [x29, #-56]                 ; 8-byte Folded Spill
	stur	w5, [x29, #-44]                 ; 4-byte Folded Spill
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB17_2
	b	LBB17_1
LBB17_1:                                ; %if.then
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB17_23
LBB17_2:                                ; %if.end
	ldur	x0, [x29, #-56]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-64]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-80]                 ; 8-byte Folded Reload
	subs	x8, x8, x9
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base5widthB8ne210104Ev
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	subs	x8, x0, x8
	b.le	LBB17_4
	b	LBB17_3
LBB17_3:                                ; %if.then2
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB17_5
LBB17_4:                                ; %if.else
	mov	x8, #0                          ; =0x0
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB17_5
LBB17_5:                                ; %if.end3
	ldur	x8, [x29, #-72]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-80]                 ; 8-byte Folded Reload
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
	str	x10, [sp, #56]                  ; 8-byte Folded Spill
	subs	x8, x8, x9
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	subs	x8, x8, #0
	b.le	LBB17_9
	b	LBB17_6
LBB17_6:                                ; %if.then8
	ldr	x2, [sp, #64]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-80]                 ; 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.eq	LBB17_8
	b	LBB17_7
LBB17_7:                                ; %if.then12
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB17_23
LBB17_8:                                ; %if.end14
	b	LBB17_9
LBB17_9:                                ; %if.end15
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	subs	x8, x8, #0
	b.le	LBB17_18
	b	LBB17_10
LBB17_10:                               ; %if.then17
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldur	w2, [x29, #-44]                 ; 4-byte Folded Reload
	sub	x0, x29, #40
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev
	ldr	x2, [sp, #56]                   ; 8-byte Folded Reload
	mov	x1, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
Ltmp22:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp23:
	b	LBB17_11
LBB17_11:                               ; %invoke.cont
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	b.eq	LBB17_14
	b	LBB17_12
LBB17_12:                               ; %if.then23
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB17_15
LBB17_13:                               ; %lpad
Ltmp24:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB17_24
LBB17_14:                               ; %if.end25
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB17_15
LBB17_15:                               ; %cleanup
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	sub	x0, x29, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	cbz	w8, LBB17_17
	b	LBB17_16
LBB17_16:                               ; %cleanup
	b	LBB17_23
LBB17_17:                               ; %cleanup.cont
	b	LBB17_18
LBB17_18:                               ; %if.end28
	ldur	x8, [x29, #-64]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-72]                 ; 8-byte Folded Reload
	subs	x8, x8, x9
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #0
	b.le	LBB17_22
	b	LBB17_19
LBB17_19:                               ; %if.then33
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	ldur	x1, [x29, #-72]                 ; 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x0, x8
	b.eq	LBB17_21
	b	LBB17_20
LBB17_20:                               ; %if.then37
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB17_23
LBB17_21:                               ; %if.end39
	b	LBB17_22
LBB17_22:                               ; %if.end40
	ldur	x0, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne210104El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB17_23
LBB17_23:                               ; %return
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB17_24:                               ; %eh.resume
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__Unwind_Resume
; %bb.25:                               ; %unreachable
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp22-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin1            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp23              ;   Call between Ltmp23 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne210104ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne210104Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne210104Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne210104Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne210104Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne210104Ev: ; @_ZNKSt3__18ios_base5flagsB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	w0, [x0, #8]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, x0, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev
	tbnz	w0, #0, LBB20_2
	b	LBB20_1
LBB20_1:                                ; %if.then
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x1, x0
	add	x0, x8, #144
	bl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei
	b	LBB20_2
LBB20_2:                                ; %if.end
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #144
	bl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x8, [x0]
	subs	x8, x8, #0
	cset	w0, eq
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne210104Ej
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__18ios_base8setstateB8ne210104Ej
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB8ne210104Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne210104Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne210104Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne210104Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne210104Ev: ; @_ZNKSt3__18ios_base5widthB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x0, [x0, #24]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne210104EPKcl
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne210104Emc
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev
	bl	__ZNSt3__112__to_addressB8ne210104IcEEPT_S2_
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne210104El ; -- Begin function _ZNSt3__18ios_base5widthB8ne210104El
	.globl	__ZNSt3__18ios_base5widthB8ne210104El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne210104El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne210104El:  ; @_ZNSt3__18ios_base5widthB8ne210104El
	.cfi_startproc
; %bb.0:                                ; %entry
	mov	x8, x0
	ldr	x0, [x8, #24]
	str	x1, [x8, #24]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne210104Emc
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	stur	w2, [x29, #-12]                 ; 4-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC1B8ne210104Ev
	ldur	x0, [x29, #-8]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldur	w2, [x29, #-12]                 ; 4-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldur	x0, [x29, #-8]                  ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC1B8ne210104Ev ; -- Begin function _ZNSt3__19allocatorIcEC1B8ne210104Ev
	.globl	__ZNSt3__19allocatorIcEC1B8ne210104Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC1B8ne210104Ev
	.p2align	2
__ZNSt3__19allocatorIcEC1B8ne210104Ev:  ; @_ZNSt3__19allocatorIcEC1B8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne210104Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne210104Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne210104Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne210104Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne210104Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne210104Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne210104IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne210104IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne210104IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne210104IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne210104IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne210104IcEEPT_S2_
	.cfi_startproc
; %bb.0:                                ; %entry
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev
	tbz	w0, #0, LBB34_2
	b	LBB34_1
LBB34_1:                                ; %cond.true
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB34_3
LBB34_2:                                ; %cond.false
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB34_3
LBB34_3:                                ; %cond.end
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	subs	w8, w8, #0
	cset	w0, ne
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x0, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne210104ERc
	.cfi_startproc
; %bb.0:                                ; %entry
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne210104ERNS_13basic_ostreamIcS2_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x1]
	ldur	x8, [x8, #-24]
Ltmp25:
	add	x0, x1, x8
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp26:
	b	LBB39_1
LBB39_1:                                ; %invoke.cont
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB39_2:                                ; %terminate.lpad
Ltmp27:
	bl	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table39:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp25-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin2            ;     jumps to Ltmp27
	.byte	1                               ;   On action: 1
Lcst_end2:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNKSt3__18ios_base5rdbufB8ne210104Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne210104Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne210104Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne210104Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne210104Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne210104Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	x0, [x0, #40]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE8__is_setB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	w8, [x0]
	stur	w8, [x29, #-4]                  ; 4-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofB8ne210104Ev
	ldur	w8, [x29, #-4]                  ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w0, ne
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne210104Ec
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:                                ; %entry
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w1, [sp, #20]                   ; 4-byte Folded Spill
	sub	x8, x29, #8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
Ltmp28:
	bl	__ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
Ltmp29:
	b	LBB43_1
LBB43_1:                                ; %invoke.cont
Ltmp30:
	ldr	w1, [sp, #20]                   ; 4-byte Folded Reload
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__15ctypeIcE5widenB8ne210104Ec
	str	w0, [sp, #16]                   ; 4-byte Folded Spill
Ltmp31:
	b	LBB43_2
LBB43_2:                                ; %invoke.cont2
	sub	x0, x29, #8
	bl	__ZNSt3__16localeD1Ev
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB43_3:                                ; %lpad
Ltmp32:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #8
	bl	__ZNSt3__16localeD1Ev
	b	LBB43_4
LBB43_4:                                ; %eh.resume
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table43:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp28-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp31-Ltmp28                  ;   Call between Ltmp28 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin3            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp31              ;   Call between Ltmp31 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei ; -- Begin function _ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei
	.globl	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei
	.weak_definition	__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei
	.p2align	2
__ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei: ; @_ZNSt3__118_SentinelValueFillINS_11char_traitsIcEEEaSB8ne210104Ei
	.cfi_startproc
; %bb.0:                                ; %entry
	str	w1, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev ; -- Begin function _ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev
	.globl	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev
	.weak_definition	__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev
	.p2align	2
__ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev: ; @_ZNKSt3__118_SentinelValueFillINS_11char_traitsIcEEE5__getB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	ldr	w0, [x0]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne210104Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne210104Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne210104Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne210104Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne210104Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne210104Ev
	.cfi_startproc
; %bb.0:                                ; %entry
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne210104INS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne210104Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne210104Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne210104Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne210104Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne210104Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne210104Ec
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne210104Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne210104Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne210104Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne210104Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne210104Ej: ; @_ZNSt3__18ios_base8setstateB8ne210104Ej
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	w8, [x0, #32]
	orr	w1, w8, w1
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_ ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_
	.globl	__ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_: ; @_ZNSt3__118__constexpr_strlenB8ne210104IcEEmPKT_
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_strlen
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,__ZZ4mainE1A,4000000,2 ; @_ZZ4mainE1A
.zerofill __DATA,__bss,__ZZ4mainE1B,4000000,2 ; @_ZZ4mainE1B
.zerofill __DATA,__bss,__ZZ4mainE1C,4000000,2 ; @_ZZ4mainE1C
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" ms\n"

l_.str.1:                               ; @.str.1
	.asciz	"\n"

.subsections_via_symbols
