	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FD8AA
	ldr r6, _080FD8B0 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r4, #0x04
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080FD8AA
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	movs r2, #0x15
	cmp r0, #0x00
	beq _080FD85A
	movs r2, #0x03
_080FD85A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	ldr r2, [r6, #0x00]
	adds r0, r2, r5
	ldrb r3, [r0, #0x00]
	lsls r1, r3, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r2, #0x80
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r4, #0x0
	ands r0, r3
	ldr r2, _080FD8B4 @ =0x00002068
	cmp r0, #0x00
	beq _080FD88A
	subs r2, #0x2F
_080FD88A:
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080FD8B8 @ =0x08106FFD
	str r0, [r7, #0x04]
_080FD8AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD8B0: .4byte 0x03000FD8
_080FD8B4: .4byte 0x00002068
_080FD8B8: .4byte sub_8106FFC
