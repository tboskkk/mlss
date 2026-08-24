	push {r4, r5, lr}
	ldr r0, [r0, #0x2C]
	ldr r1, _080F3898 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F389C
	subs r0, #0x01
	b _080F389E
	.byte 0x00, 0x00
_080F3898: .4byte 0x0000179C
_080F389C:
	subs r0, #0x07
_080F389E:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [r2, #0x00]
	asrs r0, r2, #0x01
	adds r3, r2, #0x0
	cmp r0, #0x01
	beq _080F3950
	cmp r0, #0x01
	bgt _080F38B6
	cmp r0, #0x00
	beq _080F38BC
	b _080F39BA
_080F38B6:
	cmp r0, #0x02
	beq _080F3998
	b _080F39BA
_080F38BC:
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _080F391C
	cmp r4, #0x07
	bhi _080F38E0
	ldr r0, _080F38DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	b _080F38F0
	.byte 0x00, 0x00
_080F38DC: .4byte 0x03000FD8
_080F38E0:
	ldr r1, _080F3918 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r5, r0, r2
_080F38F0:
	ldr r0, [r5, #0x08]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1F
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	lsls r4, r4, #0x04
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	b _080F39BA
_080F3918: .4byte 0x03000FDC
_080F391C:
	cmp r4, #0x07
	bhi _080F3934
	ldr r0, _080F3930 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F3944
_080F3930: .4byte 0x03000FD8
_080F3934:
	ldr r1, _080F394C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F3944:
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	b _080F39BA
_080F394C: .4byte 0x03000FDC
_080F3950:
	cmp r4, #0x07
	bhi _080F396C
	ldr r0, _080F3968 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F397C
	.byte 0x00, 0x00
_080F3968: .4byte 0x03000FD8
_080F396C:
	ldr r1, _080F3994 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r1, r0, r2
_080F397C:
	movs r0, #0x01
	ands r3, r0
	adds r2, r1, #0x0
	adds r2, #0x79
	eors r3, r0
	ldrb r1, [r2, #0x00]
	subs r0, #0x03
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _080F39BA
	.byte 0x00, 0x00
_080F3994: .4byte 0x03000FDC
_080F3998:
	ldr r0, _080F39C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r3, r2, #0x07
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080F39BA:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F39C4: .4byte 0x03000FD8
