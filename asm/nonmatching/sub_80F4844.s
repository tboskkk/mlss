	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _080F4876
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xFD
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F4876:
	ldr r1, [r4, #0x00]
	lsls r0, r1, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r2, [r6, #0x2C]
	adds r5, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F48A8
	ldr r0, _080F48A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F48B8
_080F48A4: .4byte 0x03000FD8
_080F48A8:
	ldr r1, _080F48E8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
_080F48B8:
	ldr r1, [r4, #0x04]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x08
	ldsb r2, [r4, r2]
	adds r0, r6, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F48F0
	ldr r0, _080F48EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4900
	.byte 0x00, 0x00
_080F48E8: .4byte 0x03000FDC
_080F48EC: .4byte 0x03000FD8
_080F48F0:
	ldr r1, _080F4928 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4900:
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldrb r3, [r4, #0x0C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F4928: .4byte 0x03000FDC
