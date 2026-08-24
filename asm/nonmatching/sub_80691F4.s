	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080692CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069220
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	b _0806925C
_08069220:
	ldr r0, _08069290 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08069246
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08069246:
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0806925C
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806925C:
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069298
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806926C
	adds r1, #0xFF
_0806926C:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069276
	adds r0, #0xFF
_08069276:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069282
	adds r3, #0xFF
_08069282:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069294 @ =0x00001C8A
	bl sub_80DF024
	b _080692C0
	.byte 0x00, 0x00
_08069290: .4byte 0x03000FD8
_08069294: .4byte 0x00001C8A
_08069298:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080692A0
	adds r1, #0xFF
_080692A0:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080692AA
	adds r0, #0xFF
_080692AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080692B6
	adds r3, #0xFF
_080692B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080692D4 @ =0x00001CB1
	bl sub_80DF024
_080692C0:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _080692D8 @ =0x08069395
	str r0, [r4, #0x4C]
_080692CC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080692D4: .4byte 0x00001CB1
_080692D8: .4byte sub_8069394
