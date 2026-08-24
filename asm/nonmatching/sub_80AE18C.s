	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080AE234 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AE22E
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _080AE1C8
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _080AE1C8
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE1C8:
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE1E6
	cmp r1, #0x04
	bne _080AE202
_080AE1E6:
	ldr r2, _080AE238 @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE202:
	ldr r0, [r4, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x3C]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r4, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080AE23C @ =0x080AE241
	str r0, [r6, #0x4C]
_080AE22E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AE234: .4byte 0x03000FD8
_080AE238: .4byte 0x00002032
_080AE23C: .4byte sub_80AE240
