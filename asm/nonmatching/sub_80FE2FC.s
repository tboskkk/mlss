	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	movs r6, #0x00
_080FE304:
	ldr r0, _080FE378 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _080FE318
	b _080FE488
_080FE318:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080FE328
	b _080FE488
_080FE328:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _080FE33E
	b _080FE488
_080FE33E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r1, [r0, #0x00]
	cmp r6, #0x01
	bne _080FE3A4
	ldr r0, [r2, #0x7C]
	cmp r0, r4
	bne _080FE37C
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE362
	adds r0, #0xFF
_080FE362:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x12
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE370
	adds r2, #0xFF
_080FE370:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	b _080FE3F6
	.byte 0x00, 0x00
_080FE378: .4byte 0x03000FD8
_080FE37C:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE390
	adds r0, #0xFF
_080FE390:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x10
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE39E
	adds r2, #0xFF
_080FE39E:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	b _080FE3F6
_080FE3A4:
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FE400
	ldr r0, [r2, #0x7C]
	cmp r0, r4
	bne _080FE3CE
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE3C8
	adds r0, #0xFF
_080FE3C8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	b _080FE3E8
_080FE3CE:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE3E2
	adds r0, #0xFF
_080FE3E2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x1E
_080FE3E8:
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE3F0
	adds r2, #0xFF
_080FE3F0:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
_080FE3F6:
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80F76FC
	b _080FE430
_080FE400:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE414
	adds r0, #0xFF
_080FE414:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x0B
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE422
	adds r2, #0xFF
_080FE422:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80F76FC
_080FE430:
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	bl sub_80F76B8
	ldrb r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_80F7644
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080FE464
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _080FE460 @ =0x00002002
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE472
_080FE460: .4byte 0x00002002
_080FE464:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _080FE49C @ =0x0000204F
	movs r3, #0x00
	bl sub_8082E1C
_080FE472:
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080FE488
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_080FE488:
	adds r6, #0x01
	cmp r6, #0x01
	bgt _080FE490
	b _080FE304
_080FE490:
	ldr r0, _080FE4A0 @ =0x080FE4A5
	str r0, [r7, #0x04]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FE49C: .4byte 0x0000204F
_080FE4A0: .4byte sub_80FE4A4
