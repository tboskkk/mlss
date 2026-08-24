	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, [r5, #0x2C]
	ldr r1, _080F4484 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4488
	subs r0, #0x01
	b _080F448A
	.byte 0x00, 0x00
_080F4484: .4byte 0x0000179C
_080F4488:
	subs r0, #0x07
_080F448A:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	adds r0, r5, #0x0
	bl sub_80F68C4
	cmp r4, #0x07
	bhi _080F44B0
	ldr r0, _080F44AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F44C0
	.byte 0x00, 0x00
_080F44AC: .4byte 0x03000FD8
_080F44B0:
	ldr r1, _080F44EC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F44C0:
	ldr r1, [r6, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r2, #0x04
	ldsb r2, [r6, r2]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r4, #0x07
	bhi _080F44F4
	ldr r0, _080F44F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4504
	.byte 0x00, 0x00
_080F44EC: .4byte 0x03000FDC
_080F44F0: .4byte 0x03000FD8
_080F44F4:
	ldr r1, _080F452C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4504:
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldrb r3, [r6, #0x08]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F452C: .4byte 0x03000FDC
