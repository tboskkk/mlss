	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA4
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0806900E
	movs r0, #0x00
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08068FA0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	b _08068FB4
_08068FA0:
	adds r1, r5, #0x0
	adds r1, #0x84
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
_08068FB4:
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _08069000 @ =0x080693BD
	str r0, [r5, #0x4C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069004
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _0806900E
_08069000: .4byte sub_80693BC
_08069004:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806900E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
