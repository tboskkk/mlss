	.syntax unified
	.text

	thumb_func_start sub_80F1A7C
sub_80F1A7C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r3, #0x00]
	cmp r0, #0x3F
	beq _080F1A90
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
_080F1A90:
	adds r3, #0x04
	ldr r1, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_80475A0
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
