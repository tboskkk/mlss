	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A7980 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r1, [r2, #0x08]
	ldrh r3, [r1, #0x06]
	movs r7, #0x06
	ldsh r0, [r1, r7]
	cmp r0, #0xFF
	bgt _080A7954
	adds r0, r3, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r2, #0x08]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080A794E
	b _080A7A88
_080A794E:
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
_080A7954:
	ldr r1, [r2, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080A7988
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A797A
	cmp r1, #0x04
	beq _080A797A
	b _080A7A88
_080A797A:
	ldr r0, _080A7984 @ =0x080A83A1
	str r0, [r6, #0x4C]
	b _080A7A88
_080A7980: .4byte 0x03000FD8
_080A7984: .4byte sub_80A83A0
_080A7988:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x08]
	adds r0, #0x20
	movs r1, #0x08
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r7, #0x01
	negs r7, r7
	mov r8, r7
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A79CC
	cmp r1, #0x04
	bne _080A7A76
_080A79CC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A79D4
	adds r1, #0xFF
_080A79D4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A79EA
	adds r0, #0xFF
_080A79EA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A7A00
	adds r3, #0xFF
_080A7A00:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080A7A28
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A7A38
_080A7A28:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A7A38:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A7A40
	adds r0, #0xFF
_080A7A40:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A7A98 @ =0x03001038
	ldr r0, _080A7A9C @ =0x0819832C
	ldr r1, _080A7AA0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A7A5A
	adds r1, #0x3F
_080A7A5A:
	asrs r1, r1, #0x06
	adds r1, #0x3C
	movs r0, #0xE1
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	ldr r1, _080A7AA4 @ =0x00000566
	adds r0, r6, #0x0
	bl sub_8088164
_080A7A76:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A7AA8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A7AAC @ =0x080A7AB1
	mov r1, r9
	str r0, [r1, #0x4C]
_080A7A88:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A7A98: .4byte 0x03001038
_080A7A9C: .4byte 0x0819832C
_080A7AA0: .4byte 0x08198220
_080A7AA4: .4byte 0x00000566
_080A7AA8: .4byte 0x00000FFF
_080A7AAC: .4byte sub_80A7AB0
