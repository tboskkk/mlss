	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CFBC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x10]
	movs r2, #0xE6
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x10]
	movs r3, #0x1A
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB5C
	adds r0, #0xFF
_080CFB5C:
	asrs r0, r0, #0x08
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x14]
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB72
	adds r0, #0xFF
_080CFB72:
	asrs r0, r0, #0x08
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x18]
	muls r0, r2
	movs r2, #0x82
	lsls r2, r2, #0x0C
	adds r1, r0, r2
	cmp r1, #0x00
	bge _080CFB88
	adds r2, #0xFF
	adds r1, r0, r2
_080CFB88:
	asrs r1, r1, #0x08
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x40]
	adds r0, #0x80
	cmp r0, r1
	blt _080CFC56
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x18]
	ldr r1, _080CFBC4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x18]
_080CFBA8:
	ldr r4, [r4, #0x30]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080CFBA8
	cmp r5, r4
	beq _080CFBC8
	adds r0, r5, #0x0
	bl sub_807C298
	adds r5, r4, #0x0
	b _080CFBD0
	.byte 0x00, 0x00
_080CFBC0: .4byte 0x03000FD8
_080CFBC4: .4byte 0xFFFFFD00
_080CFBC8:
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
_080CFBD0:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r3, r0, #0x1
	str r3, [r1, #0x00]
	movs r1, #0x01
	adds r0, r3, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080CFBF0
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bls _080CFC0C
_080CFBF0:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC02
	cmp r1, #0x04
	bne _080CFC56
_080CFC02:
	ldr r0, _080CFC08 @ =0x080CFC6D
	b _080CFC54
	.byte 0x00, 0x00
_080CFC08: .4byte sub_80CFC6C
_080CFC0C:
	ldr r2, _080CFC5C @ =0x03001038
	ldr r0, _080CFC60 @ =0x0819832C
	ldr r1, _080CFC64 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x03
	bl _call_via_r2
	adds r3, r5, #0x0
	adds r3, #0x78
	lsls r0, r0, #0x05
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080CFC68 @ =0x080D2D6D
_080CFC54:
	str r0, [r5, #0x4C]
_080CFC56:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CFC5C: .4byte 0x03001038
_080CFC60: .4byte 0x0819832C
_080CFC64: .4byte 0x08198220
_080CFC68: .4byte sub_80D2D6C
