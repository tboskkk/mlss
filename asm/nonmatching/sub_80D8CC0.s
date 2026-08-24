	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D12
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	movs r3, #0x00
	str r3, [r4, #0x4C]
	ldr r0, [r5, #0x28]
	ldr r1, _080D8D0C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080D8D10
	adds r0, r5, #0x0
	bl sub_8086700
	b _080D8D12
	.byte 0x00, 0x00
_080D8D0C: .4byte 0x00000111
_080D8D10:
	str r3, [r5, #0x4C]
_080D8D12:
	pop {r4, r5}
	pop {r0}
	bx r0
