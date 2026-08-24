	push {r4, r5, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsrs r5, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F6AE8
	ldr r0, _080F6AE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F6AF8
_080F6AE4: .4byte 0x03000FD8
_080F6AE8:
	ldr r1, _080F6B10 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F6AF8:
	cmp r3, #0x00
	beq _080F6B34
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0x00
	beq _080F6B14
	movs r0, #0x0F
	ands r4, r0
	lsls r1, r4, #0x04
	adds r0, r2, #0x0
	adds r0, #0x7C
	b _080F6B28
_080F6B10: .4byte 0x03000FDC
_080F6B14:
	cmp r4, #0x00
	beq _080F6B20
	lsls r1, r4, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7C
	b _080F6B28
_080F6B20:
	adds r0, r2, #0x0
	adds r0, #0x90
	ldrh r1, [r0, #0x00]
	subs r0, #0x14
_080F6B28:
	strh r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _080F6B3E
_080F6B34:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0x0
	bl sub_80F76B8
_080F6B3E:
	pop {r4, r5}
	pop {r0}
	bx r0
