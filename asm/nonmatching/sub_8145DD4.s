	.syntax unified
	.text

	thumb_func_start sub_8145DD4
sub_8145DD4:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	ldr r0, _08145E7C @ =0x0000033E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r5, r3
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	ldr r1, _08145E80 @ =0x0000033D
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r3, r5, r1
	movs r4, #0x00
	strh r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	subs r3, #0x18
	adds r1, r5, r3
	ldr r0, _08145E84 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08145E88 @ =0x08145E8D
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145E7C: .4byte 0x0000033E
_08145E80: .4byte 0x0000033D
_08145E84: .4byte sub_813B380
_08145E88: .4byte sub_8145E8C
