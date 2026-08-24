	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F477C
	ldr r0, _080F4778 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F478C
	.byte 0x00, 0x00
_080F4778: .4byte 0x03000FD8
_080F477C:
	ldr r1, _080F47A4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F478C:
	ldr r2, [r0, #0x08]
	cmp r2, #0x00
	beq _080F47A8
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F47AA
	.byte 0x00, 0x00
_080F47A4: .4byte 0x03000FDC
_080F47A8:
	movs r6, #0x10
_080F47AA:
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F47C4
	ldr r0, _080F47C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F47D4
_080F47C0: .4byte 0x03000FD8
_080F47C4:
	ldr r1, _080F4810 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F47D4:
	ldr r1, [r4, #0x08]
	ldr r2, [r4, #0x04]
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x0C
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x10
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F4818
	ldr r0, _080F4814 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4828
_080F4810: .4byte 0x03000FDC
_080F4814: .4byte 0x03000FD8
_080F4818:
	ldr r1, _080F4840 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4828:
	ldr r2, [r0, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r6, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F4840: .4byte 0x03000FDC
