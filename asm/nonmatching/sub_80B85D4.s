	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080B8690 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8688
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8602
	cmp r1, #0x04
	bne _080B861E
_080B8602:
	ldr r2, _080B8694 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x0B
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
_080B861E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8630
	cmp r1, #0x04
	bne _080B8684
_080B8630:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B863E
	adds r0, #0xFF
_080B863E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B864C
	adds r0, #0xFF
_080B864C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B865A
	adds r0, #0xFF
_080B865A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B8670
	adds r0, #0xFF
_080B8670:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B8684:
	ldr r0, _080B8698 @ =0x080B9421
	str r0, [r5, #0x4C]
_080B8688:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080B8690: .4byte 0x03000FD8
_080B8694: .4byte 0x0000204D
_080B8698: .4byte sub_80B9420
