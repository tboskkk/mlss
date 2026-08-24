	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_81595FC
	movs r0, #0xA5
	lsls r0, r0, #0x03
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081596DE
	cmp r5, #0x00
	beq _081596DE
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	beq _081596CC
	movs r1, #0xA6
	lsls r1, r1, #0x03
	adds r2, r4, r1
	movs r5, #0xA7
	lsls r5, r5, #0x03
	adds r0, r4, r5
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	subs r5, #0x04
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _081596DE
	str r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strh r0, [r3, #0x00]
	b _081596DE
_081596CC:
	movs r0, #0xA6
	lsls r0, r0, #0x03
	adds r1, r4, r0
	ldr r0, [r1, #0x00]
	subs r0, #0x20
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bge _081596DE
	str r2, [r1, #0x00]
_081596DE:
	pop {r4, r5}
	pop {r0}
	bx r0
