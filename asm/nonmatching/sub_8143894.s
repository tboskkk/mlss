	.syntax unified
	.text

	thumb_func_start sub_8143894
sub_8143894:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	ldr r0, _08143950 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08143954 @ =0x0000033D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r1, _08143958 @ =0x0000020D
	adds r3, r5, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	orrs r0, r6
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814395C @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _08143960 @ =0x0000020F
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08143964 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, _08143968 @ =0x0814396D
	str r0, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08143950: .4byte 0x0000033E
_08143954: .4byte 0x0000033D
_08143958: .4byte 0x0000020D
_0814395C: .4byte 0xFFFC7FFF
_08143960: .4byte 0x0000020F
_08143964: .4byte sub_813B380
_08143968: .4byte sub_814396C
