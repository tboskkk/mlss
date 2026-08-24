	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r6, [r0, #0x0C]
	adds r2, r6, #0x0
	adds r2, #0xBA
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r6, #0x1C]
	adds r0, r0, r1
	str r0, [r6, #0x1C]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x20]
	adds r1, r0, r1
	str r1, [r6, #0x20]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _08103572
	b _0810369E
_08103572:
	subs r2, #0x26
	ldr r0, [r2, #0x00]
	cmp r0, r1
	bge _0810357C
	b _0810369E
_0810357C:
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x1C]
	ldr r0, [r2, #0x00]
	str r0, [r6, #0x20]
	adds r4, r6, #0x0
	adds r4, #0xEC
	cmp r6, #0x00
	beq _081035EE
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081035EE
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081035C8
	adds r0, r6, #0x0
	adds r0, #0x08
	movs r1, #0x04
	ldr r2, _081035C4 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _081035D6
	.byte 0x00, 0x00
_081035C4: .4byte 0x00002003
_081035C8:
	adds r0, r6, #0x0
	adds r0, #0x08
	movs r1, #0x04
	ldr r2, _081036A8 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_081035D6:
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081035EE:
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081036AC @ =0x00007003
	movs r1, #0x00
	ldsh r2, [r4, r1]
	mvns r2, r2
	negs r1, r2
	orrs r1, r2
	lsrs r1, r1, #0x1F
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r5, r0, #0x0
	ldr r7, _081036B0 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807BC90
	movs r4, #0x78
	strh r4, [r5, #0x00]
	movs r0, #0x1C
	strh r0, [r5, #0x02]
	ldr r0, _081036B4 @ =0x00007004
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r5, r0, #0x0
	ldr r0, [r7, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807BC90
	strh r4, [r5, #0x00]
	movs r0, #0x40
	strh r0, [r5, #0x02]
	ldrb r0, [r5, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x12]
	adds r0, r6, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r0, #0x0
	ldr r0, [r7, #0x00]
	adds r0, #0x48
	ldr r1, _081036B8 @ =0x0810326D
	bl sub_807FFD8
	adds r5, r0, #0x0
	strh r4, [r5, #0x12]
	cmp r6, #0x09
	bgt _0810367E
	movs r0, #0x74
	strh r0, [r5, #0x12]
_0810367E:
	movs r0, #0x3A
	strh r0, [r5, #0x14]
	adds r0, r6, #0x0
	bl sub_8083F88
	strh r0, [r5, #0x16]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
	ldr r0, _081036BC @ =0x081036C1
	mov r1, r8
	str r0, [r1, #0x04]
_0810369E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081036A8: .4byte 0x00002050
_081036AC: .4byte 0x00007003
_081036B0: .4byte 0x03000FD8
_081036B4: .4byte 0x00007004
_081036B8: .4byte sub_810326C
_081036BC: .4byte sub_81036C0
