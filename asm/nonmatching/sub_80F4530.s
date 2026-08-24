	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F4548 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F454C
	subs r0, #0x01
	b _080F454E
	.byte 0x00, 0x00
_080F4548: .4byte 0x0000179C
_080F454C:
	subs r0, #0x07
_080F454E:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	cmp r4, #0x07
	bhi _080F456C
	ldr r0, _080F4568 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F457C
_080F4568: .4byte 0x03000FD8
_080F456C:
	ldr r1, _080F459C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F457C:
	ldr r5, [r0, #0x08]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F68C4
	ldr r0, [r6, #0x00]
	cmp r0, #0xFF
	bne _080F45A2
	cmp r5, #0x00
	beq _080F45A0
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	str r0, [r6, #0x00]
	b _080F45A2
	.byte 0x00, 0x00
_080F459C: .4byte 0x03000FDC
_080F45A0:
	str r5, [r6, #0x00]
_080F45A2:
	cmp r4, #0x07
	bhi _080F45BC
	ldr r0, _080F45B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F45CC
	.byte 0x00, 0x00
_080F45B8: .4byte 0x03000FD8
_080F45BC:
	ldr r1, _080F4604 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F45CC:
	ldr r1, [r6, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x04
	ldsh r2, [r6, r0]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F6A0C
	movs r2, #0x08
	ldsb r2, [r6, r2]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r5, #0x00
	beq _080F45FA
	ldrb r0, [r5, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x12]
_080F45FA:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4604: .4byte 0x03000FDC
