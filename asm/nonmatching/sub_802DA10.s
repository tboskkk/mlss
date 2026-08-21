	.syntax unified
	.text

	thumb_func_start sub_802DA10
sub_802DA10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	movs r2, #0x04
	ldsh r0, [r1, r2]
	cmp r0, #0x0D
	bne _0802DA7A
	adds r6, r4, #0x0
	adds r6, #0x28
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_80461B4
	ldr r0, [r5, #0x00]
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DA4A
	ldr r0, _0802DAA8 @ =0x00000209
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0802DA4A:
	ldr r0, [r5, #0x00]
	bl sub_80465D8
	ldr r0, [r5, #0x00]
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_804FB64
	ldr r3, [r5, #0x00]
	ldr r5, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r1, r5, r1
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r0, r2, r0
	cmp r1, r0
	beq _0802DA7A
	subs r0, r0, r5
	str r0, [r3, #0x18]
_0802DA7A:
	ldr r1, _0802DAA8 @ =0x00000209
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802DA8A
	b _0802DC02
_0802DA8A:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x01
	beq _0802DAAC
	cmp r0, #0x02
	beq _0802DB50
	b _0802DC02
	.byte 0x00, 0x00
_0802DAA8: .4byte 0x00000209
_0802DAAC:
	ldr r1, _0802DAE8 @ =0x00000246
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x00
	beq _0802DABE
	cmp r1, #0x08
	bne _0802DB24
_0802DABE:
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802DAF4
	ldr r0, _0802DAEC @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0802DAF0 @ =0x00000206
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DB1C
	adds r0, r4, #0x0
	bl sub_80339B8
	b _0802DBEE
_0802DAE8: .4byte 0x00000246
_0802DAEC: .4byte 0x03000FC0
_0802DAF0: .4byte 0x00000206
_0802DAF4:
	ldr r0, _0802DB14 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0802DB18 @ =0x00000207
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DB1C
	adds r0, r4, #0x0
	bl sub_8035974
	b _0802DBEE
_0802DB14: .4byte 0x03000FC0
_0802DB18: .4byte 0x00000207
_0802DB1C:
	adds r0, r4, #0x0
	bl sub_8039078
	b _0802DBEE
_0802DB24:
	cmp r1, #0x04
	bne _0802DB30
	adds r0, r4, #0x0
	bl sub_80313C0
	b _0802DBEE
_0802DB30:
	cmp r1, #0x10
	bne _0802DB3C
	adds r0, r4, #0x0
	bl sub_803495C
	b _0802DBEE
_0802DB3C:
	adds r0, r4, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	ands r1, r0
	adds r0, r2, #0x0
	bl sub_8049370
	b _0802DBEE
_0802DB50:
	ldr r1, _0802DB88 @ =0x00000246
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x00
	bne _0802DBCC
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802DB9C
	ldr r0, _0802DB8C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0802DB90 @ =0x0000020A
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DB94
	adds r0, r4, #0x0
	bl sub_8036E14
	b _0802DBEE
_0802DB88: .4byte 0x00000246
_0802DB8C: .4byte 0x03000FC0
_0802DB90: .4byte 0x0000020A
_0802DB94:
	adds r0, r4, #0x0
	bl sub_8039A00
	b _0802DBEE
_0802DB9C:
	ldr r0, _0802DBBC @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0802DBC0 @ =0x0000020B
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DBC4
	adds r0, r4, #0x0
	bl sub_8038140
	b _0802DBEE
_0802DBBC: .4byte 0x03000FC0
_0802DBC0: .4byte 0x0000020B
_0802DBC4:
	adds r0, r4, #0x0
	bl sub_8039B5C
	b _0802DBEE
_0802DBCC:
	cmp r1, #0x08
	beq _0802DBE0
	cmp r1, #0x04
	bne _0802DBDC
	adds r0, r4, #0x0
	bl sub_8031518
	b _0802DBEE
_0802DBDC:
	cmp r1, #0x10
	bne _0802DBE8
_0802DBE0:
	adds r0, r4, #0x0
	bl sub_803A438
	b _0802DBEE
_0802DBE8:
	adds r0, r2, #0x0
	bl sub_8049430
_0802DBEE:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	ldr r0, _0802DC08 @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
_0802DC02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0802DC08: .4byte 0x00000351
