	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080F1BCC
	cmp r1, #0x01
	bgt _080F1BB8
	cmp r1, #0x00
	beq _080F1BC2
	b _080F1BF2
_080F1BB8:
	cmp r1, #0x02
	beq _080F1BDC
	cmp r1, #0x03
	beq _080F1BE8
	b _080F1BF2
_080F1BC2:
	ldr r0, _080F1BC8 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	b _080F1BF2
_080F1BC8: .4byte 0x03000FD0
_080F1BCC:
	ldr r0, _080F1BD8 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	b _080F1BF0
	.byte 0x00, 0x00
_080F1BD8: .4byte 0x03000FD0
_080F1BDC:
	ldr r0, _080F1BE4 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	adds r0, #0xA8
	b _080F1BF2
_080F1BE4: .4byte 0x03000FD0
_080F1BE8:
	ldr r0, _080F1C08 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x01
_080F1BF0:
	adds r0, r0, r1
_080F1BF2:
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F1C02
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1C02:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F1C08: .4byte 0x03000FD0
