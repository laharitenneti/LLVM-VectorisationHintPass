	.build_version macos, 26, 0	sdk_version 26, 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10matrix_addPfS_S_i          ; -- Begin function _Z10matrix_addPfS_S_i
	.p2align	2
__Z10matrix_addPfS_S_i:                 ; @_Z10matrix_addPfS_S_i
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	str	w3, [sp, #44]                   ; 4-byte Folded Spill
	mov	w8, #0                          ; =0x0
	subs	w8, w8, w3
	b.ge	LBB0_5
	b	LBB0_1
LBB0_1:                                 ; %for.body.lr.ph
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_2
LBB0_2:                                 ; %for.body
                                        ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	ldr	s0, [x11, w9, sxtw #2]
	ldr	s1, [x10, w9, sxtw #2]
	fadd	s0, s0, s1
	str	s0, [x8, w9, sxtw #2]
	b	LBB0_3
LBB0_3:                                 ; %for.inc
                                        ;   in Loop: Header=BB0_2 Depth=1
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	add	w8, w8, #1
	subs	w9, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b.lt	LBB0_2
	b	LBB0_4
LBB0_4:                                 ; %for.cond.for.end_crit_edge
	b	LBB0_5
LBB0_5:                                 ; %for.end
	add	sp, sp, #48
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
