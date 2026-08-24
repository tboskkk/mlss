	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A290C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
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
	beq _080A2902
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A289E
	cmp r1, #0x04
	bne _080A28F2
_080A289E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28AC
	adds r0, #0xFF
_080A28AC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28BA
	adds r0, #0xFF
_080A28BA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28C8
	adds r0, #0xFF
_080A28C8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A28DE
	adds r0, #0xFF
_080A28DE:
	asrs r0, r0, #0x08
	adds r0, #0x1A
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080A28F2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A2910 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A2914 @ =0x080A2919
	str r0, [r6, #0x4C]
_080A2902:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A290C: .4byte 0x03000FD8
_080A2910: .4byte 0x00000FFF
_080A2914: .4byte sub_80A2918
