	.syntax unified
	.text

	thumb_func_start sub_8136A84
sub_8136A84:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r5, #0x00
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08136AA0
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08136AB4
_08136AA0:
	movs r1, #0x00
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _08136AB2
	movs r1, #0x01
_08136AB2:
	adds r5, r1, #0x0
_08136AB4:
	ldr r1, _08136ACC @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08136AD0
	adds r0, r4, #0x0
	bl sub_81385A8
	b _08136ADE
	.byte 0x00, 0x00
_08136ACC: .4byte 0x000002B5
_08136AD0:
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08136ADE:
	cmp r5, #0x00
	beq _08136B28
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136B24
	ldr r1, _08136B1C @ =0x00000137
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r4, #0x0
	bl sub_8047364
	ldr r0, _08136B20 @ =0x0813B1E9
	b _08136B26
	.byte 0x00, 0x00
_08136B1C: .4byte 0x00000137
_08136B20: .4byte sub_813B1E8
_08136B24:
	ldr r0, [r6, #0x04]
_08136B26:
	str r0, [r6, #0x00]
_08136B28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
