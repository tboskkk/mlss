	.syntax unified
	.text

	thumb_func_start sub_80F0F60
sub_80F0F60:
	push {r4, lr}
	adds r2, r1, #0x0
	ldr r1, [r3, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F0F76
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
_080F0F76:
	movs r0, #0x01
	ands r1, r0
	adds r3, #0x04
	cmp r1, #0x00
	beq _080F0F82
	movs r0, #0x10
_080F0F82:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r2, r1
	adds r1, r0, #0x0
	ldm r3!, {r0}
	muls r0, r1
	strh r0, [r2, #0x30]
	ldr r0, [r3, #0x00]
	muls r0, r1
	strh r0, [r2, #0x32]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
