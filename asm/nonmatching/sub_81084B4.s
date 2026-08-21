	.syntax unified
	.text

	thumb_func_start sub_81084B4
sub_81084B4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x04
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081084DE
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	bge _081084E2
_081084DE:
	movs r0, #0x00
	b _08108570
_081084E2:
	ldrh r0, [r6, #0x00]
	ldr r1, _08108544 @ =0x0000F3FF
	ands r1, r0
	strh r1, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08108548
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810851C
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
_0810851C:
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
	b _0810855A
_08108544: .4byte 0x0000F3FF
_08108548:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0810856E
_0810855A:
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08108578 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x0A
	orrs r0, r1
	str r0, [r2, #0x00]
_0810856E:
	movs r0, #0x01
_08108570:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08108578: .4byte 0xFFFC7FFF
