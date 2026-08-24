	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08068BAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068B88
	adds r1, #0xFF
_08068B88:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068B92
	adds r2, #0xFF
_08068B92:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068B9C
	adds r3, #0xFF
_08068B9C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068BE8 @ =0x00001C81
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068BAA:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08068BBC
	adds r1, #0xFF
_08068BBC:
	asrs r1, r1, #0x08
	movs r0, #0x30
	negs r0, r0
	cmp r1, r0
	bgt _08068BDE
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _08068BEC @ =0x08068BF1
	str r0, [r4, #0x4C]
_08068BDE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068BE8: .4byte 0x00001C81
_08068BEC: .4byte sub_8068BF0
