	.syntax unified
	.text

	thumb_func_start sub_802D2F4
sub_802D2F4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8020D40
	ldr r2, _0802D370 @ =0x0000020B
	adds r3, r6, r2
	ldrb r1, [r3, #0x00]
	movs r2, #0x7F
	adds r0, r2, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _0802D374 @ =0x00000246
	adds r3, r6, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0802D378 @ =0x00000351
	adds r3, r4, r0
	ldrb r0, [r3, #0x00]
	ands r2, r0
	strb r2, [r3, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r5, #0x00
	strh r1, [r4, #0x04]
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0802D37C
	strb r5, [r1, #0x01]
	b _0802D37E
_0802D370: .4byte 0x0000020B
_0802D374: .4byte 0x00000246
_0802D378: .4byte 0x00000351
_0802D37C:
	strb r5, [r1, #0x00]
_0802D37E:
	ldr r0, _0802D45C @ =0x0000035B
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _0802D460 @ =0x0000023E
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r2, #0x22
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x12]
	strb r0, [r1, #0x10]
	ldr r1, [r5, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x12]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802D3F4
	ldr r2, _0802D464 @ =0x00000352
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802D3F4
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x14]
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	strb r0, [r1, #0x10]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
_0802D3F4:
	movs r0, #0xE2
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	ldr r2, _0802D468 @ =0x00000351
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802D454
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x00]
	ldr r2, _0802D464 @ =0x00000352
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x07
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, [r5, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r3, r6, r4
	ldrh r2, [r3, #0x00]
	ldr r4, _0802D460 @ =0x0000023E
	adds r0, r1, r4
	strh r2, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_802DF80
_0802D454:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802D45C: .4byte 0x0000035B
_0802D460: .4byte 0x0000023E
_0802D464: .4byte 0x00000352
_0802D468: .4byte 0x00000351
