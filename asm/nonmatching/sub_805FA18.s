	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r3, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	adds r1, #0x04
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FA4C
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FA54
_0805FA4C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FA54:
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	muls r0, r2
	adds r1, r3, #0x0
	bl __divsi3
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r2, #0x0
	cmp r0, #0x07
	ble _0805FAB8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805FA9A
	adds r1, #0xFF
_0805FA9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805FAA4
	adds r2, #0xFF
_0805FAA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805FAAE
	adds r3, #0xFF
_0805FAAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805FAE0 @ =0x00000E72
	bl sub_80DF024
_0805FAB8:
	ldr r1, [r4, #0x10]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FAD6
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x88
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0805FAE4 @ =0x0805FD5D
	str r0, [r4, #0x4C]
_0805FAD6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FAE0: .4byte 0x00000E72
_0805FAE4: .4byte sub_805FD5C
