	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _0806152E
	movs r0, #0x00
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061508
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080614E4
	adds r1, #0xFF
_080614E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080614EE
	adds r2, #0xFF
_080614EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080614F8
	adds r3, #0xFF
_080614F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061504 @ =0x0000125C
	bl sub_80DF024
	b _0806152E
_08061504: .4byte 0x0000125C
_08061508:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061510
	adds r1, #0xFF
_08061510:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806151A
	adds r2, #0xFF
_0806151A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08061524
	adds r3, #0xFF
_08061524:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061538 @ =0x00001274
	bl sub_80DF024
_0806152E:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061538: .4byte 0x00001274
