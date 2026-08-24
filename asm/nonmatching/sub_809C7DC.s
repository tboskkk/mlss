	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r0, #0x01
	str r0, [r2, #0x00]
	cmp r1, #0x05
	ble _0809C820
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C802
	adds r1, #0xFF
_0809C802:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C80C
	adds r2, #0xFF
_0809C80C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C816
	adds r3, #0xFF
_0809C816:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C8B0 @ =0x00000E89
	bl sub_80DF024
_0809C820:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C8A6
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0809C8B4 @ =0x08089B91
	str r0, [r4, #0x5C]
	ldr r0, _0809C8B8 @ =0x08089B4D
	str r0, [r4, #0x60]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xFE
	lsls r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C8A2
	ldr r0, _0809C8BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [r4, #0x38]
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _0809C870
	adds r1, #0xFF
_0809C870:
	asrs r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809C87E
	adds r2, #0xFF
_0809C87E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809C888
	adds r3, #0xFF
_0809C888:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x0C
	bl sub_8088274
_0809C8A2:
	ldr r0, _0809C8C0 @ =0x0809C8C5
	str r0, [r4, #0x4C]
_0809C8A6:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809C8B0: .4byte 0x00000E89
_0809C8B4: .4byte sub_8089B90
_0809C8B8: .4byte sub_8089B4C
_0809C8BC: .4byte 0x03000FD8
_0809C8C0: .4byte sub_809C8C4
