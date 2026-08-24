	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A1740 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A1738
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A16D6
	cmp r1, #0x04
	bne _080A1728
_080A16D6:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A16E4
	adds r0, #0xFF
_080A16E4:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A16F2
	adds r0, #0xFF
_080A16F2:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1700
	adds r0, #0xFF
_080A1700:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A1716
	adds r0, #0xFF
_080A1716:
	asrs r0, r0, #0x08
	adds r0, #0x16
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080A1744 @ =0x00000833
	adds r0, r4, #0x0
	bl sub_8088164
_080A1728:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A1748 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A174C @ =0x080A1751
	str r0, [r6, #0x4C]
_080A1738:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1740: .4byte 0x03000FD8
_080A1744: .4byte 0x00000833
_080A1748: .4byte 0x00000FFF
_080A174C: .4byte sub_80A1750
