	.syntax unified
	.text

	thumb_func_start sub_80F63BC
sub_80F63BC:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F63F4
	cmp r2, #0x01
	bgt _080F63CE
	cmp r2, #0x00
	beq _080F63D4
	b _080F649A
_080F63CE:
	cmp r2, #0x02
	beq _080F6480
	b _080F649A
_080F63D4:
	ldr r0, _080F63EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080F63F0 @ =0x00000351
	adds r1, r0, r2
	movs r2, #0x80
	strb r2, [r1, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _080F649A
	.byte 0x00, 0x00
_080F63EC: .4byte 0x03000FD8
_080F63F0: .4byte 0x00000351
_080F63F4:
	ldr r4, _080F6474 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x00]
	ldr r1, _080F6478 @ =0x00000346
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6448
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080F6448
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_8086424
_080F6448:
	ldr r0, _080F6474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6468
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080F6468
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_8086424
_080F6468:
	ldr r0, _080F6474 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080F647C @ =0x08100E5D
	str r0, [r1, #0x24]
	b _080F649A
	.byte 0x00, 0x00
_080F6474: .4byte 0x03000FD8
_080F6478: .4byte 0x00000346
_080F647C: .4byte sub_8100E5C
_080F6480:
	ldr r0, _080F64A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x02
	adds r2, r1, r0
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r2, _080F64A8 @ =0x000002C1
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	subs r0, #0x09
	ands r0, r2
	strb r0, [r1, #0x00]
_080F649A:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F64A4: .4byte 0x03000FD8
_080F64A8: .4byte 0x000002C1
