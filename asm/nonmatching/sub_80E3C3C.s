	push {r4, r5, r6, r7, lr}
	movs r3, #0x00
	ldr r7, _080E3C64 @ =0x0000FFFF
	ldr r6, _080E3C68 @ =0x00001FFF
	ldr r5, _080E3C6C @ =0x03000F78
	ldr r4, _080E3C70 @ =0x03000D74
_080E3C48:
	adds r2, r3, r5
	ldr r0, [r4, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3C5C
	cmp r0, r6
	bne _080E3C74
_080E3C5C:
	movs r1, #0x01
	negs r1, r1
	b _080E3C78
	.byte 0x00, 0x00
_080E3C64: .4byte 0x0000FFFF
_080E3C68: .4byte 0x00001FFF
_080E3C6C: .4byte 0x03000F78
_080E3C70: .4byte 0x03000D74
_080E3C74:
	movs r1, #0x02
	negs r1, r1
_080E3C78:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x1
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3C92
	cmp r0, r6
	bne _080E3C98
_080E3C92:
	movs r1, #0x01
	negs r1, r1
	b _080E3C9C
_080E3C98:
	movs r1, #0x02
	negs r1, r1
_080E3C9C:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x2
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3CB6
	cmp r0, r6
	bne _080E3CBC
_080E3CB6:
	movs r1, #0x01
	negs r1, r1
	b _080E3CC0
_080E3CBC:
	movs r1, #0x02
	negs r1, r1
_080E3CC0:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r1, r3, #0x3
	adds r2, r1, r5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r7
	beq _080E3CDA
	cmp r0, r6
	bne _080E3CE0
_080E3CDA:
	movs r1, #0x01
	negs r1, r1
	b _080E3CE4
_080E3CE0:
	movs r1, #0x02
	negs r1, r1
_080E3CE4:
	adds r0, r1, #0x0
	strb r0, [r2, #0x00]
	adds r3, #0x04
	cmp r3, #0x0F
	ble _080E3C48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
