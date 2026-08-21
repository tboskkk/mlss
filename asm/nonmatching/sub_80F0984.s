	.syntax unified
	.text

	thumb_func_start sub_80F0984
sub_80F0984:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_8027378
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _080F099A
	movs r0, #0x01
	b _080F09A0
_080F099A:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F09A0:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
