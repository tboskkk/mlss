	.syntax unified
	.text

	thumb_func_start sub_80EF2EC
sub_80EF2EC:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	ldr r0, _080EF344 @ =0x03000FD0
	ldr r4, [r0, #0x00]
	ldr r0, _080EF348 @ =0x0000054A
	adds r2, r4, r0
	ldr r1, [r3, #0x00]
	movs r5, #0x01
	adds r0, r5, #0x0
	lsls r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldm r3!, {r1}
	movs r0, #0x2C
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r4, r4, r0
	ldm r3!, {r0}
	strb r0, [r4, #0x09]
	ldm r3!, {r0}
	strb r0, [r4, #0x0A]
	ldm r3!, {r1}
	ands r1, r5
	ldrb r2, [r4, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0B]
	ldm r3!, {r0}
	strb r0, [r4, #0x08]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x04]
	cmp r6, #0x00
	beq _080EF33A
	str r6, [r4, #0x00]
_080EF33A:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EF344: .4byte 0x03000FD0
_080EF348: .4byte 0x0000054A
