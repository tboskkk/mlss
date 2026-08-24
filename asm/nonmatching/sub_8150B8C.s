	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x0C]
	ldr r2, [r5, #0x00]
	adds r3, r0, r2
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x04]
	adds r1, r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r3, r0
	ble _08150BAC
	subs r0, r0, r2
	b _08150BB2
_08150BAC:
	cmp r3, #0x00
	bge _08150BB4
	negs r0, r2
_08150BB2:
	str r0, [r4, #0x0C]
_08150BB4:
	movs r0, #0xA0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08150BC6
	ldr r1, [r5, #0x04]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r3, r1, #0x0
	b _08150BD0
_08150BC6:
	ldr r3, [r5, #0x04]
	cmp r1, #0x00
	bge _08150BD0
	negs r0, r3
	str r0, [r4, #0x10]
_08150BD0:
	ldrh r1, [r4, #0x2C]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _08150C28
	ldrh r1, [r4, #0x1C]
	movs r6, #0x1C
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	ble _08150C28
	adds r0, r1, #0x0
	adds r0, #0x0C
	strh r0, [r4, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xFF
	ble _08150BF8
	strh r2, [r4, #0x1C]
_08150BF8:
	ldr r1, _08150C60 @ =0x08198584
	ldrb r0, [r4, #0x1C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _08150C0A
	adds r1, #0x3F
_08150C0A:
	asrs r1, r1, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x18]
	movs r6, #0x14
	ldsh r1, [r4, r6]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r0, #0x18
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08150C28:
	ldr r0, [r5, #0x00]
	ldr r1, [r4, #0x0C]
	adds r0, r0, r1
	negs r0, r0
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x10]
	adds r0, r3, r0
	negs r0, r0
	str r0, [r4, #0x08]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8150C68
	ldr r0, [r4, #0x00]
	ldr r1, _08150C64 @ =0x03001014
	ldr r1, [r1, #0x00]
	adds r1, #0x04
	movs r2, #0xE4
	lsls r2, r2, #0x01
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0x10
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08150C60: .4byte word_8198584 @ =0x08198584
_08150C64: .4byte 0x03001014
