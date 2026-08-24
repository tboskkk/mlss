	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A85E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A85D6
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8574
	cmp r1, #0x04
	bne _080A85C6
_080A8574:
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A857C
	adds r3, #0xFF
_080A857C:
	asrs r3, r3, #0x08
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080A8586
	adds r1, #0xFF
_080A8586:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080A859C
	adds r2, #0xFF
_080A859C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x28
	adds r0, r6, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080A85E4 @ =0x00000533
	adds r0, r5, #0x0
	bl sub_8088164
_080A85C6:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A85E8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A85EC @ =0x080A85F1
	str r0, [r7, #0x4C]
_080A85D6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A85E0: .4byte 0x03000FD8
_080A85E4: .4byte 0x00000533
_080A85E8: .4byte 0x00000FFF
_080A85EC: .4byte sub_80A85F0
