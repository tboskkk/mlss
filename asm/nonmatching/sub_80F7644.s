	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F7668
	ldr r0, _080F7664 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _080F7678
_080F7664: .4byte 0x03000FD8
_080F7668:
	ldr r1, _080F76B4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r4, r0, r1
_080F7678:
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807FE7C
	ldr r2, [r4, #0x28]
	cmp r2, #0x00
	beq _080F76AE
	cmp r5, #0x00
	beq _080F76AE
	adds r1, r2, #0x0
	adds r1, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
_080F76AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F76B4: .4byte 0x03000FDC
