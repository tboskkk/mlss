	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809BC60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0809BC52
	b _0809BD86
_0809BC52:
	ldrh r2, [r4, #0x1C]
	ldrb r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0809BC64
	subs r0, r2, #0x1
	strh r0, [r4, #0x1C]
	b _0809BCB4
_0809BC60: .4byte 0x03000FD8
_0809BC64:
	movs r1, #0x1C
	ldsh r0, [r4, r1]
	movs r1, #0xFF
	lsls r1, r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809BCB4
	ldr r1, _0809BCC4 @ =0xFFFFFF00
	adds r0, r2, r1
	strh r0, [r4, #0x1C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x14
	bl sub_81DD77C
	adds r0, #0x46
	ldrh r1, [r4, #0x1C]
	adds r0, r0, r1
	strh r0, [r4, #0x1C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0F
	bl sub_81DD77C
	adds r0, #0x23
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	str r5, [r4, #0x2C]
	ldr r1, _0809BCC8 @ =0x000040C4
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, _0809BCCC @ =0x0809BD99
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809BCB4:
	ldrh r2, [r4, #0x1E]
	ldrb r0, [r4, #0x1E]
	cmp r0, #0x00
	beq _0809BCD0
	subs r0, r2, #0x1
	strh r0, [r4, #0x1E]
	b _0809BD20
	.byte 0x00, 0x00
_0809BCC4: .4byte 0xFFFFFF00
_0809BCC8: .4byte 0x000040C4
_0809BCCC: .4byte sub_809BD98
_0809BCD0:
	movs r1, #0x1E
	ldsh r0, [r4, r1]
	movs r1, #0xFF
	lsls r1, r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809BD20
	ldr r1, _0809BD30 @ =0xFFFFFF00
	adds r0, r2, r1
	strh r0, [r4, #0x1E]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x14
	bl sub_81DD77C
	adds r0, #0x46
	ldrh r1, [r4, #0x1E]
	adds r0, r0, r1
	strh r0, [r4, #0x1E]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0F
	bl sub_81DD77C
	adds r0, #0x23
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	str r6, [r4, #0x2C]
	ldr r1, _0809BD34 @ =0x000040C4
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, _0809BD38 @ =0x0809BEE1
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809BD20:
	ldrh r0, [r4, #0x20]
	movs r1, #0x20
	ldsh r5, [r4, r1]
	cmp r5, #0x00
	beq _0809BD3C
	subs r0, #0x01
	strh r0, [r4, #0x20]
	b _0809BD74
_0809BD30: .4byte 0xFFFFFF00
_0809BD34: .4byte 0x000040C4
_0809BD38: .4byte sub_809BEE0
_0809BD3C:
	movs r1, #0x1C
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _0809BD74
	movs r1, #0x1E
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _0809BD74
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0F
	bl sub_81DD77C
	adds r0, #0x23
	ldrh r1, [r4, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #0x20]
	str r5, [r4, #0x2C]
	ldr r1, _0809BD8C @ =0x000040C4
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, _0809BD90 @ =0x0809C019
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809BD74:
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x1E]
	orrs r0, r1
	ldrh r1, [r4, #0x20]
	orrs r0, r1
	cmp r0, #0x00
	bne _0809BD86
	ldr r0, _0809BD94 @ =0x0809C295
	str r0, [r4, #0x4C]
_0809BD86:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809BD8C: .4byte 0x000040C4
_0809BD90: .4byte sub_809C018
_0809BD94: .4byte sub_809C294
