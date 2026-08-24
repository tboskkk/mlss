	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B15F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _080B15E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1554
	cmp r1, #0x04
	bne _080B156C
_080B1554:
	ldr r2, _080B15F4 @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B156C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B157E
	cmp r1, #0x04
	bne _080B1596
_080B157E:
	ldr r2, _080B15F8 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1596:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r4, #0x26]
	ldr r0, _080B15FC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, _080B1600 @ =0x080B1605
	mov r1, r8
	str r0, [r1, #0x4C]
_080B15E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B15F0: .4byte 0x03000FD8
_080B15F4: .4byte 0x00002032
_080B15F8: .4byte 0x00002061
_080B15FC: .4byte 0xFFFFF000
_080B1600: .4byte sub_80B1604
