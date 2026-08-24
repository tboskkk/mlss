	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080FD274 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	beq _080FD25A
	b _080FD38C
_080FD25A:
	ldr r6, [r1, #0x7C]
	adds r5, r6, #0x0
	adds r5, #0x08
	movs r0, #0x18
	ldsh r4, [r7, r0]
	cmp r4, #0x02
	beq _080FD2A6
	cmp r4, #0x02
	bgt _080FD278
	cmp r4, #0x01
	beq _080FD27E
	b _080FD334
	.byte 0x00, 0x00
_080FD274: .4byte 0x03000FD8
_080FD278:
	cmp r4, #0x03
	beq _080FD2D2
	b _080FD334
_080FD27E:
	adds r0, r6, #0x0
	bl sub_8083E78
	adds r3, r0, #0x0
	movs r1, #0x12
	ldsh r0, [r7, r1]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080FD292
	adds r1, #0xFF
_080FD292:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080FD29C
	adds r2, #0xFF
_080FD29C:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	bl sub_807CFB8
	b _080FD334
_080FD2A6:
	adds r0, r6, #0x0
	bl sub_8083E78
	adds r3, r0, #0x0
	movs r0, #0x14
	ldsh r4, [r7, r0]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080FD2BA
	adds r1, #0xFF
_080FD2BA:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080FD2C4
	adds r2, #0xFF
_080FD2C4:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_807CFB8
	b _080FD334
_080FD2D2:
	adds r0, r6, #0x0
	bl sub_8083E78
	adds r3, r0, #0x0
	movs r1, #0x12
	ldsh r4, [r7, r1]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080FD2E6
	adds r0, #0xFF
_080FD2E6:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x0C
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080FD2F4
	adds r2, #0xFF
_080FD2F4:
	asrs r2, r2, #0x08
	adds r2, #0x04
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_807CFB8
	adds r0, r6, #0x0
	bl sub_8083E78
	adds r3, r0, #0x0
	movs r1, #0x14
	ldsh r4, [r7, r1]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080FD318
	adds r0, #0xFF
_080FD318:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x0C
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080FD326
	adds r2, #0xFF
_080FD326:
	asrs r2, r2, #0x08
	subs r2, #0x04
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_807CFB8
_080FD334:
	ldrh r1, [r7, #0x18]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FD35E
	adds r2, r6, #0x0
	adds r2, #0xF6
	ldrh r0, [r7, #0x12]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xF8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1, #0x00]
	movs r4, #0x00
	ldsh r1, [r1, r4]
	cmp r0, r1
	ble _080FD35E
	strh r3, [r2, #0x00]
_080FD35E:
	ldrh r1, [r7, #0x18]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FD388
	adds r2, r6, #0x0
	adds r2, #0xFC
	ldrh r0, [r7, #0x14]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xFE
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1, #0x00]
	movs r4, #0x00
	ldsh r1, [r1, r4]
	cmp r0, r1
	ble _080FD388
	strh r3, [r2, #0x00]
_080FD388:
	ldr r0, _080FD398 @ =0x08107119
	str r0, [r7, #0x04]
_080FD38C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD398: .4byte sub_8107118
