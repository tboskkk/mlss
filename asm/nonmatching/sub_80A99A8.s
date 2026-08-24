	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A9A88 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	ldr r1, _080A9A8C @ =0xFFFFE200
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A9A80
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9A0A
	cmp r1, #0x04
	bne _080A9A26
_080A9A0A:
	ldr r2, _080A9A90 @ =0x00002030
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
_080A9A26:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9A38
	cmp r1, #0x04
	bne _080A9A54
_080A9A38:
	ldr r2, _080A9A94 @ =0x0000205F
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080A9A54:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A9A5C
	adds r1, #0xFF
_080A9A5C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A9A66
	adds r2, #0xFF
_080A9A66:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A9A70
	adds r3, #0xFF
_080A9A70:
	asrs r3, r3, #0x08
	adds r3, #0x17
	str r4, [sp, #0x000]
	ldr r0, _080A9A98 @ =0x00002F90
	bl sub_80DF024
	ldr r0, _080A9A9C @ =0x080A9AA1
	str r0, [r7, #0x4C]
_080A9A80:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A9A88: .4byte 0x03000FD8
_080A9A8C: .4byte 0xFFFFE200
_080A9A90: .4byte 0x00002030
_080A9A94: .4byte 0x0000205F
_080A9A98: .4byte 0x00002F90
_080A9A9C: .4byte sub_80A9AA0
