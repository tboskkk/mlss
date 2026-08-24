	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _08068AC6
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068B62
	adds r4, r5, #0x0
	adds r4, #0x8C
	b _08068AE2
_08068AC6:
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	adds r4, r2, #0x0
	cmp r0, #0x00
	bgt _08068B62
	str r3, [r5, #0x18]
_08068AE2:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	ldr r0, _08068B50 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	ldr r0, _08068B54 @ =0x08068C99
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068B58
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _08068B62
_08068B50: .4byte 0x00000199
_08068B54: .4byte sub_8068C98
_08068B58:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08068B62:
	pop {r4, r5}
	pop {r0}
	bx r0
