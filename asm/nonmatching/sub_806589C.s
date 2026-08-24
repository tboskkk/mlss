	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065930
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	beq _080658D8
	cmp r0, #0x10
	beq _080658FC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	b _0806592C
_080658D8:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _080658F8 @ =0x080655BD
	b _0806592E
	.byte 0x00, 0x00
_080658F8: .4byte sub_80655BC
_080658FC:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _0806591C @ =0x08065665
	b _0806592E
	.byte 0x00, 0x00
_0806591C: .4byte sub_8065664
_08065920:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806592C:
	ldr r0, _08065938 @ =0x0808750D
_0806592E:
	str r0, [r4, #0x4C]
_08065930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065938: .4byte sub_808750C
