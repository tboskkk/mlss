	.syntax unified
	.text

	thumb_func_start sub_80FD39C
sub_80FD39C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080FD3F0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r4, [r3, #0x7C]
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080FD400
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FD400
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	subs r2, #0x1E
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _080FD400
	ldr r0, _080FD3F4 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD3F8 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r5, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD3FC @ =0x080FDA35
	b _080FD43E
	.byte 0x00, 0x00
_080FD3F0: .4byte 0x03000FD8
_080FD3F4: .4byte 0x03000FDC
_080FD3F8: .4byte 0x00008E58
_080FD3FC: .4byte sub_80FDA34
_080FD400:
	bl sub_80813A0
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080FD43C
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	beq _080FD43C
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_810DEB8
	adds r0, r4, #0x0
	bl sub_807D77C
	ldr r0, _080FD438 @ =0x081070B9
	b _080FD43E
	.byte 0x00, 0x00
_080FD438: .4byte sub_81070B8
_080FD43C:
	ldr r0, _080FD448 @ =0x080FD44D
_080FD43E:
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FD448: .4byte sub_80FD44C
