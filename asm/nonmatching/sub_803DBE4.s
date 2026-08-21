	.syntax unified
	.text

	thumb_func_start sub_803DBE4
sub_803DBE4:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	ldr r0, _0803DC74 @ =0x0000035B
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r6, #0x02
	orrs r0, r6
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r1, #0x00]
	movs r3, #0x00
	movs r0, #0x3E
	strh r0, [r4, #0x04]
	ldr r1, _0803DC78 @ =0x00000351
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0803DC7C @ =0x0000023B
	adds r0, r4, r1
	strb r3, [r0, #0x00]
	ldr r0, _0803DC80 @ =0x00000352
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, _0803DC84 @ =0x00001044
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0803DC74: .4byte 0x0000035B
_0803DC78: .4byte 0x00000351
_0803DC7C: .4byte 0x0000023B
_0803DC80: .4byte 0x00000352
_0803DC84: .4byte 0x00001044
