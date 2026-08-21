	.syntax unified
	.text

	thumb_func_start sub_803A438
sub_803A438:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0803A478
	adds r1, #0x04
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x61
	b _0803A482
_0803A478:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x4D
_0803A482:
	strh r0, [r2, #0x04]
	strh r0, [r1, #0x04]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldr r2, [r7, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r1, [r5, #0x00]
	ldr r4, _0803A568 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r7, #0x00]
	ldr r1, [r5, #0x00]
	movs r3, #0xD6
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r4, #0x08
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	ldr r0, _0803A56C @ =0x0000020D
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	ldr r0, _0803A570 @ =0x0000035A
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0x02
	bl sub_804955C
	ldr r0, _0803A574 @ =0x0000026E
	adds r1, r6, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, _0803A578 @ =0x0000020B
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0803A57C @ =0x0000020A
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r3, [r5, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1D
	adds r3, #0x24
	lsrs r2, r2, #0x1D
	ldrb r4, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r2, [r7, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r2, #0x00]
	ldr r2, [r7, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _0803A580 @ =0x00001026
	cmp r0, #0x00
	bne _0803A544
	adds r1, #0x1A
_0803A544:
	adds r0, r2, #0x0
	bl sub_8049000
	ldr r0, [r7, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	movs r2, #0x87
	cmp r0, #0x00
	bne _0803A558
	adds r2, #0xD0
_0803A558:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803A568: .4byte 0x00000351
_0803A56C: .4byte 0x0000020D
_0803A570: .4byte 0x0000035A
_0803A574: .4byte 0x0000026E
_0803A578: .4byte 0x0000020B
_0803A57C: .4byte 0x0000020A
_0803A580: .4byte 0x00001026
