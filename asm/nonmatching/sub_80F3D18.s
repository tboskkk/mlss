	.syntax unified
	.text

	thumb_func_start sub_80F3D18
sub_80F3D18:
	push {r4, lr}
	adds r1, r0, #0x0
	ldm r2!, {r0}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080F3D3E
	cmp r0, #0x01
	bgt _080F3D32
	cmp r0, #0x00
	beq _080F3D8E
	b _080F3EC4
_080F3D32:
	cmp r0, #0x02
	beq _080F3E08
	cmp r0, #0x03
	bne _080F3D3C
	b _080F3EB6
_080F3D3C:
	b _080F3EC4
_080F3D3E:
	cmp r3, #0x07
	bhi _080F3D58
	ldr r0, _080F3D54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F3D68
	.byte 0x00, 0x00
_080F3D54: .4byte 0x03000FD8
_080F3D58:
	ldr r1, _080F3D80 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F3D68:
	ldr r3, [r0, #0x08]
	cmp r3, #0x00
	bne _080F3D70
	b _080F3EC4
_080F3D70:
	ldr r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F3D84
	movs r0, #0x0F
	ands r1, r0
	b _080F3D86
_080F3D80: .4byte 0x03000FDC
_080F3D84:
	lsls r1, r1, #0x04
_080F3D86:
	adds r0, r3, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	b _080F3EC4
_080F3D8E:
	ldr r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080F3DD4
	cmp r3, #0x07
	bhi _080F3DB4
	ldr r0, _080F3DB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F3DC4
_080F3DB0: .4byte 0x03000FD8
_080F3DB4:
	ldr r1, _080F3DD0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r1, r0, r3
_080F3DC4:
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x04
	adds r1, #0x90
	strh r0, [r1, #0x00]
	b _080F3EC4
_080F3DD0: .4byte 0x03000FDC
_080F3DD4:
	cmp r3, #0x07
	bhi _080F3DEC
	ldr r0, _080F3DE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F3DFC
_080F3DE8: .4byte 0x03000FD8
_080F3DEC:
	ldr r1, _080F3E04 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F3DFC:
	lsls r1, r2, #0x08
	adds r0, #0x90
	strh r1, [r0, #0x00]
	b _080F3EC4
_080F3E04: .4byte 0x03000FDC
_080F3E08:
	cmp r3, #0x0F
	bhi _080F3E3C
	cmp r3, #0x07
	bhi _080F3E24
	ldr r0, _080F3E20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F3E4C
_080F3E20: .4byte 0x03000FD8
_080F3E24:
	ldr r1, _080F3E38 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
	b _080F3E4C
	.byte 0x00, 0x00
_080F3E38: .4byte 0x03000FDC
_080F3E3C:
	cmp r3, #0x10
	bne _080F3E54
	ldr r0, _080F3E50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F3E4C:
	ldr r4, [r0, #0x08]
	b _080F3E8E
_080F3E50: .4byte 0x03000FD8
_080F3E54:
	cmp r3, #0x12
	bhi _080F3E74
	ldr r0, _080F3E70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r3, #0xA1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F3E4C
	.byte 0x00, 0x00
_080F3E70: .4byte 0x03000FD8
_080F3E74:
	cmp r3, #0x13
	bne _080F3E8C
	ldr r0, _080F3E88 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	b _080F3E8E
	.byte 0x00, 0x00
_080F3E88: .4byte 0x03000FD8
_080F3E8C:
	movs r4, #0x00
_080F3E8E:
	cmp r4, #0x00
	beq _080F3EC4
	ldr r2, [r2, #0x00]
	movs r0, #0x03
	ands r2, r0
	lsls r3, r2, #0x04
	ldrb r1, [r4, #0x1F]
	subs r0, #0x34
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #0x02
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	adds r1, #0x09
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1F]
	b _080F3EC4
_080F3EB6:
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl sub_80F7ADC
_080F3EC4:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
