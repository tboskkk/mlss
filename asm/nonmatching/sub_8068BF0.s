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
	ble _08068C32
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068C10
	adds r1, #0xFF
_08068C10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068C1A
	adds r2, #0xFF
_08068C1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068C24
	adds r3, #0xFF
_08068C24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068C68 @ =0x00001C81
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068C32:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08068C60
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068C6C @ =0x08068C71
	str r0, [r4, #0x4C]
_08068C60:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08068C68: .4byte 0x00001C81
_08068C6C: .4byte sub_8068C70
