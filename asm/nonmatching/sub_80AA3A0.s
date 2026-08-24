	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080AA4D0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r1, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AA3C2
	b _080AA4C8
_080AA3C2:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA3D4
	cmp r1, #0x04
	bne _080AA426
_080AA3D4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3E2
	adds r0, #0xFF
_080AA3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3F0
	adds r0, #0xFF
_080AA3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3FE
	adds r0, #0xFF
_080AA3FE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AA414
	adds r0, #0xFF
_080AA414:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080AA426:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA438
	cmp r1, #0x04
	bne _080AA442
_080AA438:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080AA442:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AA462
	cmp r2, #0x04
	bne _080AA4B0
_080AA462:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA470
	adds r0, #0xFF
_080AA470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA47E
	adds r0, #0xFF
_080AA47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA48C
	adds r0, #0xFF
_080AA48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA49E
	adds r0, #0xFF
_080AA49E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080AA4B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA4BE
	cmp r2, #0x04
	bne _080AA4C8
_080AA4BE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080AA4C8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AA4D0: .4byte 0x03000FD8
_080AA4D4: .4byte 0x000007CC
