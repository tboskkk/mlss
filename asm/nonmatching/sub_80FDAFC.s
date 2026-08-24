	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r7, _080FDBA8 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r3, r0, #0x1D
	lsrs r1, r3, #0x1F
	movs r0, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r2, #0x80
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FDBA0
	lsrs r0, r3, #0x1F
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x28
	cmp r0, #0x00
	beq _080FDB6A
	movs r1, #0x36
_080FDB6A:
	movs r2, #0x7C
	cmp r0, #0x00
	beq _080FDB72
	movs r2, #0x5C
_080FDB72:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	movs r2, #0x20
	bl sub_808842C
	ldr r1, _080FDBAC @ =0x080FDBB1
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
_080FDBA0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FDBA8: .4byte 0x03000FD8
_080FDBAC: .4byte sub_80FDBB0
