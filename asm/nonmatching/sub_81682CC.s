	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r7, [sp, #0x018]
	ldr r4, [r5, #0x7C]
	ldr r0, [r5, #0x78]
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x74]
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r3, #0x08]
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r0, #0xFF
	ands r0, r2
	ldr r1, [r5, #0x10]
	lsls r0, r0, #0x08
	strh r0, [r1, #0x0C]
	adds r4, r5, #0x0
	adds r4, #0x6E
	movs r0, #0x00
	ldsh r1, [r4, r0]
	cmp r1, #0x00
	beq _0816835A
	adds r1, r5, #0x0
	adds r1, #0x56
	ldrh r0, [r1, #0x00]
	cmp r0, #0x04
	beq _08168322
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	adds r1, r7, #0x1
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
_08168322:
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08168338
	adds r0, r5, #0x0
	bl sub_8163A24
	b _0816833E
_08168338:
	adds r0, r5, #0x0
	bl sub_8163A44
_0816833E:
	adds r1, r5, #0x0
	adds r1, #0x6E
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08168386
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8163A44
	b _08168386
_0816835A:
	adds r0, r5, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	cmp r6, r0
	beq _08168386
	ldr r0, [r5, #0x10]
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	adds r0, #0x56
	strh r6, [r0, #0x00]
	cmp r6, #0x00
	bne _08168386
	ldr r0, [r5, #0x10]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
_08168386:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
