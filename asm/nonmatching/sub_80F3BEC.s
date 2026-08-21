	.syntax unified
	.text

	thumb_func_start sub_80F3BEC
sub_80F3BEC:
	push {r4, r5, lr}
	ldr r3, [r2, #0x00]
	asrs r0, r3, #0x01
	cmp r0, #0x01
	beq _080F3CA0
	cmp r0, #0x01
	bgt _080F3C00
	cmp r0, #0x00
	beq _080F3C06
	b _080F3D0C
_080F3C00:
	cmp r0, #0x02
	beq _080F3CE8
	b _080F3D0C
_080F3C06:
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _080F3C68
	ldr r2, [r2, #0x04]
	cmp r2, #0x07
	bgt _080F3C2C
	ldr r0, _080F3C28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	b _080F3C3C
	.byte 0x00, 0x00
_080F3C28: .4byte 0x03000FD8
_080F3C2C:
	ldr r1, _080F3C64 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r5, r0, r1
_080F3C3C:
	ldr r0, [r5, #0x08]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1F
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	lsls r4, r4, #0x04
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	b _080F3D0C
_080F3C64: .4byte 0x03000FDC
_080F3C68:
	ldr r2, [r2, #0x04]
	cmp r2, #0x07
	bgt _080F3C84
	ldr r0, _080F3C80 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F3C94
	.byte 0x00, 0x00
_080F3C80: .4byte 0x03000FD8
_080F3C84:
	ldr r1, _080F3C9C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F3C94:
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	b _080F3D0C
_080F3C9C: .4byte 0x03000FDC
_080F3CA0:
	ldr r3, [r2, #0x04]
	cmp r3, #0x07
	bgt _080F3CBC
	ldr r0, _080F3CB8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x08
	b _080F3CCC
_080F3CB8: .4byte 0x03000FD8
_080F3CBC:
	ldr r1, _080F3CE4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r3, r0, r1
_080F3CCC:
	ldr r1, [r2, #0x00]
	movs r0, #0x01
	ands r1, r0
	adds r3, #0x79
	eors r1, r0
	ldrb r2, [r3, #0x00]
	subs r0, #0x03
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080F3D0C
	.byte 0x00, 0x00
_080F3CE4: .4byte 0x03000FDC
_080F3CE8:
	ldr r0, _080F3D14 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	movs r0, #0x01
	ands r3, r0
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r3, r3, #0x07
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080F3D0C:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F3D14: .4byte 0x03000FD8
