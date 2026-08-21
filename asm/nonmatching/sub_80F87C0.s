	.syntax unified
	.text

	thumb_func_start sub_80F87C0
sub_80F87C0:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F87E8
	cmp r2, #0x01
	bgt _080F87D4
	cmp r2, #0x00
	beq _080F87DA
	b _080F880A
_080F87D4:
	cmp r2, #0x02
	beq _080F8800
	b _080F880A
_080F87DA:
	ldr r0, _080F87E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x40]
	b _080F880A
	.byte 0x00, 0x00
_080F87E4: .4byte 0x03000FD8
_080F87E8:
	ldr r0, _080F87FC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	lsls r0, r1, #0x1E
	lsrs r3, r0, #0x1F
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _080F880A
_080F87FC: .4byte 0x03000FD8
_080F8800:
	ldr r0, _080F8814 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x1F
	lsrs r3, r0, #0x1F
_080F880A:
	cmp r3, #0x00
	bne _080F8818
	movs r0, #0x01
	b _080F881E
	.byte 0x00, 0x00
_080F8814: .4byte 0x03000FD8
_080F8818:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F881E:
	pop {r4}
	pop {r1}
	bx r1
