	.syntax unified
	.text

	thumb_func_start sub_805139C
sub_805139C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _0805141C @ =0x08CDC108
	str r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r6, #0x41
	negs r6, r6
	ands r0, r6
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08051420 @ =0x0000020D
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x06
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	ands r0, r6
	strb r0, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _08051424 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08051428 @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0805142C @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	ands r3, r0
	strb r3, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08051430 @ =0xFFFE1FFF
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0805141C: .4byte dword_8CDC108 @ =0x08CDC108
_08051420: .4byte 0x0000020D
_08051424: .4byte 0xFFFC7FFF
_08051428: .4byte 0x0000020E
_0805142C: .4byte 0x0000020F
_08051430: .4byte 0xFFFE1FFF
