	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r7, r6, #0x0
	adds r7, #0x8C
	ldr r1, [r7, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08067D30
	adds r0, #0xFF
_08067D30:
	asrs r0, r0, #0x08
	cmp r0, #0x08
	bgt _08067DBC
	movs r0, #0x08
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067D4E
	adds r1, #0xFF
_08067D4E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067D58
	adds r2, #0xFF
_08067D58:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067D62
	adds r3, #0xFF
_08067D62:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08067D98 @ =0x000010A5
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	cmp r1, #0x00
	beq _08067D9C
	cmp r1, #0x01
	beq _08067DA4
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	b _08067DAC
_08067D98: .4byte 0x000010A5
_08067D9C:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x99
	b _08067DAC
_08067DA4:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x01
_08067DAC:
	str r0, [r1, #0x00]
	ldr r0, _08067DC4 @ =0x08068125
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
_08067DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067DC4: .4byte sub_8068124
