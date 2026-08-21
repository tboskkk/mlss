	.syntax unified
	.text

	thumb_func_start sub_8146004
sub_8146004:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0E]
	ldr r2, _08146080 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146084 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146088 @ =0x0814608D
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146080: .4byte 0x000002DE
_08146084: .4byte 0x0000020D
_08146088: .4byte sub_814608C
