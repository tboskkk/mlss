	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080D8B00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x74]
	adds r5, r3, #0x0
	adds r5, #0x08
	adds r6, r4, #0x0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B10
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8B04 @ =0x0843868D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D8AC4
	ldr r2, _080D8B08 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8AFA
_080D8AC4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8ACC
	adds r1, #0xFF
_080D8ACC:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8AE2
	adds r2, #0xFF
_080D8AE2:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8B0C @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8AFA:
	movs r0, #0x00
	b _080D8C4E
	.byte 0x00, 0x00
_080D8B00: .4byte 0x03000FD8
_080D8B04: .4byte 0x0843868D
_080D8B08: .4byte 0x00000111
_080D8B0C: .4byte 0x000006C4
_080D8B10:
	ldr r0, _080D8C58 @ =0x00000111
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8C5C @ =0x0843868D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D8B68
	ldr r2, _080D8C58 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B9E
_080D8B68:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8B70
	adds r1, #0xFF
_080D8B70:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8B86
	adds r2, #0xFF
_080D8B86:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8C60 @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8B9E:
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D8BE0
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080D8BD4
	movs r3, #0x80
_080D8BC2:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D8BC2
_080D8BD4:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080D8BE0:
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8BF4
	cmp r1, #0x04
	bne _080D8C4C
_080D8BF4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C02
	adds r0, #0xFF
_080D8C02:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C10
	adds r0, #0xFF
_080D8C10:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C1E
	adds r0, #0xFF
_080D8C1E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C38
	adds r0, #0xFF
_080D8C38:
	asrs r0, r0, #0x08
	adds r0, #0x40
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D8C4C:
	ldr r0, _080D8C64 @ =0x080D8C69
_080D8C4E:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8C58: .4byte 0x00000111
_080D8C5C: .4byte 0x0843868D
_080D8C60: .4byte 0x000006C4
_080D8C64: .4byte sub_80D8C68
