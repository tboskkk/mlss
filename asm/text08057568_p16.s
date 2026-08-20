	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7E84
sub_80F7E84:
	push {r4, lr}
	adds r4, r1, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7E96
	movs r0, #0x01
	b _080F7E9C
_080F7E96:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F7E9C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
