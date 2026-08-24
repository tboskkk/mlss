	.syntax unified
	.text

	thumb_func_start sub_803DC88
sub_803DC88:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	ldr r2, _0803DCAC @ =0x0839FD40
	movs r0, #0x86
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _0803DCB0 @ =0x00000359
	adds r3, r5, r0
	movs r4, #0x1F
	ldrh r0, [r2, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _0803DCB4
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	b _0803DCE2
_0803DCAC: .4byte word_839FD40 @ =0x0839FD40
_0803DCB0: .4byte 0x00000359
_0803DCB4:
	ldrh r0, [r2, #0x02]
	cmp r0, r1
	bne _0803DCBE
	movs r2, #0x20
	b _0803DCDA
_0803DCBE:
	ldrh r0, [r2, #0x04]
	cmp r0, r1
	bne _0803DCC8
	movs r2, #0x40
	b _0803DCDA
_0803DCC8:
	ldrh r0, [r2, #0x06]
	cmp r0, r1
	bne _0803DCD2
	movs r2, #0x60
	b _0803DCDA
_0803DCD2:
	ldrh r0, [r2, #0x08]
	cmp r0, r1
	bne _0803DCE4
	movs r2, #0x80
_0803DCDA:
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
_0803DCE2:
	strb r0, [r3, #0x00]
_0803DCE4:
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0x00
	movs r6, #0x6B
	strh r6, [r5, #0x04]
	ldr r0, _0803DD5C @ =0x00000351
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, _0803DD60 @ =0x0000023B
	adds r0, r5, r1
	strb r3, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803DD44
	movs r0, #0xE2
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	strh r6, [r0, #0x04]
	ldr r1, [r2, #0x00]
	ldr r0, _0803DD5C @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _0803DD60 @ =0x0000023B
	adds r0, r0, r1
	strb r3, [r0, #0x00]
_0803DD44:
	ldr r1, _0803DD64 @ =0x00000355
	adds r0, r5, r1
	strb r3, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4A
	bl play_sfx_80195B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803DD5C: .4byte 0x00000351
_0803DD60: .4byte 0x0000023B
_0803DD64: .4byte 0x00000355
