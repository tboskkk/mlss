	.syntax unified
	.text

	thumb_func_start sub_80C0D90
sub_80C0D90:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r4, _080C0F1C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x05
	strb r0, [r1, #0x0E]
	ldr r5, [r4, #0x00]
	ldr r0, _080C0F20 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	adds r2, #0x48
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x0A]
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x88
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C0DFA
	cmp r1, #0x04
	bne _080C0E40
_080C0DFA:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0E08
	adds r0, #0xFF
_080C0E08:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0E1A
	adds r0, #0xFF
_080C0E1A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0E2C
	adds r0, #0xFF
_080C0E2C:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080C0E40:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C0E54
	cmp r2, #0x04
	bne _080C0E6C
_080C0E54:
	ldr r2, _080C0F24 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C0E6C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C0E7A
	cmp r2, #0x04
	bne _080C0E84
_080C0E7A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808862C
_080C0E84:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C0E98
	cmp r2, #0x04
	bne _080C0EE2
_080C0E98:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0EA6
	adds r0, #0xFF
_080C0EA6:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x0A
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0EB8
	adds r0, #0xFF
_080C0EB8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C0ECA
	adds r0, #0xFF
_080C0ECA:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080C0EE2:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C0EF0
	cmp r2, #0x04
	bne _080C0F08
_080C0EF0:
	ldr r2, _080C0F28 @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C0F08:
	ldr r0, _080C0F2C @ =0x080C8805
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C0F1C: .4byte 0x03000FD8
_080C0F20: .4byte 0x03000FF4
_080C0F24: .4byte 0x00002034
_080C0F28: .4byte 0x00002063
_080C0F2C: .4byte sub_80C8804
