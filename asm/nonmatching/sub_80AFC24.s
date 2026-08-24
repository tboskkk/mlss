	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AFD8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	mov r8, r0
	mov r4, r8
	adds r4, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AFC54
	b _080AFD7E
_080AFC54:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080AFC76
	adds r0, r1, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AFC76:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0x7D
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFC94
	cmp r1, #0x04
	bne _080AFCB0
_080AFC94:
	ldr r2, _080AFD90 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x05
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
_080AFCB0:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080AFCC4
	cmp r2, #0x04
	bne _080AFCE0
_080AFCC4:
	ldr r2, _080AFD94 @ =0x00002061
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
_080AFCE0:
	ldr r0, [r5, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	mov r8, r1
	add r0, r8
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AFD0E
	cmp r2, #0x04
	bne _080AFD6C
_080AFD0E:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080AFD16
	adds r0, #0xFF
_080AFD16:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x18
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AFD30
	adds r0, #0xFF
_080AFD30:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AFD46
	adds r3, #0xFF
_080AFD46:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	mov r1, r8
	bl sub_80880C4
_080AFD6C:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AFD98 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AFD9C @ =0x080AFDA1
	mov r1, r9
	str r0, [r1, #0x4C]
_080AFD7E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AFD8C: .4byte 0x03000FD8
_080AFD90: .4byte 0x00002032
_080AFD94: .4byte 0x00002061
_080AFD98: .4byte 0x00000FFF
_080AFD9C: .4byte sub_80AFDA0
