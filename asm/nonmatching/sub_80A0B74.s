	.syntax unified
	.text

	thumb_func_start sub_80A0B74
sub_80A0B74:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A0BC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A0BEC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A0BA8
	cmp r1, #0x04
	bne _080A0BE8
_080A0BA8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A0BCC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080A0BD8
_080A0BC8: .4byte 0x03000FD8
_080A0BCC:
	ldr r2, _080A0BF4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080A0BD8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A0BE8:
	ldr r0, _080A0BF8 @ =0x080A0BFD
	str r0, [r6, #0x4C]
_080A0BEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0BF4: .4byte 0x0000204D
_080A0BF8: .4byte sub_80A0BFC
