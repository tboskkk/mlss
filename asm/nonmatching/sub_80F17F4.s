	.syntax unified
	.text

	thumb_func_start sub_80F17F4
sub_80F17F4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	cmp r3, #0xFF
	beq _080F1836
	ldr r2, [r5, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	cmp r0, r3
	beq _080F182C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F1824
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl sub_802E854
	b _080F182C
_080F1824:
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl sub_802EC64
_080F182C:
	ldr r4, [r4, #0x00]
	ldr r0, [r5, #0x14]
	bl sub_8029830
	b _080F183E
_080F1836:
	movs r4, #0xFF
	ldr r0, [r5, #0x14]
	bl sub_8029804
_080F183E:
	ldr r0, _080F1854 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1854: .4byte 0x03000FD0
