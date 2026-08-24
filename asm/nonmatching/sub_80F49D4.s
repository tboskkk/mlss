	push {lr}
	ldr r0, [r0, #0x2C]
	ldr r1, _080F49F4 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F4A94
	cmp r2, #0x01
	bgt _080F49F8
	cmp r2, #0x00
	beq _080F4A00
	b _080F4B58
_080F49F4: .4byte 0x0000179C
_080F49F8:
	cmp r2, #0x02
	bne _080F49FE
	b _080F4B2A
_080F49FE:
	b _080F4B58
_080F4A00:
	cmp r3, #0x0F
	bhi _080F4A34
	cmp r3, #0x07
	bhi _080F4A1C
	ldr r0, _080F4A18 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4A44
_080F4A18: .4byte 0x03000FD8
_080F4A1C:
	ldr r1, _080F4A30 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _080F4A44
	.byte 0x00, 0x00
_080F4A30: .4byte 0x03000FDC
_080F4A34:
	cmp r3, #0x10
	bne _080F4A4C
	ldr r0, _080F4A48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F4A44:
	ldr r2, [r0, #0x08]
	b _080F4A86
_080F4A48: .4byte 0x03000FD8
_080F4A4C:
	cmp r3, #0x12
	bhi _080F4A6C
	ldr r0, _080F4A68 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4A44
	.byte 0x00, 0x00
_080F4A68: .4byte 0x03000FD8
_080F4A6C:
	cmp r3, #0x13
	bne _080F4A84
	ldr r0, _080F4A80 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4A86
	.byte 0x00, 0x00
_080F4A80: .4byte 0x03000FD8
_080F4A84:
	movs r2, #0x00
_080F4A86:
	cmp r2, #0x00
	beq _080F4B58
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _080F4B58
_080F4A94:
	cmp r3, #0x0F
	bhi _080F4AC8
	cmp r3, #0x07
	bhi _080F4AB0
	ldr r0, _080F4AAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4AD8
_080F4AAC: .4byte 0x03000FD8
_080F4AB0:
	ldr r1, _080F4AC4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _080F4AD8
	.byte 0x00, 0x00
_080F4AC4: .4byte 0x03000FDC
_080F4AC8:
	cmp r3, #0x10
	bne _080F4AE0
	ldr r0, _080F4ADC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F4AD8:
	ldr r2, [r0, #0x08]
	b _080F4B1A
_080F4ADC: .4byte 0x03000FD8
_080F4AE0:
	cmp r3, #0x12
	bhi _080F4B00
	ldr r0, _080F4AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4AD8
	.byte 0x00, 0x00
_080F4AFC: .4byte 0x03000FD8
_080F4B00:
	cmp r3, #0x13
	bne _080F4B18
	ldr r0, _080F4B14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4B1A
	.byte 0x00, 0x00
_080F4B14: .4byte 0x03000FD8
_080F4B18:
	movs r2, #0x00
_080F4B1A:
	cmp r2, #0x00
	beq _080F4B58
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _080F4B58
_080F4B2A:
	cmp r3, #0x07
	bhi _080F4B44
	ldr r0, _080F4B40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4B54
	.byte 0x00, 0x00
_080F4B40: .4byte 0x03000FD8
_080F4B44:
	ldr r1, _080F4B60 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F4B54:
	bl sub_80835E0
_080F4B58:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4B60: .4byte 0x03000FDC
