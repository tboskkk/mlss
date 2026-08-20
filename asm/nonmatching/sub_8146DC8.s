	.syntax unified
	.text

	thumb_func_start sub_8146DC8
sub_8146DC8:
	push {r4, r5, r6, lr}
	ldr r1, _08146E30 @ =0x0000020E
	adds r6, r0, r1
	ldrb r2, [r6, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	ands r1, r2
	strb r1, [r6, #0x00]
	ldr r1, _08146E34 @ =0x0000020D
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r2, #0x08
	orrs r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	strb r1, [r5, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r1, [r4, #0x00]
	ldr r2, _08146E38 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r4, #0x00]
	ldr r1, _08146E3C @ =0x0000020F
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r6, #0x00]
	ldrb r0, [r5, #0x00]
	ands r3, r0
	strb r3, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146E30: .4byte 0x0000020E
_08146E34: .4byte 0x0000020D
_08146E38: .4byte 0xFFFC7FFF
_08146E3C: .4byte 0x0000020F
