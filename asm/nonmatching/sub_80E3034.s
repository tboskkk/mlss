	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80E2F40
	ldr r4, _080E3088 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, _080E308C @ =0x0300034C
	ldr r2, _080E3090 @ =0x000008C4
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _080E3094 @ =0x080E30B1
	movs r0, #0x02
	bl sub_8018B78
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _080E3098 @ =0x080E3215
	movs r1, #0x00
	bl sub_807FF48
	adds r4, r0, #0x0
	movs r0, #0x00
	cmp r5, #0x00
	bgt _080E307A
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
_080E307A:
	strh r0, [r4, #0x12]
	strh r5, [r4, #0x14]
	cmp r5, #0x00
	bge _080E309C
	movs r0, #0x43
	b _080E309E
	.byte 0x00, 0x00
_080E3088: .4byte 0x03000FD8
_080E308C: .4byte 0x0300034C
_080E3090: .4byte 0x000008C4
_080E3094: .4byte sub_80E30B0
_080E3098: .4byte sub_80E3214
_080E309C:
	movs r0, #0x34
_080E309E:
	strh r0, [r4, #0x16]
	adds r0, r4, #0x0
	bl sub_80E3214
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
