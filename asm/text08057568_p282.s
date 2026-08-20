	.include "asm/macros.inc"

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
	thumb_func_start sub_80F3ECC
sub_80F3ECC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F3EE8 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F3EEC
	subs r0, #0x01
	b _080F3EEE
	.byte 0x00, 0x00
_080F3EE8: .4byte 0x0000179C
_080F3EEC:
	subs r0, #0x07
_080F3EEE:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F3F0A
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x04
	str r0, [r4, #0x10]
_080F3F0A:
	ldr r2, [r4, #0x14]
	movs r3, #0x00
	ldr r0, [r4, #0x04]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F3F1C
	movs r3, #0x01
_080F3F1C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_80F6AC0
	ldr r1, [r4, #0x08]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x04]
	movs r4, #0x01
	eors r0, r4
	ands r0, r4
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80F76FC
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_80F7644
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F3F58
sub_80F3F58:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x2C]
	ldr r1, _080F3F70 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F3F74
	subs r0, #0x01
	b _080F3F76
_080F3F70: .4byte 0x0000179C
_080F3F74:
	subs r0, #0x07
_080F3F76:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r7, r1, #0x0
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080F3FB2
	ldr r0, [r4, #0x04]
	lsls r3, r0, #0x04
	str r3, [r4, #0x04]
	ldr r0, [r4, #0x08]
	lsls r2, r0, #0x04
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	movs r1, #0x01
	adds r0, r6, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F3FB2
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r4, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [r4, #0x08]
_080F3FB2:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _080F3FCC
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80F7984
	b _080F3FDC
_080F3FCC:
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80F79F0
_080F3FDC:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F3FE8
sub_80F3FE8:
	push {r4, r5, lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x2C]
	ldr r3, _080F4000 @ =0x0000179C
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4004
	subs r0, #0x01
	cmp r0, #0x07
	ble _080F400A
	b _080F403A
_080F4000: .4byte 0x0000179C
_080F4004:
	subs r0, #0x07
	cmp r0, #0x07
	bgt _080F403A
_080F400A:
	ldr r0, _080F4020 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r1, #0x2C]
	ldr r1, _080F4024 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4028
	subs r0, #0x01
	b _080F402A
	.byte 0x00, 0x00
_080F4020: .4byte 0x03000FD8
_080F4024: .4byte 0x0000179C
_080F4028:
	subs r0, #0x07
_080F402A:
	lsls r1, r0, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	b _080F4078
_080F403A:
	ldr r0, [r1, #0x2C]
	ldr r3, _080F4060 @ =0x0000179C
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ldr r0, _080F4064 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x04
	adds r4, r0, r3
	cmp r1, #0x06
	bhi _080F406C
	subs r1, #0x01
	movs r0, #0xD0
	muls r0, r1
	adds r0, r4, r0
	ldr r1, _080F4068 @ =0xFFFFF980
	adds r5, r0, r1
	b _080F4078
	.byte 0x00, 0x00
_080F4060: .4byte 0x0000179C
_080F4064: .4byte 0x03000FDC
_080F4068: .4byte 0xFFFFF980
_080F406C:
	subs r1, #0x07
	movs r0, #0xD0
	muls r0, r1
	adds r0, r4, r0
	ldr r3, _080F40BC @ =0xFFFFF980
	adds r5, r0, r3
_080F4078:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x04]
	ldr r3, [r2, #0x00]
	lsls r1, r1, #0x09
	adds r1, r3, r1
	ldr r4, _080F40C0 @ =0x03001038
	ldr r0, _080F40C4 @ =0x0819832C
	ldr r2, _080F40C8 @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807FE7C
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F40BC: .4byte 0xFFFFF980
_080F40C0: .4byte 0x03001038
_080F40C4: .4byte 0x0819832C
_080F40C8: .4byte 0x08198220
	thumb_func_start sub_80F40CC
sub_80F40CC:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	movs r6, #0x00
	ldr r0, [r3, #0x2C]
	ldr r1, _080F40EC @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F40F0
	subs r0, #0x01
	cmp r0, #0x07
	ble _080F40F6
	b _080F4124
	.byte 0x00, 0x00
_080F40EC: .4byte 0x0000179C
_080F40F0:
	subs r0, #0x07
	cmp r0, #0x07
	bgt _080F4124
_080F40F6:
	ldr r0, _080F410C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	ldr r1, _080F4110 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4114
	subs r0, #0x01
	b _080F4116
	.byte 0x00, 0x00
_080F410C: .4byte 0x03000FD8
_080F4110: .4byte 0x0000179C
_080F4114:
	subs r0, #0x07
_080F4116:
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4160
_080F4124:
	ldr r0, [r3, #0x2C]
	ldr r2, _080F4148 @ =0x0000179C
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	ldr r0, _080F414C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x04
	adds r3, r0, r2
	cmp r1, #0x06
	bhi _080F4154
	subs r1, #0x01
	movs r0, #0xD0
	muls r0, r1
	adds r0, r3, r0
	ldr r1, _080F4150 @ =0xFFFFF980
	adds r0, r0, r1
	b _080F4160
_080F4148: .4byte 0x0000179C
_080F414C: .4byte 0x03000FDC
_080F4150: .4byte 0xFFFFF980
_080F4154:
	subs r1, #0x07
	movs r0, #0xD0
	muls r0, r1
	adds r0, r3, r0
	ldr r2, _080F417C @ =0xFFFFF980
	adds r0, r0, r2
_080F4160:
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F416A
	movs r6, #0x01
_080F416A:
	ldm r4!, {r0}
	cmp r6, r0
	beq _080F4174
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
_080F4174:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F417C: .4byte 0xFFFFF980
	thumb_func_start sub_80F4180
sub_80F4180:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	mov r8, r1
	adds r4, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F41A0 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F41A4
	subs r0, #0x01
	b _080F41A6
	.byte 0x00, 0x00
_080F41A0: .4byte 0x0000179C
_080F41A4:
	subs r0, #0x07
_080F41A6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0x0
	cmp r6, #0x07
	bhi _080F41C8
	ldr r0, _080F41C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x08
	b _080F41D8
	.byte 0x00, 0x00
_080F41C4: .4byte 0x03000FD8
_080F41C8:
	ldr r1, _080F4238 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r6
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r3, r0, r2
_080F41D8:
	adds r0, r3, #0x0
	adds r0, #0x90
	ldrh r1, [r0, #0x00]
	subs r0, #0x14
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	movs r0, #0x00
	ldsh r3, [r5, r0]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80F76FC
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_80F7644
	mov r2, r8
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F4238: .4byte 0x03000FDC
	thumb_func_start sub_80F423C
sub_80F423C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	mov r9, r1
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F425C @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4260
	subs r0, #0x01
	b _080F4262
_080F425C: .4byte 0x0000179C
_080F4260:
	subs r0, #0x07
_080F4262:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r1, #0x0
	adds r0, r7, #0x0
	bl sub_80F68C4
	cmp r5, #0x07
	bhi _080F4288
	ldr r0, _080F4284 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4298
	.byte 0x00, 0x00
_080F4284: .4byte 0x03000FD8
_080F4288:
	ldr r1, _080F42B0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4298:
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080F42B4
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080F42B6
	.byte 0x00, 0x00
_080F42B0: .4byte 0x03000FDC
_080F42B4:
	movs r0, #0x10
_080F42B6:
	mov r8, r0
	cmp r5, #0x07
	bhi _080F42D0
	ldr r0, _080F42CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F42E0
_080F42CC: .4byte 0x03000FD8
_080F42D0:
	ldr r1, _080F430C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F42E0:
	ldr r1, [r6, #0x04]
	ldr r2, [r6, #0x00]
	movs r3, #0x00
	bl sub_8082E1C
	movs r2, #0x08
	ldsb r2, [r6, r2]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80F7A50
	cmp r5, #0x07
	bhi _080F4314
	ldr r0, _080F4310 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4324
	.byte 0x00, 0x00
_080F430C: .4byte 0x03000FDC
_080F4310: .4byte 0x03000FD8
_080F4314:
	ldr r1, _080F435C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r5
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4324:
	ldr r4, [r0, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x20
	movs r2, #0x00
	mov r1, r8
	strb r1, [r0, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	adds r0, r7, #0x0
	adds r0, #0x1C
	ldrb r3, [r6, #0x0C]
	str r2, [sp, #0x000]
	mov r1, r9
	adds r2, r4, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F435C: .4byte 0x03000FDC
	thumb_func_start sub_80F4360
sub_80F4360:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F4378 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F437C
	subs r0, #0x01
	b _080F437E
	.byte 0x00, 0x00
_080F4378: .4byte 0x0000179C
_080F437C:
	subs r0, #0x07
_080F437E:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	adds r0, r6, #0x0
	bl sub_80F68C4
	cmp r4, #0x07
	bhi _080F43A4
	ldr r0, _080F43A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F43B4
	.byte 0x00, 0x00
_080F43A0: .4byte 0x03000FD8
_080F43A4:
	ldr r1, _080F43CC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F43B4:
	ldr r2, [r0, #0x08]
	cmp r2, #0x00
	beq _080F43D0
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080F43D2
	.byte 0x00, 0x00
_080F43CC: .4byte 0x03000FDC
_080F43D0:
	movs r7, #0x10
_080F43D2:
	cmp r4, #0x07
	bhi _080F43EC
	ldr r0, _080F43E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F43FC
	.byte 0x00, 0x00
_080F43E8: .4byte 0x03000FD8
_080F43EC:
	ldr r1, _080F4434 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F43FC:
	ldr r1, [r5, #0x04]
	ldr r2, [r5, #0x00]
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	ldsh r2, [r5, r0]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F6A0C
	movs r2, #0x0C
	ldsb r2, [r5, r2]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r4, #0x07
	bhi _080F443C
	ldr r0, _080F4438 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F444C
	.byte 0x00, 0x00
_080F4434: .4byte 0x03000FDC
_080F4438: .4byte 0x03000FD8
_080F443C:
	ldr r1, _080F4464 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F444C:
	ldr r2, [r0, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r7, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F4464: .4byte 0x03000FDC
	thumb_func_start sub_80F4468
sub_80F4468:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, [r5, #0x2C]
	ldr r1, _080F4484 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4488
	subs r0, #0x01
	b _080F448A
	.byte 0x00, 0x00
_080F4484: .4byte 0x0000179C
_080F4488:
	subs r0, #0x07
_080F448A:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	adds r0, r5, #0x0
	bl sub_80F68C4
	cmp r4, #0x07
	bhi _080F44B0
	ldr r0, _080F44AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F44C0
	.byte 0x00, 0x00
_080F44AC: .4byte 0x03000FD8
_080F44B0:
	ldr r1, _080F44EC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F44C0:
	ldr r1, [r6, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r2, #0x04
	ldsb r2, [r6, r2]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r4, #0x07
	bhi _080F44F4
	ldr r0, _080F44F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4504
	.byte 0x00, 0x00
_080F44EC: .4byte 0x03000FDC
_080F44F0: .4byte 0x03000FD8
_080F44F4:
	ldr r1, _080F452C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4504:
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldrb r3, [r6, #0x08]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F452C: .4byte 0x03000FDC
	thumb_func_start sub_80F4530
sub_80F4530:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F4548 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F454C
	subs r0, #0x01
	b _080F454E
	.byte 0x00, 0x00
_080F4548: .4byte 0x0000179C
_080F454C:
	subs r0, #0x07
_080F454E:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r4, r1, #0x0
	cmp r4, #0x07
	bhi _080F456C
	ldr r0, _080F4568 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F457C
_080F4568: .4byte 0x03000FD8
_080F456C:
	ldr r1, _080F459C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F457C:
	ldr r5, [r0, #0x08]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F68C4
	ldr r0, [r6, #0x00]
	cmp r0, #0xFF
	bne _080F45A2
	cmp r5, #0x00
	beq _080F45A0
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	str r0, [r6, #0x00]
	b _080F45A2
	.byte 0x00, 0x00
_080F459C: .4byte 0x03000FDC
_080F45A0:
	str r5, [r6, #0x00]
_080F45A2:
	cmp r4, #0x07
	bhi _080F45BC
	ldr r0, _080F45B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F45CC
	.byte 0x00, 0x00
_080F45B8: .4byte 0x03000FD8
_080F45BC:
	ldr r1, _080F4604 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F45CC:
	ldr r1, [r6, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x04
	ldsh r2, [r6, r0]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F6A0C
	movs r2, #0x08
	ldsb r2, [r6, r2]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80F7A50
	cmp r5, #0x00
	beq _080F45FA
	ldrb r0, [r5, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x12]
_080F45FA:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4604: .4byte 0x03000FDC
	thumb_func_start sub_80F4608
sub_80F4608:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	beq _080F463E
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xFD
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F463E:
	ldr r1, [r5, #0x00]
	lsls r0, r1, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r2, [r7, #0x2C]
	adds r6, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0x0
	bl sub_80F68C4
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F4670
	ldr r0, _080F466C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4680
_080F466C: .4byte 0x03000FD8
_080F4670:
	ldr r1, _080F4698 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
_080F4680:
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080F469C
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080F469E
	.byte 0x00, 0x00
_080F4698: .4byte 0x03000FDC
_080F469C:
	movs r0, #0x10
_080F469E:
	mov r8, r0
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F46BC
	ldr r0, _080F46B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F46CC
	.byte 0x00, 0x00
_080F46B8: .4byte 0x03000FD8
_080F46BC:
	ldr r1, _080F46FC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F46CC:
	ldr r1, [r5, #0x08]
	ldr r2, [r5, #0x04]
	movs r3, #0x00
	bl sub_8082E1C
	movs r2, #0x00
	ldsh r1, [r5, r2]
	movs r2, #0x0C
	ldsb r2, [r5, r2]
	adds r0, r7, #0x0
	bl sub_80F7A50
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F4704
	ldr r0, _080F4700 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4714
	.byte 0x00, 0x00
_080F46FC: .4byte 0x03000FDC
_080F4700: .4byte 0x03000FD8
_080F4704:
	ldr r1, _080F474C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
_080F4714:
	ldr r4, [r0, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x20
	movs r2, #0x00
	mov r1, r8
	strb r1, [r0, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	adds r0, r7, #0x0
	adds r0, #0x1C
	ldrb r3, [r5, #0x10]
	str r2, [sp, #0x000]
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F474C: .4byte 0x03000FDC
	thumb_func_start sub_80F4750
sub_80F4750:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F477C
	ldr r0, _080F4778 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F478C
	.byte 0x00, 0x00
_080F4778: .4byte 0x03000FD8
_080F477C:
	ldr r1, _080F47A4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F478C:
	ldr r2, [r0, #0x08]
	cmp r2, #0x00
	beq _080F47A8
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080F47AA
	.byte 0x00, 0x00
_080F47A4: .4byte 0x03000FDC
_080F47A8:
	movs r6, #0x10
_080F47AA:
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F47C4
	ldr r0, _080F47C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F47D4
_080F47C0: .4byte 0x03000FD8
_080F47C4:
	ldr r1, _080F4810 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F47D4:
	ldr r1, [r4, #0x08]
	ldr r2, [r4, #0x04]
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x0C
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x10
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F4818
	ldr r0, _080F4814 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4828
_080F4810: .4byte 0x03000FDC
_080F4814: .4byte 0x03000FD8
_080F4818:
	ldr r1, _080F4840 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4828:
	ldr r2, [r0, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r6, [r0, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F4840: .4byte 0x03000FDC
	thumb_func_start sub_80F4844
sub_80F4844:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _080F4876
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xFD
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F4876:
	ldr r1, [r4, #0x00]
	lsls r0, r1, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r2, [r6, #0x2C]
	adds r5, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F48A8
	ldr r0, _080F48A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F48B8
_080F48A4: .4byte 0x03000FD8
_080F48A8:
	ldr r1, _080F48E8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
_080F48B8:
	ldr r1, [r4, #0x04]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x08
	ldsb r2, [r4, r2]
	adds r0, r6, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F48F0
	ldr r0, _080F48EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4900
	.byte 0x00, 0x00
_080F48E8: .4byte 0x03000FDC
_080F48EC: .4byte 0x03000FD8
_080F48F0:
	ldr r1, _080F4928 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4900:
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldrb r3, [r4, #0x0C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F4928: .4byte 0x03000FDC
	thumb_func_start sub_80F492C
sub_80F492C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F4958
	ldr r0, _080F4954 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4968
	.byte 0x00, 0x00
_080F4954: .4byte 0x03000FD8
_080F4958:
	ldr r1, _080F49A4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4968:
	ldr r1, [r4, #0x04]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x08
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x0C
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bgt _080F49AC
	ldr r0, _080F49A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F49BC
_080F49A4: .4byte 0x03000FDC
_080F49A8: .4byte 0x03000FD8
_080F49AC:
	ldr r1, _080F49D0 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F49BC:
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F49D0: .4byte 0x03000FDC
	thumb_func_start sub_80F49D4
sub_80F49D4:
	push {lr}
	ldr r0, [r0, #0x2C]
	ldr r1, _080F49F4 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F4A94
	cmp r2, #0x01
	bgt _080F49F8
	cmp r2, #0x00
	beq _080F4A00
	b _080F4B58
_080F49F4: .4byte 0x0000179C
_080F49F8:
	cmp r2, #0x02
	bne _080F49FE
	b _080F4B2A
_080F49FE:
	b _080F4B58
_080F4A00:
	cmp r3, #0x0F
	bhi _080F4A34
	cmp r3, #0x07
	bhi _080F4A1C
	ldr r0, _080F4A18 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4A44
_080F4A18: .4byte 0x03000FD8
_080F4A1C:
	ldr r1, _080F4A30 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _080F4A44
	.byte 0x00, 0x00
_080F4A30: .4byte 0x03000FDC
_080F4A34:
	cmp r3, #0x10
	bne _080F4A4C
	ldr r0, _080F4A48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F4A44:
	ldr r2, [r0, #0x08]
	b _080F4A86
_080F4A48: .4byte 0x03000FD8
_080F4A4C:
	cmp r3, #0x12
	bhi _080F4A6C
	ldr r0, _080F4A68 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4A44
	.byte 0x00, 0x00
_080F4A68: .4byte 0x03000FD8
_080F4A6C:
	cmp r3, #0x13
	bne _080F4A84
	ldr r0, _080F4A80 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4A86
	.byte 0x00, 0x00
_080F4A80: .4byte 0x03000FD8
_080F4A84:
	movs r2, #0x00
_080F4A86:
	cmp r2, #0x00
	beq _080F4B58
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _080F4B58
_080F4A94:
	cmp r3, #0x0F
	bhi _080F4AC8
	cmp r3, #0x07
	bhi _080F4AB0
	ldr r0, _080F4AAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4AD8
_080F4AAC: .4byte 0x03000FD8
_080F4AB0:
	ldr r1, _080F4AC4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _080F4AD8
	.byte 0x00, 0x00
_080F4AC4: .4byte 0x03000FDC
_080F4AC8:
	cmp r3, #0x10
	bne _080F4AE0
	ldr r0, _080F4ADC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
_080F4AD8:
	ldr r2, [r0, #0x08]
	b _080F4B1A
_080F4ADC: .4byte 0x03000FD8
_080F4AE0:
	cmp r3, #0x12
	bhi _080F4B00
	ldr r0, _080F4AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x11
	lsls r0, r0, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080F4AD8
	.byte 0x00, 0x00
_080F4AFC: .4byte 0x03000FD8
_080F4B00:
	cmp r3, #0x13
	bne _080F4B18
	ldr r0, _080F4B14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080F4B1A
	.byte 0x00, 0x00
_080F4B14: .4byte 0x03000FD8
_080F4B18:
	movs r2, #0x00
_080F4B1A:
	cmp r2, #0x00
	beq _080F4B58
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _080F4B58
_080F4B2A:
	cmp r3, #0x07
	bhi _080F4B44
	ldr r0, _080F4B40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4B54
	.byte 0x00, 0x00
_080F4B40: .4byte 0x03000FD8
_080F4B44:
	ldr r1, _080F4B60 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F4B54:
	bl sub_80835E0
_080F4B58:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4B60: .4byte 0x03000FDC
	thumb_func_start sub_80F4B64
sub_80F4B64:
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
	thumb_func_start sub_80F4CE8
sub_80F4CE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	cmp r0, #0x3F
	bne _080F4D06
	adds r0, r1, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r5, #0x00]
_080F4D06:
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F4D20
	ldr r0, _080F4D1C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4D30
_080F4D1C: .4byte 0x03000FD8
_080F4D20:
	ldr r1, _080F4D84 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4D30:
	ldr r0, [r0, #0x08]
	ldrh r3, [r0, #0x14]
	movs r4, #0x00
	movs r0, #0x01
	ands r0, r3
	adds r5, #0x04
	ldr r1, _080F4D88 @ =0x03001034
	mov r8, r1
	ldr r7, _080F4D8C @ =0x08198154
	ldr r6, _080F4D90 @ =0x081980D8
	ldr r1, _080F4D94 @ =0x084FB4FC
	mov r12, r1
	ldr r1, _080F4D98 @ =0x0300034C
	mov r9, r1
	ldr r1, _080F4D9C @ =0x089F2CE0
	mov r10, r1
	cmp r0, #0x00
	bne _080F4D62
	movs r1, #0x01
_080F4D56:
	adds r4, #0x01
	adds r0, r3, #0x0
	asrs r0, r4
	ands r0, r1
	cmp r0, #0x00
	beq _080F4D56
_080F4D62:
	adds r4, r4, r2
	subs r1, r7, r6
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r3, r0, r1
	mov r6, r12
	ldr r2, [r5, #0x00]
	ldr r0, _080F4DA0 @ =0x00000888
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080F4DA4
	adds r0, r2, #0x1
	lsls r0, r0, #0x01
	b _080F4DA6
_080F4D84: .4byte 0x03000FDC
_080F4D88: .4byte 0x03001034
_080F4D8C: .4byte 0x08198154
_080F4D90: .4byte 0x081980D8
_080F4D94: .4byte 0x084FB4FC
_080F4D98: .4byte 0x0300034C
_080F4D9C: .4byte 0x089F2CE0
_080F4DA0: .4byte 0x00000888
_080F4DA4:
	lsls r0, r2, #0x01
_080F4DA6:
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	add r0, r10
	lsls r1, r4, #0x05
	ldr r2, _080F4DDC @ =0x02000280
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080F4DE0 @ =0x0300034C
	movs r0, #0x01
	lsls r0, r4
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4DDC: .4byte 0x02000280
_080F4DE0: .4byte 0x0300034C
	thumb_func_start sub_80F4DE4
sub_80F4DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x040
	mov r8, r0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	mov r9, r3
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bne _080F4EAC
	ldr r0, _080F4EDC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	add r1, sp, #0x008
	adds r0, #0x14
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r3, sp, #0x024
	ldr r0, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r0, #0x14
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bge _080F4E3C
	adds r0, #0x0F
_080F4E3C:
	asrs r0, r0, #0x04
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _080F4E48
	adds r0, #0x0F
_080F4E48:
	asrs r0, r0, #0x04
	str r0, [sp, #0x010]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _080F4E54
	adds r0, #0x0F
_080F4E54:
	asrs r0, r0, #0x04
	str r0, [sp, #0x014]
	ldr r0, [r3, #0x04]
	cmp r0, #0x00
	bge _080F4E60
	adds r0, #0x0F
_080F4E60:
	asrs r5, r0, #0x04
	str r5, [r3, #0x04]
	ldr r1, [r3, #0x08]
	cmp r1, #0x00
	bge _080F4E6C
	adds r1, #0x0F
_080F4E6C:
	asrs r4, r1, #0x04
	str r4, [r3, #0x08]
	ldr r2, [r3, #0x0C]
	cmp r2, #0x00
	bge _080F4E78
	adds r2, #0x0F
_080F4E78:
	asrs r2, r2, #0x04
	str r2, [r3, #0x0C]
	ldr r3, _080F4EE0 @ =0x03001038
	ldr r0, [sp, #0x00C]
	subs r0, r5, r0
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	ldr r1, [sp, #0x010]
	subs r1, r4, r1
	adds r4, r1, #0x0
	muls r4, r1
	adds r1, r4, #0x0
	adds r0, r0, r1
	ldr r1, [sp, #0x014]
	subs r2, r2, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080F4EAA
	adds r0, #0x0F
_080F4EAA:
	asrs r4, r0, #0x04
_080F4EAC:
	adds r1, r7, #0x0
	adds r1, #0x18
	mov r5, r8
	ldr r2, [r5, #0x2C]
	ldr r0, _080F4EE4 @ =0x00001794
	adds r2, r2, r0
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r6, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r0, r9
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x040
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4EDC: .4byte 0x03000FD8
_080F4EE0: .4byte 0x03001038
_080F4EE4: .4byte 0x00001794
	thumb_func_start sub_80F4EE8
sub_80F4EE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	mov r8, r3
	ldr r0, [r7, #0x04]
	cmp r0, #0x09
	bls _080F4F00
	b _080F5012
_080F4F00:
	lsls r0, r0, #0x02
	ldr r1, _080F4F0C @ =0x080F4F10
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F4F0C: .4byte 0x080F4F10
	.byte 0x38, 0x4F, 0x0F, 0x08, 0x4C, 0x4F, 0x0F, 0x08, 0x72, 0x4F, 0x0F, 0x08, 0x98, 0x4F, 0x0F, 0x08
	.byte 0xB2, 0x4F, 0x0F, 0x08, 0xC4, 0x4F, 0x0F, 0x08, 0xD8, 0x4F, 0x0F, 0x08, 0xE2, 0x4F, 0x0F, 0x08
	.byte 0xEC, 0x4F, 0x0F, 0x08, 0x04, 0x50, 0x0F, 0x08, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18
	.byte 0x04, 0x78, 0x66, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0xBB, 0x02, 0x00, 0x00, 0x05, 0x48, 0x00, 0x68
	.byte 0xC0, 0x6F, 0x01, 0x1C, 0xEC, 0x31, 0x00, 0x22, 0x88, 0x5E, 0x00, 0x28, 0x04, 0xDB, 0x04, 0x1C
	.byte 0x57, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x00, 0x22, 0x89, 0x5E, 0x05, 0x20, 0x44, 0x1A
	.byte 0x4F, 0xE0, 0x08, 0x48, 0x00, 0x68, 0xC1, 0x6F, 0x08, 0x1C, 0xEC, 0x30, 0x00, 0x22, 0x80, 0x5E
	.byte 0x00, 0x28, 0x13, 0xDA, 0x88, 0x22, 0x52, 0x00, 0x88, 0x18, 0x00, 0x78, 0xC0, 0x06, 0xC4, 0x0E
	.byte 0x3F, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x03, 0x48, 0x00, 0x68, 0xC0, 0x6F, 0x40, 0x6B
	.byte 0x00, 0x28, 0x03, 0xD0, 0x80, 0x6A, 0x07, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x01, 0x24, 0x64, 0x42
	.byte 0x2F, 0xE0, 0x03, 0x48, 0x00, 0x68, 0xC0, 0x6F, 0xF4, 0x30, 0x04, 0x78, 0x29, 0xE0, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x04, 0x88, 0x20, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xB6, 0x02, 0x00, 0x00, 0x28, 0x1C, 0x01, 0xF0, 0x2D, 0xFF, 0x04, 0x1C
	.byte 0x17, 0xE0, 0x28, 0x1C, 0x01, 0xF0, 0x88, 0xFF, 0x04, 0x1C, 0x12, 0xE0, 0x03, 0x48, 0x00, 0x68
	.byte 0xC0, 0x6F, 0x03, 0x4A, 0x80, 0x18, 0x04, 0x78, 0x0B, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x13, 0x01, 0x00, 0x00, 0x0D, 0x48, 0x00, 0x68, 0x0D, 0x49, 0x40, 0x18, 0x00, 0x78, 0x80, 0x07
	.byte 0xC4, 0x0F
_080F5012:
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, [r5, #0x2C]
	ldr r5, _080F5044 @ =0x00001794
	adds r2, r2, r5
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r7, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r0, r8
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xC1, 0x02, 0x00, 0x00
_080F5044: .4byte 0x00001794
	thumb_func_start sub_80F5048
sub_80F5048:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r0, [r5, #0x04]
	cmp r0, #0x09
	bls _080F505C
	b _080F527C
_080F505C:
	lsls r0, r0, #0x02
	ldr r1, _080F5068 @ =0x080F506C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F5068: .4byte 0x080F506C
	.byte 0x94, 0x50, 0x0F, 0x08, 0xD0, 0x50, 0x0F, 0x08, 0x0C, 0x51, 0x0F, 0x08, 0x48, 0x51, 0x0F, 0x08
	.byte 0x60, 0x51, 0x0F, 0x08, 0x88, 0x51, 0x0F, 0x08, 0xB0, 0x51, 0x0F, 0x08, 0xD8, 0x51, 0x0F, 0x08
	.byte 0x10, 0x52, 0x0F, 0x08, 0x48, 0x52, 0x0F, 0x08, 0xAA, 0x68, 0x07, 0x2A, 0x0A, 0xDC, 0x04, 0x48
	.byte 0x00, 0x68, 0x91, 0x00, 0x58, 0x30, 0x40, 0x18, 0x00, 0x68, 0x08, 0x30, 0x0A, 0xE0, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x06, 0x49, 0xD0, 0x20, 0x50, 0x43, 0x09, 0x68, 0x40, 0x18, 0xC0, 0x21
	.byte 0x89, 0x00, 0x40, 0x18, 0x00, 0x69, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x02, 0xD6, 0xE0
	.byte 0xDC, 0x0F, 0x00, 0x03, 0xAA, 0x68, 0x07, 0x2A, 0x0A, 0xDC, 0x04, 0x48, 0x00, 0x68, 0x91, 0x00
	.byte 0x58, 0x30, 0x40, 0x18, 0x00, 0x68, 0x08, 0x30, 0x0A, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x06, 0x49, 0xD0, 0x20, 0x50, 0x43, 0x09, 0x68, 0x40, 0x18, 0xC0, 0x21, 0x89, 0x00, 0x40, 0x18
	.byte 0x40, 0x69, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x02, 0xB8, 0xE0, 0xDC, 0x0F, 0x00, 0x03
	.byte 0xAA, 0x68, 0x07, 0x2A, 0x0A, 0xDC, 0x04, 0x48, 0x00, 0x68, 0x91, 0x00, 0x58, 0x30, 0x40, 0x18
	.byte 0x00, 0x68, 0x08, 0x30, 0x0A, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x06, 0x49, 0xD0, 0x20
	.byte 0x50, 0x43, 0x09, 0x68, 0x40, 0x18, 0xC0, 0x21, 0x89, 0x00, 0x40, 0x18, 0x80, 0x69, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x02, 0x9A, 0xE0, 0xDC, 0x0F, 0x00, 0x03, 0x04, 0x48, 0x01, 0x68
	.byte 0xA8, 0x68, 0x80, 0x00, 0x58, 0x31, 0x09, 0x18, 0x08, 0x68, 0xEC, 0x30, 0x04, 0x88, 0x8F, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x07, 0x4B, 0xA9, 0x68, 0x89, 0x00, 0x07, 0x48, 0x00, 0x68, 0xC0, 0x69
	.byte 0x42, 0x78, 0x50, 0x00, 0x80, 0x18, 0xC0, 0x00, 0x09, 0x18, 0xC9, 0x18, 0x08, 0x88, 0x80, 0x05
	.byte 0x80, 0x11, 0x7C, 0xE0, 0x14, 0x2B, 0x50, 0x08, 0xD8, 0x0F, 0x00, 0x03, 0x07, 0x4B, 0xA9, 0x68
	.byte 0x89, 0x00, 0x07, 0x48, 0x00, 0x68, 0xC0, 0x69, 0x42, 0x78, 0x50, 0x00, 0x80, 0x18, 0xC0, 0x00
	.byte 0x09, 0x18, 0xC9, 0x18, 0x08, 0x68, 0x00, 0x03, 0x80, 0x15, 0x67, 0xE0, 0x14, 0x2B, 0x50, 0x08
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x07, 0x4B, 0xA9, 0x68, 0x89, 0x00, 0x07, 0x48, 0x00, 0x68, 0xC0, 0x69
	.byte 0x42, 0x78, 0x50, 0x00, 0x80, 0x18, 0xC0, 0x00, 0x09, 0x18, 0xC9, 0x18, 0x48, 0x88, 0x80, 0x04
	.byte 0x80, 0x15, 0x53, 0xE0, 0x14, 0x2B, 0x50, 0x08, 0xD8, 0x0F, 0x00, 0x03, 0x0B, 0x4C, 0xAB, 0x68
	.byte 0x9B, 0x00, 0x0B, 0x48, 0x02, 0x68, 0xD0, 0x69, 0x41, 0x78, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00
	.byte 0x18, 0x18, 0x00, 0x19, 0x01, 0x88, 0x89, 0x05, 0x89, 0x15, 0x58, 0x32, 0xD2, 0x18, 0x10, 0x68
	.byte 0xE4, 0x30, 0x00, 0x68, 0x00, 0x79, 0x00, 0x06, 0x00, 0x16, 0x36, 0xE0, 0x14, 0x2B, 0x50, 0x08
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x0B, 0x4C, 0xAB, 0x68, 0x9B, 0x00, 0x0B, 0x48, 0x02, 0x68, 0xD0, 0x69
	.byte 0x41, 0x78, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00, 0x18, 0x18, 0x00, 0x19, 0x01, 0x68, 0x09, 0x03
	.byte 0x89, 0x15, 0x58, 0x32, 0xD2, 0x18, 0x10, 0x68, 0xE4, 0x30, 0x00, 0x68, 0x40, 0x79, 0x00, 0x06
	.byte 0x00, 0x16, 0x1A, 0xE0, 0x14, 0x2B, 0x50, 0x08, 0xD8, 0x0F, 0x00, 0x03, 0x17, 0x4C, 0xAB, 0x68
	.byte 0x9B, 0x00, 0x17, 0x48, 0x02, 0x68, 0xD0, 0x69, 0x41, 0x78, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00
	.byte 0x18, 0x18, 0x00, 0x19, 0x41, 0x88, 0x89, 0x04, 0x89, 0x15, 0x58, 0x32, 0xD2, 0x18, 0x10, 0x68
	.byte 0xE4, 0x30, 0x00, 0x68, 0x80, 0x79, 0x00, 0x06, 0x00, 0x16, 0x40, 0x18, 0x00, 0x04, 0x04, 0x0C
_080F527C:
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, [r7, #0x2C]
	ldr r0, _080F52B0 @ =0x00001794
	adds r2, r2, r0
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	str r0, [sp, #0x000]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r12
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x14, 0x2B, 0x50, 0x08, 0xD8, 0x0F, 0x00, 0x03
_080F52B0: .4byte 0x00001794
