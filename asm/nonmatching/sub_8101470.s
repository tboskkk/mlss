	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08101512
	ldr r2, _081014D4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0B]
	movs r0, #0x04
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08101512
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081014E8
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081014E8
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _081014E8
	ldr r0, _081014D8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081014DC @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _081014E0 @ =0x08101471
	str r1, [r0, #0x00]
	ldr r0, _081014E4 @ =0x080FDA35
	b _08101510
	.byte 0x00, 0x00
_081014D4: .4byte 0x03000FD8
_081014D8: .4byte 0x03000FDC
_081014DC: .4byte 0x00008E58
_081014E0: .4byte sub_8101470
_081014E4: .4byte sub_80FDA34
_081014E8:
	ldr r0, [r5, #0x00]
	ldr r2, _08101518 @ =0x00000346
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08101504
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
_08101504:
	bl sub_810CCB0
	adds r0, r4, #0x0
	bl sub_80FCC78
	ldr r0, _0810151C @ =0x08101521
_08101510:
	str r0, [r4, #0x04]
_08101512:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101518: .4byte 0x00000346
_0810151C: .4byte sub_8101520
