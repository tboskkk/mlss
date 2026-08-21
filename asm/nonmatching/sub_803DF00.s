	.syntax unified
	.text

	thumb_func_start sub_803DF00
sub_803DF00:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r3, #0x00
	movs r0, #0x3A
	strh r0, [r4, #0x04]
	ldr r0, _0803DF88 @ =0x00000351
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0803DF8C @ =0x0000023B
	adds r0, r4, r1
	strb r3, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0803DF90 @ =0x00001030
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0803DF94 @ =0x00000239
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r2, #0x39
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_804E0D8
	ldr r0, _0803DF98 @ =0x00000355
	adds r4, r4, r0
	movs r0, #0x46
	strb r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x56
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_0803DF88: .4byte 0x00000351
_0803DF8C: .4byte 0x0000023B
_0803DF90: .4byte 0x00001030
_0803DF94: .4byte 0x00000239
_0803DF98: .4byte 0x00000355
