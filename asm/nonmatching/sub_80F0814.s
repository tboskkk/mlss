	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r2, #0x00]
	asrs r2, r1, #0x01
	movs r0, #0x0F
	ands r2, r0
	cmp r2, #0x00
	beq _080F082C
	cmp r2, #0x01
	beq _080F084A
	b _080F0872
_080F082C:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F083A
	cmp r0, #0x01
	beq _080F0842
	b _080F0872
_080F083A:
	ldr r0, [r3, #0x14]
	bl sub_80326F4
	b _080F0872
_080F0842:
	ldr r0, [r3, #0x14]
	bl sub_803C4A0
	b _080F0864
_080F084A:
	ands r2, r1
	cmp r2, #0x00
	beq _080F0856
	cmp r2, #0x01
	beq _080F085E
	b _080F0872
_080F0856:
	ldr r0, [r3, #0x14]
	bl sub_80328B4
	b _080F0872
_080F085E:
	ldr r0, [r3, #0x14]
	bl sub_803C468
_080F0864:
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F0872
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F0874
_080F0872:
	movs r0, #0x01
_080F0874:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
