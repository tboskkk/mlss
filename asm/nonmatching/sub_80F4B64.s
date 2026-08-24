	push {lr}
	ldm r2!, {r3}
	cmp r3, #0x01
	beq _080F4C14
	cmp r3, #0x01
	bgt _080F4B76
	cmp r3, #0x00
	beq _080F4B7E
	b _080F4CDC
_080F4B76:
	cmp r3, #0x02
	bne _080F4B7C
	b _080F4CAE
_080F4B7C:
	b _080F4CDC
_080F4B7E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x0F
	bgt _080F4BB4
	cmp r2, #0x07
	bgt _080F4B9C
	ldr r0, _080F4B98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4BC4
_080F4B98: .4byte 0x03000FD8
_080F4B9C:
	ldr r1, _080F4BB0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _080F4BC4
	.byte 0x00, 0x00
_080F4BB0: .4byte 0x03000FDC
_080F4BB4:
	cmp r2, #0x10
	bne _080F4BCC
	ldr r0, _080F4BC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
_080F4BC4:
	ldr r2, [r0, #0x08]
	b _080F4C06
_080F4BC8: .4byte 0x03000FD8
_080F4BCC:
	cmp r2, #0x12
	bgt _080F4BEC
	ldr r0, _080F4BE8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4BC4
	.byte 0x00, 0x00
_080F4BE8: .4byte 0x03000FD8
_080F4BEC:
	cmp r2, #0x13
	bne _080F4C04
	ldr r0, _080F4C00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4C06
	.byte 0x00, 0x00
_080F4C00: .4byte 0x03000FD8
_080F4C04:
	movs r2, #0x00
_080F4C06:
	cmp r2, #0x00
	beq _080F4CDC
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _080F4CDC
_080F4C14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x0F
	bgt _080F4C4C
	cmp r2, #0x07
	bgt _080F4C34
	ldr r0, _080F4C30 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4C5C
	.byte 0x00, 0x00
_080F4C30: .4byte 0x03000FD8
_080F4C34:
	ldr r1, _080F4C48 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _080F4C5C
	.byte 0x00, 0x00
_080F4C48: .4byte 0x03000FDC
_080F4C4C:
	cmp r2, #0x10
	bne _080F4C64
	ldr r0, _080F4C60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F4C5C:
	ldr r2, [r0, #0x08]
	b _080F4C9E
_080F4C60: .4byte 0x03000FD8
_080F4C64:
	cmp r2, #0x12
	bgt _080F4C84
	ldr r0, _080F4C80 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4C5C
	.byte 0x00, 0x00
_080F4C80: .4byte 0x03000FD8
_080F4C84:
	cmp r2, #0x13
	bne _080F4C9C
	ldr r0, _080F4C98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4C9E
	.byte 0x00, 0x00
_080F4C98: .4byte 0x03000FD8
_080F4C9C:
	movs r2, #0x00
_080F4C9E:
	cmp r2, #0x00
	beq _080F4CDC
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _080F4CDC
_080F4CAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x07
	bgt _080F4CC8
	ldr r0, _080F4CC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4CD8
_080F4CC4: .4byte 0x03000FD8
_080F4CC8:
	ldr r1, _080F4CE4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F4CD8:
	bl sub_80835E0
_080F4CDC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4CE4: .4byte 0x03000FDC
