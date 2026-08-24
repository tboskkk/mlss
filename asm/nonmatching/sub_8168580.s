	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r6, #0x01
	adds r7, r5, #0x0
	adds r7, #0x14
	ldr r0, [r5, #0x00]
	ldr r2, [r5, #0x2C]
	adds r2, #0x80
	str r6, [sp, #0x000]
	adds r3, r7, #0x0
	bl sub_81682CC
	ldr r0, [r5, #0x0C]
	adds r0, #0x18
	ldr r1, [r5, #0x00]
	adds r1, #0x18
	bl sub_8163FA8
	ldr r0, [r5, #0x00]
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	beq _081685BC
	ldr r0, [r5, #0x0C]
	bl sub_8163A44
	b _081685C2
_081685BC:
	ldr r0, [r5, #0x0C]
	bl sub_8163A24
_081685C2:
	ldr r0, [r5, #0x04]
	ldr r2, [r5, #0x2C]
	adds r2, #0x80
	movs r1, #0x03
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r3, r5, #0x0
	adds r3, #0x14
	bl sub_81682CC
	ldr r0, [r5, #0x10]
	adds r0, #0x18
	ldr r1, [r5, #0x04]
	adds r1, #0x18
	bl sub_8163FA8
	ldr r0, [r5, #0x04]
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	beq _081685F6
	ldr r0, [r5, #0x10]
	bl sub_8163A44
	b _081685FC
_081685F6:
	ldr r0, [r5, #0x10]
	bl sub_8163A24
_081685FC:
	ldr r0, [r5, #0x08]
	adds r0, #0x18
	adds r1, r7, #0x0
	bl sub_8163FA8
	ldr r0, [r5, #0x08]
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x2C]
	lsls r0, r0, #0x08
	strh r0, [r1, #0x0C]
	ldr r0, [r5, #0x34]
	lsls r3, r0, #0x03
	adds r3, r3, r0
	lsls r3, r3, #0x01
	ldr r4, [r5, #0x14]
	subs r0, r4, r3
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x30]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x01
	ldr r2, [r5, #0x1C]
	adds r0, r2, r1
	str r0, [r5, #0x40]
	adds r4, r4, r3
	str r4, [r5, #0x44]
	subs r2, r2, r1
	str r2, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
