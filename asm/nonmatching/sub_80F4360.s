	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F4378 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F437C
	subs r0, #0x01
	b _080F437E
	.byte 0x00, 0x00
_080F4378: .4byte 0x0000179C
_080F437C:
	subs r0, #0x07
_080F437E:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	adds r0, r6, #0x0
	bl sub_80F68C4
	cmp r4, #0x07
	bhi _080F43A4
	ldr r0, _080F43A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F43B4
	.byte 0x00, 0x00
_080F43A0: .4byte 0x03000FD8
_080F43A4:
	ldr r1, _080F43CC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F43B4:
	ldr r2, [r0, #0x08]
	cmp r2, #0x00
	beq _080F43D0
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080F43D2
	.byte 0x00, 0x00
_080F43CC: .4byte 0x03000FDC
_080F43D0:
	movs r7, #0x10
_080F43D2:
	cmp r4, #0x07
	bhi _080F43EC
	ldr r0, _080F43E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F43FC
	.byte 0x00, 0x00
_080F43E8: .4byte 0x03000FD8
_080F43EC:
	ldr r1, _080F4434 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F43FC:
	ldr r1, [r5, #0x04]
	ldr r2, [r5, #0x00]
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	ldsh r2, [r5, r0]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F6A0C
	movs r2, #0x0C
	ldsb r2, [r5, r2]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r4, #0x07
	bhi _080F443C
	ldr r0, _080F4438 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F444C
	.byte 0x00, 0x00
_080F4434: .4byte 0x03000FDC
_080F4438: .4byte 0x03000FD8
_080F443C:
	ldr r1, _080F4464 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F444C:
	ldr r2, [r0, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r7, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F4464: .4byte 0x03000FDC
