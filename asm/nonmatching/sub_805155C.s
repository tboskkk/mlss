	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139F08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08051594
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080515CC
_08051594:
	cmp r6, #0x00
	bne _080515CC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r5, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r6, [r0, #0x00]
	adds r2, #0x70
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	ldr r0, _080515D4 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _080515D8 @ =0x080514C5
	str r0, [r7, #0x0C]
_080515CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080515D4: .4byte sub_813B1E8
_080515D8: .4byte sub_80514C4
