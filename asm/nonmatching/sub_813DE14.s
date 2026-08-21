	.syntax unified
	.text

	thumb_func_start sub_813DE14
sub_813DE14:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DE94
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0813DE60 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813DE68
	ldr r0, _0813DE64 @ =0x0813B1E9
	str r0, [r5, #0x00]
	b _0813DEDE
_0813DE60: .4byte 0x0000020E
_0813DE64: .4byte sub_813B1E8
_0813DE68:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _0813DE90 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0813DEDE
	.byte 0x00, 0x00
_0813DE90: .4byte 0x0000FBFF
_0813DE94:
	movs r1, #0x2C
	ldsh r0, [r2, r1]
	cmp r0, #0x7F
	ble _0813DED0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x04
	b _0813DEDC
_0813DED0:
	cmp r0, #0x3F
	ble _0813DEDE
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
_0813DEDC:
	strh r0, [r1, #0x00]
_0813DEDE:
	pop {r4, r5}
	pop {r0}
	bx r0
