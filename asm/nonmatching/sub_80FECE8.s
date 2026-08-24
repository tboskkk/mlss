	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	ldr r0, _080FEDDC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080FEDE0 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FED1E
	ldr r0, _080FEDE4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FED1E
	ldr r0, _080FEDE8 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FED1E:
	ldr r7, _080FEDDC @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r6, [r0, #0x7C]
	bl sub_810D57C
	ldr r1, [r7, #0x00]
	ldr r2, _080FEDEC @ =0x00000342
	mov r8, r2
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	subs r2, #0x04
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r4, r0, #0x0
	ldr r2, [r7, #0x00]
	mov r1, r8
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r4, r0
	beq _080FEDFC
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r6, #0x7F
	ldrb r1, [r6, #0x00]
	movs r2, #0x09
	negs r2, r2
	mov r9, r2
	mov r0, r9
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FED7A
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FED7A:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _080FED90
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FED90:
	ldrb r1, [r6, #0x00]
	mov r0, r9
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r5, #0x2C]
	bl sub_810CCF4
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r7, #0x00]
	ldr r1, _080FEDF0 @ =0x00000347
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x00]
	ldr r2, _080FEDF4 @ =0x00000343
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	add r0, r8
	orrs r4, r1
	strb r4, [r0, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	ldr r0, _080FEDF8 @ =0x080FE9A1
	mov r1, r10
	str r0, [r1, #0x04]
	b _080FEF06
	.byte 0x00, 0x00
_080FEDDC: .4byte 0x03000FD8
_080FEDE0: .4byte 0x000002C1
_080FEDE4: .4byte 0x0300034C
_080FEDE8: .4byte 0x0000015F
_080FEDEC: .4byte 0x00000342
_080FEDF0: .4byte 0x00000347
_080FEDF4: .4byte 0x00000343
_080FEDF8: .4byte sub_80FE9A0
_080FEDFC:
	ldr r1, _080FEEE8 @ =0x00000343
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	adds r4, r3, #0x0
	ands r4, r0
	subs r1, #0x04
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	subs r5, r0, #0x1
	ldr r2, _080FEEEC @ =0x0300034C
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080FEE30
	cmp r5, #0x00
	beq _080FEE2E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FEE2E:
	subs r4, #0x01
_080FEE30:
	adds r0, r6, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FEE4E
	cmp r5, #0x00
	beq _080FEE4C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FEE4C:
	adds r4, #0x01
_080FEE4E:
	cmp r4, #0x00
	bge _080FEE54
	adds r4, r5, #0x0
_080FEE54:
	cmp r4, r5
	ble _080FEE5A
	movs r4, #0x00
_080FEE5A:
	ldr r5, _080FEEF0 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	ldr r6, _080FEEF4 @ =0x00000347
	adds r1, r1, r6
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _080FEEE8 @ =0x00000343
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r4, r2
	beq _080FEEB0
	strb r4, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	lsrs r2, r2, #0x0C
	adds r1, r1, r6
	ldrb r1, [r1, #0x00]
	asrs r2, r1
	movs r0, #0x01
	eors r2, r0
	ands r2, r0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_810A84C
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
_080FEEB0:
	ldr r0, [r5, #0x00]
	ldr r2, _080FEEF8 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	bl sub_8109F4C
	cmp r0, #0x00
	ble _080FEF06
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	adds r1, r1, r6
	ldrb r1, [r1, #0x00]
	asrs r0, r1
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080FEEFC
	bl sub_80FEB64
	b _080FEF06
_080FEEE8: .4byte 0x00000343
_080FEEEC: .4byte 0x0300034C
_080FEEF0: .4byte 0x03000FD8
_080FEEF4: .4byte 0x00000347
_080FEEF8: .4byte 0x00000342
_080FEEFC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_080FEF06:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
