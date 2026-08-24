	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061198
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061126
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	b _08061132
_08061126:
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x48
_08061132:
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061176
	adds r1, #0xFF
_08061176:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08061180
	adds r2, #0xFF
_08061180:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806118A
	adds r3, #0xFF
_0806118A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080611A0 @ =0x00001071
	bl sub_80DF024
	ldr r0, _080611A4 @ =0x080611A9
	str r0, [r4, #0x4C]
_08061198:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080611A0: .4byte 0x00001071
_080611A4: .4byte sub_80611A8
