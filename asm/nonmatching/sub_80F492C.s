	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F4958
	ldr r0, _080F4954 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4968
	.byte 0x00, 0x00
_080F4954: .4byte 0x03000FD8
_080F4958:
	ldr r1, _080F49A4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4968:
	ldr r1, [r4, #0x04]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x08
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x0C
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F49AC
	ldr r0, _080F49A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F49BC
_080F49A4: .4byte 0x03000FDC
_080F49A8: .4byte 0x03000FD8
_080F49AC:
	ldr r1, _080F49D0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F49BC:
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F49D0: .4byte 0x03000FDC
