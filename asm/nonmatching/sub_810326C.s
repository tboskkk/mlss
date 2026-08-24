	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08103284
	movs r3, #0x16
	ldsh r0, [r5, r3]
	movs r4, #0x12
	ldsh r1, [r5, r4]
	b _08103334
_08103284:
	subs r0, r1, #0x1
	movs r6, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08103350
	ldr r0, _081032F8 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r4, r3, #0x1B
	ldr r3, _081032FC @ =0x0300034C
	ldr r1, _08103300 @ =0x00000888
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	lsls r1, r4, #0x05
	adds r2, r3, #0x0
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r1, #0x40
	strh r1, [r0, #0x06]
	ldrh r2, [r0, #0x0E]
	strh r6, [r0, #0x0E]
	ldrh r2, [r0, #0x16]
	strh r6, [r0, #0x16]
	ldrh r2, [r0, #0x1E]
	strh r1, [r0, #0x1E]
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r3, r2
	ldr r2, [r0, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	strh r0, [r2, #0x08]
	strh r0, [r2, #0x00]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bgt _08103308
	lsls r0, r4, #0x09
	ldr r4, _08103304 @ =0xFFFF8048
	b _0810330C
	.byte 0x00, 0x00
_081032F8: .4byte 0x03000FD8
_081032FC: .4byte 0x0300034C
_08103300: .4byte 0x00000888
_08103304: .4byte 0xFFFF8048
_08103308:
	lsls r0, r4, #0x09
	ldr r4, _08103344 @ =0xFFFF8058
_0810330C:
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x0A]
	strh r0, [r2, #0x02]
	ldr r1, _08103348 @ =0x0000B390
	adds r0, r1, #0x0
	strh r0, [r2, #0x04]
	ldr r4, _0810334C @ =0x0000B3A0
	adds r0, r4, #0x0
	strh r0, [r2, #0x0C]
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r1, r3, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	str r0, [r1, #0x00]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	movs r2, #0x12
	ldsh r1, [r5, r2]
_08103334:
	adds r1, #0x08
	movs r3, #0x14
	ldsh r2, [r5, r3]
	subs r2, #0x08
	movs r3, #0x00
	bl sub_810D3B8
	b _0810335E
_08103344: .4byte 0xFFFF8058
_08103348: .4byte 0x0000B390
_0810334C: .4byte 0x0000B3A0
_08103350:
	movs r0, #0xC0
	strh r0, [r5, #0x10]
	ldr r1, _08103364 @ =0x08103369
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
_0810335E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08103364: .4byte sub_8103368
