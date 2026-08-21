	.syntax unified
	.text

	thumb_func_start sub_813980C
sub_813980C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139826
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08139878
_08139826:
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
	beq _08139860
	ldr r0, _0813985C @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08139878
	.byte 0x00, 0x00
_0813985C: .4byte sub_813B1E8
_08139860:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08139878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
