	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0814ED2C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814ED2C:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814ED9E
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r2, #0x08
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r1, #0x08
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	subs r2, #0x34
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	adds r2, #0x20
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814EDA8 @ =0x0814EADD
	str r0, [r7, #0x00]
_0814ED9E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814EDA8: .4byte sub_814EADC
