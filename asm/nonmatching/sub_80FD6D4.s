	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _080FD7F0 @ =0x03000FD8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x7C]
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _080FD6F2
	b _080FD81A
_080FD6F2:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _080FD704
	b _080FD80C
_080FD704:
	adds r0, r4, #0x0
	adds r0, #0xE8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FD800
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r2, [r1, #0x00]
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	cmp r2, #0x00
	beq _080FD730
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _080FD730
	str r5, [r2, #0x74]
_080FD730:
	cmp r3, #0x00
	beq _080FD746
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FD746
	movs r0, #0x00
	str r0, [r3, #0x74]
_080FD746:
	ldr r5, _080FD7F0 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r6, #0xB0
	lsls r6, r6, #0x02
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	bl nullsub_4
	ldr r0, _080FD7F4 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD7F8 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _080FD7FC @ =0x08106F35
	str r1, [r0, #0x00]
	str r1, [r7, #0x04]
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	b _080FD81A
_080FD7F0: .4byte 0x03000FD8
_080FD7F4: .4byte 0x03000FDC
_080FD7F8: .4byte 0x00008E58
_080FD7FC: .4byte sub_8106F34
_080FD800:
	ldr r0, _080FD808 @ =0x080FCC79
	str r0, [r7, #0x04]
	b _080FD81A
	.byte 0x00, 0x00
_080FD808: .4byte sub_80FCC78
_080FD80C:
	bl sub_8083C74
	ldr r1, _080FD824 @ =0x080FDC3D
	str r1, [r7, #0x04]
	adds r0, r7, #0x0
	bl _call_via_r1
_080FD81A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FD824: .4byte sub_80FDC3C
