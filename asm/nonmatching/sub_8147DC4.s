	.syntax unified
	.text

	thumb_func_start sub_8147DC4
sub_8147DC4:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r4, r7, r1
	strh r0, [r4, #0x00]
	ldr r2, _08147E70 @ =0x083A05EC
	adds r1, #0x46
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147E74 @ =0x0000020D
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08147E78 @ =0x08147E7D
	str r0, [r6, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147E70: .4byte 0x083A05EC
_08147E74: .4byte 0x0000020D
_08147E78: .4byte sub_8147E7C
