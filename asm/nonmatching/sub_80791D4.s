	.syntax unified
	.text

	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
