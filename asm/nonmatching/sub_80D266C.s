	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2718 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2710
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D269A
	cmp r1, #0x04
	bne _080D26DE
_080D269A:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D26A2
	adds r1, #0xFF
_080D26A2:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D26B8
	adds r2, #0xFF
_080D26B8:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D26DE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D26F0
	cmp r1, #0x04
	bne _080D270C
_080D26F0:
	ldr r2, _080D271C @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0A
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
_080D270C:
	ldr r0, _080D2720 @ =0x080D2725
	str r0, [r5, #0x4C]
_080D2710:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2718: .4byte 0x03000FD8
_080D271C: .4byte 0x00002036
_080D2720: .4byte sub_80D2724
