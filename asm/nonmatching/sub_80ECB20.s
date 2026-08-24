	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldm r2!, {r4}
	cmp r4, #0x01
	beq _080ECB5C
	cmp r4, #0x01
	bgt _080ECB3A
	cmp r4, #0x00
	beq _080ECB46
	b _080ECC98
_080ECB3A:
	cmp r4, #0x02
	beq _080ECB80
	cmp r4, #0x03
	bne _080ECB44
	b _080ECC58
_080ECB44:
	b _080ECC98
_080ECB46:
	ldr r0, _080ECB58 @ =0x03000FD0
	ldr r3, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	b _080ECB6E
	.byte 0x00, 0x00
_080ECB58: .4byte 0x03000FD0
_080ECB5C:
	ldr r0, _080ECB7C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r3, r0, r1
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	str r4, [sp, #0x000]
_080ECB6E:
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080ECC98
_080ECB7C: .4byte 0x03000FD0
_080ECB80:
	ldr r0, _080ECC40 @ =0x03000FD0
	mov r8, r0
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0xA8
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080ECC58
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	movs r7, #0x01
	str r7, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	ldr r5, [r6, #0x14]
	ldr r0, [r5, #0x28]
	ldr r1, _080ECC44 @ =0x0000020D
	mov r12, r1
	add r0, r12
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080ECBF0
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r1, _080ECC48 @ =0x0000055A
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080ECC4C @ =0x0000FFFE
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x28]
	ldr r0, _080ECC44 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080ECBF0:
	ldr r0, [r5, #0x2C]
	add r0, r12
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080ECC26
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r0, _080ECC48 @ =0x0000055A
	adds r2, r2, r0
	ldrb r3, [r2, #0x00]
	lsrs r1, r3, #0x06
	ldr r0, _080ECC50 @ =0x0000FFFD
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080ECC26:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _080ECC48 @ =0x0000055A
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ands r4, r0
	cmp r4, #0x00
	bne _080ECC98
	ldr r0, [r6, #0x14]
	ldr r1, _080ECC54 @ =0x000003FF
	bl sub_8028D6C
	b _080ECC98
_080ECC40: .4byte 0x03000FD0
_080ECC44: .4byte 0x0000020D
_080ECC48: .4byte 0x0000055A
_080ECC4C: .4byte 0x0000FFFE
_080ECC50: .4byte 0x0000FFFD
_080ECC54: .4byte 0x000003FF
_080ECC58:
	ldr r0, _080ECCA8 @ =0x03000FD0
	ldr r3, [r0, #0x00]
	movs r0, #0xA8
	lsls r0, r0, #0x01
	adds r4, r3, r0
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080ECC98
	ldr r1, _080ECCAC @ =0x0000055A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080ECC98
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
_080ECC98:
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080ECCA8: .4byte 0x03000FD0
_080ECCAC: .4byte 0x0000055A
