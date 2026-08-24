	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r2, _080ADD1C @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r3, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, _080ADD20 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080ADD54
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADD28
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADD12
	cmp r1, #0x04
	beq _080ADD12
	b _080ADEF0
_080ADD12:
	ldr r0, _080ADD24 @ =0x080AE18D
	mov r1, r9
	str r0, [r1, #0x4C]
	b _080ADEF0
	.byte 0x00, 0x00
_080ADD1C: .4byte 0x03000FD8
_080ADD20: .4byte 0x0300034C
_080ADD24: .4byte sub_80AE18C
_080ADD28:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADD4A
	cmp r1, #0x04
	beq _080ADD4A
	b _080ADEF0
_080ADD4A:
	ldr r0, _080ADD50 @ =0x080AF295
	b _080ADEEC
	.byte 0x00, 0x00
_080ADD50: .4byte sub_80AF294
_080ADD54:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADD68
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADD6C
_080ADD68:
	ldr r1, _080ADDB4 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADD6C:
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	ble _080ADD7C
	b _080ADEF0
_080ADD7C:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080ADDBC
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	mov r2, r10
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADDA6
	movs r1, #0x01
_080ADDA6:
	ldr r2, _080ADDB8 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080ADEF0
	.byte 0x00, 0x00
_080ADDB4: .4byte 0xFFFFFF00
_080ADDB8: .4byte 0x00002093
_080ADDBC:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r10
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r4, r8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADDDC
	movs r1, #0x02
_080ADDDC:
	ldr r2, _080ADF00 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0xA0
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _080ADE16
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080ADE16:
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r5, #0x2C]
	ldr r0, [r5, #0x30]
	ldr r4, [r3, #0x28]
	adds r4, #0xE4
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x00]
	movs r2, #0x05
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0x06
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x18]
	adds r1, r1, r2
	ldr r2, _080ADF04 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r5, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bgt _080ADEF0
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADE8E
	cmp r1, #0x04
	bne _080ADEA6
_080ADE8E:
	ldr r2, _080ADF08 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADEA6:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADEB8
	cmp r1, #0x04
	bne _080ADED0
_080ADEB8:
	ldr r2, _080ADF0C @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADED0:
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x05
	str r0, [r7, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x03
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _080ADF10 @ =0x080ADF15
_080ADEEC:
	mov r2, r9
	str r0, [r2, #0x4C]
_080ADEF0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080ADF00: .4byte 0x00002093
_080ADF04: .4byte 0xFFFFF400
_080ADF08: .4byte 0x00002032
_080ADF0C: .4byte 0x00002061
_080ADF10: .4byte sub_80ADF14
