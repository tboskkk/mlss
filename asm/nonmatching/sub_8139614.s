	.syntax unified
	.text

	thumb_func_start sub_8139614
sub_8139614:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139648
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r1, _08139644 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08139672
	adds r0, r4, #0x0
	bl sub_8137FA4
	b _08139672
	.byte 0x00, 0x00
_08139644: .4byte 0x000002B5
_08139648:
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
	ldr r1, _08139678 @ =0x0813B1E9
	cmp r0, #0x00
	bne _08139670
	ldr r1, [r5, #0x04]
_08139670:
	str r1, [r5, #0x00]
_08139672:
	pop {r4, r5}
	pop {r0}
	bx r0
_08139678: .4byte sub_813B1E8
