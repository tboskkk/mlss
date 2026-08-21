	.syntax unified
	.text

	thumb_func_start sub_80F032C
sub_80F032C:
	push {r4, lr}
	ldr r4, _080F0348 @ =0x03000FCC
	ldr r0, [r4, #0x00]
	movs r1, #0x04
	bl sub_80E6FB8
	ldr r0, [r4, #0x00]
	movs r1, #0x10
	bl sub_80E7118
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F0348: .4byte 0x03000FCC
