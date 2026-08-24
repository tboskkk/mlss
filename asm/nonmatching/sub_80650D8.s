	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065140
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065140
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065148 @ =0x000014F2
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806514C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08065150 @ =0x0806515D
	str r0, [r4, #0x5C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806511E
	adds r1, #0xFF
_0806511E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065128
	adds r2, #0xFF
_08065128:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065132
	adds r3, #0xFF
_08065132:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065154 @ =0x00000F16
	bl sub_80DF024
	ldr r0, _08065158 @ =0x080651CD
	str r0, [r4, #0x4C]
_08065140:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08065148: .4byte 0x000014F2
_0806514C: .4byte 0x03000E3C
_08065150: .4byte sub_806515C
_08065154: .4byte 0x00000F16
_08065158: .4byte sub_80651CC
