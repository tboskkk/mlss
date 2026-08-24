	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B63B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B63E2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B6306
	adds r1, #0xFF
_080B6306:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B6310
	adds r2, #0xFF
_080B6310:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B631A
	adds r3, #0xFF
_080B631A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080B63BC @ =0x00002FAC
	bl sub_80DF024
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6336
	cmp r1, #0x04
	bne _080B6386
_080B6336:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B633E
	adds r1, #0xFF
_080B633E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B6354
	adds r0, #0xFF
_080B6354:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B636A
	adds r3, #0xFF
_080B636A:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8088274
_080B6386:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6398
	cmp r1, #0x04
	bne _080B63DC
_080B6398:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B63C0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B63CC
_080B63B8: .4byte 0x03000FD8
_080B63BC: .4byte 0x00002FAC
_080B63C0:
	ldr r2, _080B63F0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B63CC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B63DC:
	ldr r0, _080B63F4 @ =0x080B63F9
	mov r1, r8
	str r0, [r1, #0x4C]
_080B63E2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B63F0: .4byte 0x0000204D
_080B63F4: .4byte sub_80B63F8
