	.syntax unified
	.text

	thumb_func_start sub_81083EC
sub_81083EC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108416
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	bge _0810841A
_08108416:
	movs r0, #0x00
	b _081084A8
_0810841A:
	ldrh r0, [r6, #0x00]
	ldr r1, _0810847C @ =0x0000F3FF
	ands r1, r0
	strh r1, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08108480
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108454
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108454:
	movs r0, #0x94
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r2, r5, r1
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	adds r0, r7, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _08108492
_0810847C: .4byte 0x0000F3FF
_08108480:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _081084A6
_08108492:
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _081084B0 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x0A
	orrs r0, r1
	str r0, [r2, #0x00]
_081084A6:
	movs r0, #0x01
_081084A8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081084B0: .4byte 0xFFFC7FFF
