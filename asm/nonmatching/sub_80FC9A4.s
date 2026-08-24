	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_801A548
	movs r2, #0x00
	ldr r6, _080FCA80 @ =0x03000FD8
_080FC9B4:
	ldr r5, _080FCA80 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080FC9EA
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x1C]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x20]
	str r0, [r1, #0x48]
_080FC9EA:
	movs r4, #0x87
	lsls r4, r4, #0x01
	adds r0, r1, r4
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r1, r2, #0x1
	ldr r0, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	beq _080FCA2A
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x1C]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x20]
	str r0, [r1, #0x48]
_080FCA2A:
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	adds r2, #0x02
	cmp r2, #0x07
	ble _080FC9B4
	ldr r0, [r6, #0x00]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FCA9C
	adds r4, r0, #0x0
	ldr r1, _080FCA84 @ =0x0000012B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _080FCA54
	adds r1, #0x55
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_810857C
_080FCA54:
	movs r3, #0x96
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r0, [r5, #0x00]
	cmp r0, #0x16
	bne _080FCA6C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_81086B4
_080FCA6C:
	ldr r0, [r6, #0x00]
	ldrb r1, [r5, #0x00]
	cmp r1, #0x0C
	beq _080FCA88
	movs r3, #0x00
	cmp r1, #0x0D
	bne _080FCA8A
	movs r3, #0x02
	b _080FCA8A
	.byte 0x00, 0x00
_080FCA80: .4byte 0x03000FD8
_080FCA84: .4byte 0x0000012B
_080FCA88:
	movs r3, #0x01
_080FCA8A:
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r2, r0, r5
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
_080FCA9C:
	ldr r6, _080FCB84 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	ldr r1, _080FCB88 @ =0x0000012B
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _080FCAB8
	adds r1, #0x55
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_810857C
_080FCAB8:
	movs r3, #0x96
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x16
	bne _080FCAD0
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0xC8
	bl sub_81086B4
_080FCAD0:
	movs r2, #0x00
	ldr r0, [r6, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r0, _080FCB8C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x8A
	movs r3, #0x00
	ldr r7, _080FCB90 @ =0x080FCB9D
_080FCAE6:
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCAF8
	cmp r0, #0x00
	beq _080FCAF8
	adds r0, r5, r2
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FCAF8:
	adds r1, r3, #0x1
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB0C
	cmp r0, #0x00
	beq _080FCB0C
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB0C:
	adds r1, r3, #0x2
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB20
	cmp r0, #0x00
	beq _080FCB20
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB20:
	adds r1, r3, #0x3
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB34
	cmp r0, #0x00
	beq _080FCB34
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB34:
	adds r1, r3, #0x4
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB48
	cmp r0, #0x00
	beq _080FCB48
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB48:
	adds r1, r3, #0x5
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _080FCB5C
	cmp r0, #0x00
	beq _080FCB5C
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	adds r2, #0x01
_080FCB5C:
	adds r3, #0x06
	cmp r3, #0x11
	ble _080FCAE6
	ldr r0, [r6, #0x00]
	ldr r3, _080FCB94 @ =0x00000341
	adds r0, r0, r3
	strb r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r5, _080FCB98 @ =0x000002BB
	adds r0, r0, r5
	movs r1, #0x01
	strb r1, [r0, #0x00]
	mov r0, r8
	str r7, [r0, #0x04]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FCB84: .4byte 0x03000FD8
_080FCB88: .4byte 0x0000012B
_080FCB8C: .4byte 0x03000FF4
_080FCB90: .4byte sub_80FCB9C
_080FCB94: .4byte 0x00000341
_080FCB98: .4byte 0x000002BB
