	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B4330 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B42B4
	b _080B43F2
_080B42B4:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B42D2
	cmp r1, #0x04
	bne _080B4384
_080B42D2:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B42DA
	adds r1, #0xFF
_080B42DA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B42F0
	adds r0, #0xFF
_080B42F0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B4306
	adds r3, #0xFF
_080B4306:
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
	bne _080B4334
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B4344
	.byte 0x00, 0x00
_080B4330: .4byte 0x03000FD8
_080B4334:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B4344:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B434C
	adds r0, #0xFF
_080B434C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B43B8 @ =0x03001038
	ldr r0, _080B43BC @ =0x0819832C
	ldr r1, _080B43C0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B4366
	adds r1, #0x3F
_080B4366:
	asrs r1, r1, #0x06
	adds r1, #0x3C
	movs r0, #0xE1
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B4384:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4396
	cmp r1, #0x04
	bne _080B43E0
_080B4396:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B43C4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B43D0
	.byte 0x00, 0x00
_080B43B8: .4byte 0x03001038
_080B43BC: .4byte 0x0819832C
_080B43C0: .4byte 0x08198220
_080B43C4:
	ldr r2, _080B4400 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B43D0:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B43E0:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4404 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B4408 @ =0x080B440D
	mov r1, r9
	str r0, [r1, #0x4C]
_080B43F2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B4400: .4byte 0x0000204D
_080B4404: .4byte 0x00000FFF
_080B4408: .4byte sub_80B440C
