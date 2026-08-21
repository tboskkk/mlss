	.syntax unified
	.text

	thumb_func_start sub_8136D00
sub_8136D00:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_81390AC
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
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	orrs r1, r0
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08136D5C
	ldr r0, _08136D58 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08136D74
	.byte 0x00, 0x00
_08136D58: .4byte sub_813B1E8
_08136D5C:
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136D7C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136D74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136D7C: .4byte 0x0000FBFF
