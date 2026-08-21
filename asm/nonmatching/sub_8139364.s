	.syntax unified
	.text

	thumb_func_start sub_8139364
sub_8139364:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813937E
	adds r0, r4, #0x0
	bl sub_81382A8
	b _08139396
_0813937E:
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
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
_08139396:
	pop {r4, r5}
	pop {r0}
	bx r0
