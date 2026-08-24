	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064EC6
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064E56
	adds r1, #0xFF
_08064E56:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08064E60
	adds r2, #0xFF
_08064E60:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064E6A
	adds r3, #0xFF
_08064E6A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064ED0 @ =0x00000EDB
	bl sub_80DF024
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r6, #0x4A
	strh r6, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064E8C
	adds r0, #0xFF
_08064E8C:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x30
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064E9E
	adds r0, #0xFF
_08064E9E:
	asrs r2, r0, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064EA8
	adds r3, #0xFF
_08064EA8:
	asrs r3, r3, #0x08
	adds r3, #0x48
	str r4, [sp, #0x000]
	ldr r0, _08064ED4 @ =0x00000EEA
	bl sub_80DF024
	strh r6, [r5, #0x00]
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064ED8 @ =0x08064EDD
	str r0, [r4, #0x4C]
_08064EC6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064ED0: .4byte 0x00000EDB
_08064ED4: .4byte 0x00000EEA
_08064ED8: .4byte sub_8064EDC
