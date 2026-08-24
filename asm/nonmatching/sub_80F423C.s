	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	mov r9, r1
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F425C @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4260
	subs r0, #0x01
	b _080F4262
_080F425C: .4byte 0x0000179C
_080F4260:
	subs r0, #0x07
_080F4262:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r1, #0x0
	adds r0, r7, #0x0
	bl sub_80F68C4
	cmp r5, #0x07
	bhi _080F4288
	ldr r0, _080F4284 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4298
	.byte 0x00, 0x00
_080F4284: .4byte 0x03000FD8
_080F4288:
	ldr r1, _080F42B0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4298:
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080F42B4
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080F42B6
	.byte 0x00, 0x00
_080F42B0: .4byte 0x03000FDC
_080F42B4:
	movs r0, #0x10
_080F42B6:
	mov r8, r0
	cmp r5, #0x07
	bhi _080F42D0
	ldr r0, _080F42CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F42E0
_080F42CC: .4byte 0x03000FD8
_080F42D0:
	ldr r1, _080F430C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F42E0:
	ldr r1, [r6, #0x04]
	ldr r2, [r6, #0x00]
	movs r3, #0x00
	bl sub_8082E1C
	movs r2, #0x08
	ldsb r2, [r6, r2]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80F7A50
	cmp r5, #0x07
	bhi _080F4314
	ldr r0, _080F4310 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4324
	.byte 0x00, 0x00
_080F430C: .4byte 0x03000FDC
_080F4310: .4byte 0x03000FD8
_080F4314:
	ldr r1, _080F435C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4324:
	ldr r4, [r0, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x20
	movs r2, #0x00
	mov r1, r8
	strb r1, [r0, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	adds r0, r7, #0x0
	adds r0, #0x1C
	ldrb r3, [r6, #0x0C]
	str r2, [sp, #0x000]
	mov r1, r9
	adds r2, r4, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F435C: .4byte 0x03000FDC
