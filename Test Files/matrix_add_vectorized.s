	.build_version macos, 26, 0	sdk_version 26, 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10matrix_addPfS_S_i          ; -- Begin function _Z10matrix_addPfS_S_i
	.p2align	2
__Z10matrix_addPfS_S_i:                 ; @_Z10matrix_addPfS_S_i
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
	str	x2, [sp, #64]                   ; 8-byte Folded Spill
	str	w3, [sp, #76]                   ; 4-byte Folded Spill
	str	x1, [sp, #80]                   ; 8-byte Folded Spill
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	str	x2, [sp, #96]                   ; 8-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #108]                  ; 4-byte Folded Spill
	subs	w8, w8, w3
	b.ge	LBB0_17
	b	LBB0_1
LBB0_1:                                 ; %iter.check
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	subs	w9, w9, #4
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_2
LBB0_2:                                 ; %vector.memcheck
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	ldr	x10, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #80]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	subs	x9, x10, x9
	subs	x10, x10, x11
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
	subs	x9, x9, #64
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_3
LBB0_3:                                 ; %vector.memcheck
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	subs	x9, x9, #64
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_4
LBB0_4:                                 ; %vector.main.loop.iter.check
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	mov	w8, #0                          ; =0x0
	subs	w9, w9, #16
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b.lo	LBB0_9
	b	LBB0_5
LBB0_5:                                 ; %vector.ph
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	mov	w10, #16                        ; =0x10
	udiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w9, w8, w9
	subs	w8, w8, w9
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b	LBB0_6
LBB0_6:                                 ; %vector.body
                                        ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #56]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #48]                  ; 8-byte Folded Reload
	add	x12, x12, w8, sxtw #2
	ldr	q3, [x12]
	ldr	q2, [x12, #16]
	ldr	q1, [x12, #32]
	ldr	q0, [x12, #48]
	add	x11, x11, w8, sxtw #2
	ldr	q7, [x11]
	ldr	q6, [x11, #16]
	ldr	q5, [x11, #32]
	ldr	q4, [x11, #48]
	fadd.4s	v3, v3, v7
	fadd.4s	v2, v2, v6
	fadd.4s	v1, v1, v5
	fadd.4s	v0, v0, v4
	add	x10, x10, w8, sxtw #2
	str	q3, [x10]
	str	q2, [x10, #16]
	str	q1, [x10, #32]
	str	q0, [x10, #48]
	add	w8, w8, #16
	subs	w9, w8, w9
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	b.ne	LBB0_6
	b	LBB0_7
LBB0_7:                                 ; %middle.block
	ldr	w8, [sp, #76]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, w9
	b.eq	LBB0_16
	b	LBB0_8
LBB0_8:                                 ; %vec.epilog.iter.check
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	subs	w9, w9, w8
	subs	w9, w9, #4
	mov	x9, x8
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.lo	LBB0_12
	b	LBB0_9
LBB0_9:                                 ; %vec.epilog.ph
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	mov	w11, #4                         ; =0x4
	udiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w10, w9, w10
	subs	w9, w9, w10
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB0_10
LBB0_10:                                ; %vec.epilog.vector.body
                                        ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #56]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #48]                  ; 8-byte Folded Reload
                                        ; implicit-def: $x13
	mov	x13, x8
	sxtw	x13, w13
	lsl	x13, x13, #2
	ldr	q0, [x12, x13]
                                        ; implicit-def: $x12
	mov	x12, x8
	sxtw	x12, w12
	lsl	x12, x12, #2
	ldr	q1, [x11, x12]
	fadd.4s	v0, v0, v1
                                        ; implicit-def: $x11
	mov	x11, x8
	sxtw	x11, w11
	lsl	x11, x11, #2
	str	q0, [x10, x11]
	add	w8, w8, #4
	subs	w9, w8, w9
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b.ne	LBB0_10
	b	LBB0_11
LBB0_11:                                ; %vec.epilog.middle.block
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	subs	w9, w9, w8
	str	w8, [sp, #44]                   ; 4-byte Folded Spill
	b.eq	LBB0_16
	b	LBB0_12
LBB0_12:                                ; %vec.epilog.scalar.ph
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB0_13
LBB0_13:                                ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	ldr	w9, [sp, #8]                    ; 4-byte Folded Reload
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	ldr	s0, [x11, w9, sxtw #2]
	ldr	s1, [x10, w9, sxtw #2]
	fadd	s0, s0, s1
	str	s0, [x8, w9, sxtw #2]
	b	LBB0_14
LBB0_14:                                ; %for.inc
                                        ;   in Loop: Header=BB0_13 Depth=1
	ldr	w9, [sp, #76]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, w9
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b.lt	LBB0_13
	b	LBB0_15
LBB0_15:                                ; %for.cond.for.end_crit_edge.loopexit
	b	LBB0_16
LBB0_16:                                ; %for.cond.for.end_crit_edge
	b	LBB0_17
LBB0_17:                                ; %for.end
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	adrp	x8, l___const.main.A@PAGE
	add	x8, x8, l___const.main.A@PAGEOFF
	ldr	q0, [x8]
	add	x0, sp, #32
	str	q0, [sp, #32]
	adrp	x8, l___const.main.B@PAGE
	add	x8, x8, l___const.main.B@PAGEOFF
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	mov	x2, sp
	mov	w3, #4                          ; =0x4
	bl	__Z10matrix_addPfS_S_i
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB1_2
	b	LBB1_1
LBB1_1:                                 ; %entry
	bl	___stack_chk_fail
LBB1_2:                                 ; %entry
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	2, 0x0                          ; @__const.main.A
l___const.main.A:
	.long	0x3f800000                      ; float 1
	.long	0x40000000                      ; float 2
	.long	0x40400000                      ; float 3
	.long	0x40800000                      ; float 4

	.p2align	2, 0x0                          ; @__const.main.B
l___const.main.B:
	.long	0x40a00000                      ; float 5
	.long	0x40c00000                      ; float 6
	.long	0x40e00000                      ; float 7
	.long	0x41000000                      ; float 8

.subsections_via_symbols
