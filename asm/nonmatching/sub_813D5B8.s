	.syntax unified
	.text

	thumb_func_start sub_813D5B8
sub_813D5B8:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	subs r1, #0xB0
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x24
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r1, r0
	bne _0813D63C
	ldr r0, _0813D644 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r2, #0x00]
	ldr r1, _0813D648 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_0813D63C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D644: .4byte 0x0000020D
_0813D648: .4byte 0xFFFC7FFF
