	.syntax unified
	.text

	thumb_func_start sub_813C4AC
sub_813C4AC:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r5, #0x00
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813C4C8
	adds r0, r4, #0x0
	bl sub_81381D4
	b _0813C4DC
_0813C4C8:
	movs r1, #0x00
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x01
	cmp r0, #0x00
	bne _0813C4DA
	movs r1, #0x01
_0813C4DA:
	adds r5, r1, #0x0
_0813C4DC:
	ldr r1, _0813C4F4 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813C4F8
	adds r0, r4, #0x0
	bl sub_8139200
	b _0813C50C
	.byte 0x00, 0x00
_0813C4F4: .4byte 0x000002B5
_0813C4F8:
	movs r1, #0x00
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x01
	cmp r0, #0x00
	bne _0813C50A
	movs r1, #0x01
_0813C50A:
	adds r5, r1, #0x0
_0813C50C:
	cmp r5, #0x00
	beq _0813C574
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
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r3, r4, r1
	strh r0, [r3, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813C570
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813C56C @ =0x0813B1E9
	str r0, [r6, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r6, #0x04]
	str r0, [r1, #0x00]
	b _0813C574
	.byte 0x00, 0x00
_0813C56C: .4byte sub_813B1E8
_0813C570:
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_0813C574:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
