	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FD960
sub_80FD960:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r6, _080FDA28 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	movs r7, #0xB0
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r3, r1, #0x1F
	movs r0, #0x01
	eors r0, r3
	lsls r0, r0, #0x02
	adds r2, #0x80
	adds r0, r2, r0
	ldr r3, [r0, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x08
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r2, [r2, #0x00]
	movs r0, #0x08
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FD9B0
	adds r0, r2, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
_080FD9B0:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FDA1C
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	movs r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	ldr r2, _080FDA2C @ =0x00002069
	cmp r0, #0x00
	beq _080FD9DA
	subs r2, #0x2F
_080FD9DA:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	ldr r2, _080FDA30 @ =0x0000203B
	cmp r0, #0x00
	beq _080FD9F6
	adds r2, #0x2F
_080FD9F6:
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x08]
	str r0, [r1, #0x04]
_080FDA1C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FDA28: .4byte 0x03000FD8
_080FDA2C: .4byte 0x00002069
_080FDA30: .4byte 0x0000203B
	thumb_func_start sub_80FDA34
sub_80FDA34:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r6, _080FDAE8 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r2, r1, #0x1F
	movs r0, #0x01
	eors r0, r2
	lsls r0, r0, #0x02
	adds r2, r3, #0x0
	adds r2, #0x80
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r8, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldrb r1, [r3, #0x0C]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x0C]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r7, #0x04
	adds r0, r7, #0x0
	ands r0, r1
	ldr r2, _080FDAEC @ =0x00002068
	cmp r0, #0x00
	beq _080FDA88
	subs r2, #0x2F
_080FDA88:
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	ldr r2, _080FDAF0 @ =0x00002039
	cmp r0, #0x00
	beq _080FDAA4
	adds r2, #0x2F
_080FDAA4:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r4, [r0, #0x08]
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r4, #0x12]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x12]
	ldr r0, [r5, #0x10]
	ldr r1, _080FDAF4 @ =0xFFFFEA00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, _080FDAF8 @ =0x080FDAFD
	mov r1, r9
	str r0, [r1, #0x04]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FDAE8: .4byte 0x03000FD8
_080FDAEC: .4byte 0x00002068
_080FDAF0: .4byte 0x00002039
_080FDAF4: .4byte 0xFFFFEA00
_080FDAF8: .4byte sub_80FDAFC
	thumb_func_start sub_80FDAFC
sub_80FDAFC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r7, _080FDBA8 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r3, r0, #0x1D
	lsrs r1, r3, #0x1F
	movs r0, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r2, #0x80
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FDBA0
	lsrs r0, r3, #0x1F
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x28
	cmp r0, #0x00
	beq _080FDB6A
	movs r1, #0x36
_080FDB6A:
	movs r2, #0x7C
	cmp r0, #0x00
	beq _080FDB72
	movs r2, #0x5C
_080FDB72:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	movs r2, #0x20
	bl sub_808842C
	ldr r1, _080FDBAC @ =0x080FDBB1
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
_080FDBA0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FDBA8: .4byte 0x03000FD8
_080FDBAC: .4byte sub_80FDBB0
	thumb_func_start sub_80FDBB0
sub_80FDBB0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _080FDC30 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FDC2A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080FDC34 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FDC38 @ =0x00008E58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x04]
	movs r0, #0x0A
	strh r0, [r5, #0x10]
_080FDC2A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FDC30: .4byte 0x03000FD8
_080FDC34: .4byte 0x03000FDC
_080FDC38: .4byte 0x00008E58
	thumb_func_start sub_80FDC3C
sub_80FDC3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080FDC5C
	subs r0, r1, #0x1
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x10]
	b _080FE2E0
_080FDC5C:
	ldr r2, _080FDCBC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x7C]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r0, [r0, r6]
	mvns r0, r0
	mov r10, r0
	str r5, [r1, #0x34]
	movs r7, #0x02
	negs r7, r7
	movs r6, #0x01
	negs r6, r6
_080FDC80:
	ldr r1, _080FDCBC @ =0x03000FD8
	ldr r0, [r1, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	beq _080FDCC8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FDCA4
	cmp r1, #0x04
	bne _080FDCC8
_080FDCA4:
	adds r0, r4, #0x0
	bl sub_8108E94
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r7
	bne _080FDCC0
	movs r3, #0x01
	str r3, [sp, #0x008]
	b _080FDCC8
_080FDCBC: .4byte 0x03000FD8
_080FDCC0:
	cmp r0, r6
	bne _080FDCC8
	movs r4, #0x01
	str r4, [sp, #0x004]
_080FDCC8:
	adds r0, r5, #0x1
	ldr r2, _080FDD08 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	beq _080FDD14
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FDCEE
	cmp r1, #0x04
	bne _080FDD14
_080FDCEE:
	adds r0, r4, #0x0
	bl sub_8108E94
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r7
	bne _080FDD0C
	movs r4, #0x01
	str r4, [sp, #0x008]
	b _080FDD14
	.byte 0x00, 0x00
_080FDD08: .4byte 0x03000FD8
_080FDD0C:
	cmp r0, r6
	bne _080FDD14
	movs r0, #0x01
	str r0, [sp, #0x004]
_080FDD14:
	adds r5, #0x02
	cmp r5, #0x07
	ble _080FDC80
	ldr r4, _080FDE0C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r5, #0x00
	ldr r0, [r4, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strb r5, [r0, #0x00]
	movs r5, #0x01
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FDD74
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FDD74
	ldr r0, _080FDE10 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _080FDE14 @ =0x00000232
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDD74
	ldr r0, [r4, #0x00]
	ldr r1, _080FDE18 @ =0x0000031D
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	movs r5, #0x02
_080FDD74:
	ldr r6, _080FDE10 @ =0x03000FC0
	ldr r0, [r6, #0x00]
	movs r7, #0xE3
	lsls r7, r7, #0x02
	adds r0, r0, r7
	movs r2, #0x8D
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDA0
	ldr r0, _080FDE0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r5
	movs r1, #0x03
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDDA0:
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FDE1C @ =0x00000233
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDC4
	ldr r0, _080FDE0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	adds r0, r0, r5
	movs r1, #0x02
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDDC4:
	ldr r4, _080FDE0C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, _080FDE20 @ =0x0000033E
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	movs r5, #0x00
	ldr r0, [r4, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x02
	mov r8, r2
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	movs r5, #0x01
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FDE24 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDFA
	ldr r0, [r4, #0x00]
	ldr r3, _080FDE28 @ =0x00000321
	adds r0, r0, r3
	strb r5, [r0, #0x00]
	movs r5, #0x02
_080FDDFA:
	mov r0, r10
	cmp r0, #0x00
	bne _080FDE2C
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	movs r2, #0x82
	lsls r2, r2, #0x02
	b _080FDE32
	.byte 0x00, 0x00
_080FDE0C: .4byte 0x03000FD8
_080FDE10: .4byte 0x03000FC0
_080FDE14: .4byte 0x00000232
_080FDE18: .4byte 0x0000031D
_080FDE1C: .4byte 0x00000233
_080FDE20: .4byte 0x0000033E
_080FDE24: .4byte 0x00000203
_080FDE28: .4byte 0x00000321
_080FDE2C:
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FE09C @ =0x00000209
_080FDE32:
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDE4A
	ldr r0, [r4, #0x00]
	add r0, r8
	adds r0, r0, r5
	movs r1, #0x02
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDE4A:
	ldr r2, _080FE0A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _080FE0A4 @ =0x0000033F
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	ldr r1, _080FE0A8 @ =0x03000FF4
	mov r3, r10
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r7, r1, r0
	ldr r4, _080FE0AC @ =0x084FE8CC
	mov r9, r4
	cmp r3, #0x00
	beq _080FDE6E
	ldr r5, _080FE0B0 @ =0x084FE9C8
	mov r9, r5
_080FDE6E:
	movs r6, #0x00
	mov r8, r6
	movs r2, #0x00
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _080FDE7C
	b _080FE2C0
_080FDE7C:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bne _080FDE84
	b _080FE2C0
_080FDE84:
	movs r4, #0x01
	mov r3, r10
	cmp r3, #0x00
	beq _080FDE8E
	b _080FE0B8
_080FDE8E:
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDEB6
	mov r5, r9
	ldrb r0, [r5, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r5, #0x00
	ldsh r1, [r1, r5]
	cmp r0, r1
	ble _080FDEAE
	mov r8, r4
_080FDEAE:
	ldr r6, _080FE0B4 @ =0x00000323
	adds r0, r3, r6
	strb r2, [r0, #0x00]
	movs r2, #0x01
_080FDEB6:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x18
	movs r5, #0x01
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDEE6
	ldrb r0, [r1, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDEDC
	add r8, r5
_080FDEDC:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDEE6:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x30
	movs r5, #0x02
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF18
	ldrb r0, [r1, #0x11]
	ldr r4, _080FE0A0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF0E
	movs r0, #0x01
	add r8, r0
_080FDF0E:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF18:
	movs r5, #0x03
	movs r4, #0x01
	movs r3, #0x48
	add r3, r9
	mov r12, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF4C
	ldrb r0, [r3, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF42
	add r8, r4
_080FDF42:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF4C:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x05
	bgt _080FDFCA
_080FDF58:
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF86
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF7C
	movs r0, #0x01
	add r8, r0
_080FDF7C:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF86:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r10, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDFBE
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDFB2
	movs r0, #0x01
	add r8, r0
_080FDFB2:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r10
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FDFBE:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x05
	ble _080FDF58
_080FDFCA:
	movs r4, #0x01
	cmp r5, #0x08
	ble _080FDFD2
	b _080FE2C0
_080FDFD2:
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x03
	add r0, r9
	mov r12, r0
	movs r0, #0x09
	subs r0, r0, r5
	ands r0, r4
	cmp r5, #0x09
	bge _080FDFEA
	cmp r0, #0x00
	beq _080FE026
_080FDFEA:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE018
	mov r1, r12
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE00E
	movs r0, #0x01
	add r8, r0
_080FE00E:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE018:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x08
	ble _080FE026
	b _080FE2C0
_080FE026:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE054
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE04A
	movs r0, #0x01
	add r8, r0
_080FE04A:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE054:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r9, r3
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE08C
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE080
	movs r0, #0x01
	add r8, r0
_080FE080:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r9
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE08C:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x08
	ble _080FE026
	b _080FE2C0
	.byte 0x00, 0x00
_080FE09C: .4byte 0x00000209
_080FE0A0: .4byte 0x03000FD8
_080FE0A4: .4byte 0x0000033F
_080FE0A8: .4byte 0x03000FF4
_080FE0AC: .4byte 0x084FE8CC
_080FE0B0: .4byte 0x084FE9C8
_080FE0B4: .4byte 0x00000323
_080FE0B8:
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE0E2
	mov r1, r9
	ldrb r0, [r1, #0x11]
	ldr r5, _080FE2F0 @ =0x03000FD8
	ldr r3, [r5, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE0DA
	movs r0, #0x01
	mov r8, r0
_080FE0DA:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	strb r2, [r0, #0x00]
	movs r2, #0x01
_080FE0E2:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x18
	movs r5, #0x01
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE112
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE108
	add r8, r5
_080FE108:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE112:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x30
	movs r5, #0x02
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE144
	ldrb r0, [r1, #0x11]
	ldr r4, _080FE2F0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE13A
	movs r0, #0x01
	add r8, r0
_080FE13A:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE144:
	movs r5, #0x03
	movs r4, #0x01
	movs r3, #0x48
	add r3, r9
	mov r12, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE178
	ldrb r0, [r3, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE16E
	add r8, r4
_080FE16E:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE178:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x05
	bgt _080FE1F6
_080FE184:
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE1B2
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE1A8
	movs r0, #0x01
	add r8, r0
_080FE1A8:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE1B2:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r10, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE1EA
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE1DE
	movs r0, #0x01
	add r8, r0
_080FE1DE:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r10
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE1EA:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x05
	ble _080FE184
_080FE1F6:
	movs r4, #0x01
	cmp r5, #0x08
	bgt _080FE2C0
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x03
	add r0, r9
	mov r12, r0
	movs r0, #0x09
	subs r0, r0, r5
	ands r0, r4
	cmp r5, #0x09
	bge _080FE214
	cmp r0, #0x00
	beq _080FE24E
_080FE214:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE242
	mov r1, r12
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE238
	movs r0, #0x01
	add r8, r0
_080FE238:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE242:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x08
	bgt _080FE2C0
_080FE24E:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE27C
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE272
	movs r0, #0x01
	add r8, r0
_080FE272:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE27C:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r9, r3
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE2B4
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE2A8
	movs r0, #0x01
	add r8, r0
_080FE2A8:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r9
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE2B4:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x08
	ble _080FE24E
_080FE2C0:
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r1, #0x00
	cmp r2, r8
	ble _080FE2CC
	adds r1, r2, #0x0
_080FE2CC:
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r3, _080FE2F8 @ =0x080FE2FD
	ldr r4, [sp, #0x000]
	str r3, [r4, #0x04]
	movs r0, #0x02
	bl sub_80F7538
_080FE2E0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FE2F0: .4byte 0x03000FD8
_080FE2F4: .4byte 0x00000323
_080FE2F8: .4byte sub_80FE2FC
	thumb_func_start sub_80FE2FC
sub_80FE2FC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	movs r6, #0x00
_080FE304:
	ldr r0, _080FE378 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _080FE318
	b _080FE488
_080FE318:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080FE328
	b _080FE488
_080FE328:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _080FE33E
	b _080FE488
_080FE33E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r1, [r0, #0x00]
	cmp r6, #0x01
	bne _080FE3A4
	ldr r0, [r2, #0x7C]
	cmp r0, r4
	bne _080FE37C
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE362
	adds r0, #0xFF
_080FE362:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x12
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE370
	adds r2, #0xFF
_080FE370:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	b _080FE3F6
	.byte 0x00, 0x00
_080FE378: .4byte 0x03000FD8
_080FE37C:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE390
	adds r0, #0xFF
_080FE390:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x10
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE39E
	adds r2, #0xFF
_080FE39E:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	b _080FE3F6
_080FE3A4:
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FE400
	ldr r0, [r2, #0x7C]
	cmp r0, r4
	bne _080FE3CE
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE3C8
	adds r0, #0xFF
_080FE3C8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	b _080FE3E8
_080FE3CE:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE3E2
	adds r0, #0xFF
_080FE3E2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x1E
_080FE3E8:
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE3F0
	adds r2, #0xFF
_080FE3F0:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
_080FE3F6:
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80F76FC
	b _080FE430
_080FE400:
	adds r1, r4, #0x0
	adds r1, #0xF4
	ldrb r3, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r0, #0x00
	bge _080FE414
	adds r0, #0xFF
_080FE414:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x0B
	ldr r2, [r4, #0x44]
	cmp r2, #0x00
	bge _080FE422
	adds r2, #0xFF
_080FE422:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80F76FC
_080FE430:
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	bl sub_80F76B8
	ldrb r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_80F7644
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080FE464
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _080FE460 @ =0x00002002
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE472
_080FE460: .4byte 0x00002002
_080FE464:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _080FE49C @ =0x0000204F
	movs r3, #0x00
	bl sub_8082E1C
_080FE472:
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bge _080FE488
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_080FE488:
	adds r6, #0x01
	cmp r6, #0x01
	bgt _080FE490
	b _080FE304
_080FE490:
	ldr r0, _080FE4A0 @ =0x080FE4A5
	str r0, [r7, #0x04]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FE49C: .4byte 0x0000204F
_080FE4A0: .4byte sub_80FE4A4
	thumb_func_start sub_80FE4A4
sub_80FE4A4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080FE508 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080FE4C6
	adds r0, r2, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FE4C6
	b _080FE5CE
_080FE4C6:
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FE4DC
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080FE5CE
_080FE4DC:
	adds r4, r2, #0x0
	cmp r4, #0x00
	beq _080FE52A
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FE52A
	ldr r0, [r3, #0x7C]
	cmp r4, r0
	bne _080FE50C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x01
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE51C
_080FE508: .4byte 0x03000FD8
_080FE50C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080FE51C:
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r3, #0x41
	negs r3, r3
	adds r2, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x11]
_080FE52A:
	ldr r0, _080FE560 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080FE582
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FE582
	ldr r0, [r2, #0x7C]
	cmp r4, r0
	bne _080FE564
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x01
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE574
	.byte 0x00, 0x00
_080FE560: .4byte 0x03000FD8
_080FE564:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080FE574:
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r3, #0x41
	negs r3, r3
	adds r2, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x11]
_080FE582:
	ldr r2, _080FE5D4 @ =0x03001034
	ldr r0, _080FE5D8 @ =0x08198154
	ldr r1, _080FE5DC @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _080FE5E0 @ =0x084FB588
	ldr r4, _080FE5E4 @ =0x0300034C
	ldr r1, _080FE5E8 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1E
	cmp r0, #0x00
	beq _080FE5A4
	movs r1, #0x20
_080FE5A4:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080FE5EC @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _080FE5F0 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	bl sub_810B7EC
	ldr r0, _080FE5F4 @ =0x080FE5F9
	str r0, [r5, #0x04]
_080FE5CE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080FE5D4: .4byte 0x03001034
_080FE5D8: .4byte 0x08198154
_080FE5DC: .4byte 0x081980D8
_080FE5E0: .4byte 0x084FB588
_080FE5E4: .4byte 0x0300034C
_080FE5E8: .4byte 0x00000888
_080FE5EC: .4byte 0x089F808C
_080FE5F0: .4byte 0x02000440
_080FE5F4: .4byte sub_80FE5F8
	thumb_func_start sub_80FE5F8
sub_80FE5F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r4, _080FE670 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r7, r0
	ldr r3, _080FE674 @ =0x00000342
	adds r1, r1, r3
	movs r2, #0x80
	strb r2, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r5, _080FE678 @ =0x0000034A
	adds r0, r1, r5
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	ldr r6, _080FE67C @ =0x00000343
	adds r1, r1, r6
	strb r2, [r1, #0x00]
	cmp r3, #0xFF
	beq _080FE6B8
	movs r2, #0x00
	ldr r1, [r4, #0x00]
	ldr r4, _080FE680 @ =0x0000033F
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE6B8
	subs r5, #0x2A
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE6A8
	cmp r0, #0x00
	beq _080FE684
	cmp r0, #0x01
	ble _080FE6A8
	cmp r0, #0x02
	ble _080FE69C
	subs r6, #0x23
	adds r0, r1, r6
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE66A
	b _080FE862
_080FE66A:
	movs r2, #0x01
	b _080FE69C
	.byte 0x00, 0x00
_080FE670: .4byte 0x03000FD8
_080FE674: .4byte 0x00000342
_080FE678: .4byte 0x0000034A
_080FE67C: .4byte 0x00000343
_080FE680: .4byte 0x0000033F
_080FE684:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE68E
	b _080FE862
_080FE68E:
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE69A
	b _080FE862
_080FE69A:
	adds r2, #0x01
_080FE69C:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE6A6
	b _080FE862
_080FE6A6:
	adds r2, #0x01
_080FE6A8:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE6B2
	b _080FE862
_080FE6B2:
	adds r2, #0x01
	cmp r2, r5
	blt _080FE684
_080FE6B8:
	ldr r2, _080FE71C @ =0x03000FD8
	ldr r1, [r2, #0x00]
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r0, r1, r3
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r1, r1, r4
	movs r0, #0x80
	strb r0, [r1, #0x00]
	mov r9, r2
	ldr r5, _080FE720 @ =0x03000FF4
	mov r12, r5
	lsls r6, r7, #0x04
	mov r8, r6
	lsls r6, r7, #0x01
	cmp r3, #0xFF
	beq _080FE75C
	movs r2, #0x00
	mov r0, r9
	ldr r1, [r0, #0x00]
	subs r4, #0x04
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE75C
	ldr r5, _080FE724 @ =0x00000323
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE74C
	cmp r0, #0x00
	beq _080FE728
	cmp r0, #0x01
	ble _080FE74C
	cmp r0, #0x02
	ble _080FE740
	ldr r0, _080FE724 @ =0x00000323
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE716
	b _080FE850
_080FE716:
	movs r2, #0x01
	b _080FE740
	.byte 0x00, 0x00
_080FE71C: .4byte 0x03000FD8
_080FE720: .4byte 0x03000FF4
_080FE724: .4byte 0x00000323
_080FE728:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE732
	b _080FE850
_080FE732:
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE73E
	b _080FE850
_080FE73E:
	adds r2, #0x01
_080FE740:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE74A
	b _080FE850
_080FE74A:
	adds r2, #0x01
_080FE74C:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE756
	b _080FE850
_080FE756:
	adds r2, #0x01
	cmp r2, r5
	blt _080FE728
_080FE75C:
	mov r1, r9
	ldr r2, [r1, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x02
	adds r3, r2, r4
	mov r5, r12
	ldr r1, [r5, #0x00]
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r5, _080FE7C8 @ =0x0000034E
	adds r0, r2, r5
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	ldr r0, _080FE7CC @ =0x00000345
	adds r2, r2, r0
	movs r0, #0x80
	strb r0, [r2, #0x00]
	cmp r3, #0xFF
	bne _080FE78C
	b _080FE8A2
_080FE78C:
	movs r2, #0x00
	mov r4, r9
	ldr r1, [r4, #0x00]
	subs r5, #0x0D
	adds r0, r1, r5
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE7FC
	subs r5, #0x15
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE7EE
	cmp r0, #0x00
	beq _080FE7D0
	cmp r0, #0x01
	ble _080FE7EE
	cmp r0, #0x02
	ble _080FE7E4
	movs r0, #0xCB
	lsls r0, r0, #0x02
	ldrb r0, [r0, r1]
	mov r8, r0
	cmp r8, r3
	bcs _080FE83C
	movs r2, #0x01
	b _080FE7E4
	.byte 0x00, 0x00
_080FE7C8: .4byte 0x0000034E
_080FE7CC: .4byte 0x00000345
_080FE7D0:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
_080FE7E4:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
_080FE7EE:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
	cmp r2, r5
	blt _080FE7D0
_080FE7FC:
	mov r1, r9
	ldr r3, [r1, #0x00]
	ldr r2, _080FE834 @ =0x00000345
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	movs r2, #0x7F
	ands r2, r0
	adds r1, r6, r7
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r3, r4
	adds r0, r0, r1
	movs r4, #0x00
	ldsb r4, [r0, r4]
	subs r0, r2, r4
	cmp r0, #0x00
	bge _080FE826
	ldr r5, _080FE838 @ =0x00000341
	adds r0, r3, r5
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
_080FE826:
	ldr r1, _080FE838 @ =0x00000341
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bls _080FE878
	subs r2, r2, r4
	b _080FE87C
_080FE834: .4byte 0x00000345
_080FE838: .4byte 0x00000341
_080FE83C:
	movs r3, #0x80
	negs r3, r3
	adds r0, r3, #0x0
	ldr r4, _080FE84C @ =0x00000345
	adds r1, r1, r4
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE7FC
_080FE84C: .4byte 0x00000345
_080FE850:
	movs r5, #0x80
	negs r5, r5
	adds r0, r5, #0x0
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE75C
_080FE862:
	movs r4, #0x80
	negs r4, r4
	adds r0, r4, #0x0
	ldr r5, _080FE874 @ =0x00000343
	adds r1, r1, r5
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE6B8
	.byte 0x00, 0x00
_080FE874: .4byte 0x00000343
_080FE878:
	adds r4, r2, #0x0
	movs r2, #0x00
_080FE87C:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r1, r6, r7
	ldr r3, _080FE980 @ =0x000002CA
	adds r0, r0, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	mov r5, r9
	ldr r0, [r5, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	strb r4, [r0, #0x00]
	ldr r0, [r5, #0x00]
	adds r3, #0x7F
	adds r0, r0, r3
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_080FE8A2:
	ldr r4, _080FE984 @ =0x03000FD8
	adds r3, r6, r7
	movs r5, #0xB2
	lsls r5, r5, #0x02
	mov r12, r5
	ldr r0, [r4, #0x00]
	ldr r6, _080FE988 @ =0x000002C2
	adds r1, r0, r6
	add r0, r12
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r2, _080FE98C @ =0x000002C5
	adds r1, r0, r2
	adds r5, #0x06
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	movs r6, #0x00
	mov r8, r6
	ldr r0, [r4, #0x00]
	subs r2, #0x02
	adds r1, r0, r2
	adds r2, r3, #0x1
	add r0, r12
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r6, _080FE990 @ =0x000002C6
	adds r1, r0, r6
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0xB1
	lsls r2, r2, #0x02
	adds r1, r0, r2
	adds r3, #0x02
	add r0, r12
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r4, _080FE994 @ =0x000002C7
	adds r1, r0, r4
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r5, r9
	ldr r1, [r5, #0x00]
	adds r6, #0x8A
	adds r0, r1, r6
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	adds r2, #0x8E
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r0, r1, r3
	movs r4, #0x00
	mov r5, r8
	strh r5, [r0, #0x00]
	subs r6, #0x3A
	adds r1, r1, r6
	movs r0, #0x7F
	strh r0, [r1, #0x00]
	bl sub_810B754
	mov r0, r9
	ldr r1, [r0, #0x00]
	ldr r2, _080FE998 @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	mov r5, r9
	ldr r0, [r5, #0x00]
	adds r6, #0x8F
	adds r0, r0, r6
	strb r4, [r0, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080FE99C @ =0x080FE9A1
	mov r1, r10
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FE980: .4byte 0x000002CA
_080FE984: .4byte 0x03000FD8
_080FE988: .4byte 0x000002C2
_080FE98C: .4byte 0x000002C5
_080FE990: .4byte 0x000002C6
_080FE994: .4byte 0x000002C7
_080FE998: .4byte 0x0000033E
_080FE99C: .4byte sub_80FE9A0
	thumb_func_start sub_80FE9A0
sub_80FE9A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_810D57C
	ldr r7, _080FEA28 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	ldr r4, _080FEA2C @ =0x00000342
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	ldr r2, _080FEA30 @ =0x0000033E
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r6, r0, #0x0
	ldr r1, [r7, #0x00]
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r0, r0, r6
	ldrb r2, [r0, #0x00]
	ldr r0, _080FEA34 @ =0x00000346
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r0, r1, r0
	ldrb r5, [r0, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	cmp r6, r0
	beq _080FEA0C
	strb r6, [r1, #0x00]
	ldr r1, _080FEA38 @ =0x083BA650
	ldr r0, _080FEA3C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r5, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_810D038
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
_080FEA0C:
	adds r0, r6, #0x0
	bl sub_8109F4C
	cmp r0, #0x00
	bne _080FEA18
	b _080FEB58
_080FEA18:
	cmp r5, #0x01
	beq _080FEA94
	cmp r5, #0x01
	bgt _080FEA40
	cmp r5, #0x00
	beq _080FEA4A
	b _080FEB58
	.byte 0x00, 0x00
_080FEA28: .4byte 0x03000FD8
_080FEA2C: .4byte 0x00000342
_080FEA30: .4byte 0x0000033E
_080FEA34: .4byte 0x00000346
_080FEA38: .4byte 0x083BA650
_080FEA3C: .4byte 0x0300034C
_080FEA40:
	cmp r5, #0x02
	beq _080FEADC
	cmp r5, #0x03
	beq _080FEB18
	b _080FEB58
_080FEA4A:
	ldr r1, [r7, #0x00]
	ldr r2, _080FEA7C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080FEA84
	ldr r1, [r1, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x01
	bl sub_81069B4
	movs r0, #0x00
	bl sub_810AC60
	ldr r0, _080FEA80 @ =0x080FECE9
	mov r1, r8
	str r0, [r1, #0x04]
	bl sub_810D00C
	b _080FEB54
	.byte 0x00, 0x00
_080FEA7C: .4byte 0x0000033F
_080FEA80: .4byte sub_80FECE8
_080FEA84:
	ldr r2, _080FEA90 @ =0x00000347
	adds r0, r1, r2
	strb r5, [r0, #0x00]
	bl sub_80FEB64
	b _080FEB54
_080FEA90: .4byte 0x00000347
_080FEA94:
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x03
	bl sub_81069B4
	movs r0, #0x01
	bl sub_810AC60
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r3, r0, r1
	ldr r1, [r0, #0x7C]
	ldr r0, [r0, #0x70]
	ldr r2, _080FEAD0 @ =0x084FE9C8
	cmp r1, r0
	bne _080FEAC2
	ldr r2, _080FEAD4 @ =0x084FE8CC
_080FEAC2:
	str r2, [r3, #0x00]
	bl sub_810D11C
	ldr r0, _080FEAD8 @ =0x080FEF15
	mov r2, r8
	str r0, [r2, #0x04]
	b _080FEB54
_080FEAD0: .4byte 0x084FE9C8
_080FEAD4: .4byte 0x084FE8CC
_080FEAD8: .4byte sub_80FEF14
_080FEADC:
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	ldr r0, _080FEB10 @ =0x00000345
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	ldr r0, _080FEB14 @ =0x080FF411
	mov r1, r8
	str r0, [r1, #0x04]
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810CB84
	b _080FEB54
_080FEB10: .4byte 0x00000345
_080FEB14: .4byte sub_80FF410
_080FEB18:
	ldr r0, [r7, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	ldr r0, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ands r5, r0
	ldr r0, _080FEB4C @ =0x080FD8BD
	cmp r5, #0x00
	bne _080FEB3E
	ldr r0, _080FEB50 @ =0x08101471
_080FEB3E:
	mov r2, r8
	str r0, [r2, #0x04]
	ldr r0, _080FEB50 @ =0x08101471
	str r0, [r2, #0x08]
	bl sub_810D00C
	b _080FEB58
_080FEB4C: .4byte sub_80FD8BC
_080FEB50: .4byte sub_8101470
_080FEB54:
	bl sub_810D4C4
_080FEB58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80FEB64
sub_80FEB64:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080FEC8C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r7, [r0, #0x7C]
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_810C414
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FEB80
	b _080FECCE
_080FEB80:
	movs r5, #0x00
	movs r4, #0x00
	ldr r0, _080FEC90 @ =0x0300034C
	mov r8, r0
	ldr r6, [r6, #0x00]
	mov r12, r6
	ldr r6, _080FEC94 @ =0x00000352
	add r6, r12
_080FEB90:
	lsls r1, r4, #0x02
	mov r0, r12
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080FEC00
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FEC00
	movs r1, #0x00
	ldsb r1, [r6, r1]
	adds r0, r2, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _080FECA0
	cmp r5, #0x00
	beq _080FEBFE
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _080FEBD2
	adds r1, #0xFF
_080FEBD2:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	bge _080FEBEA
	adds r1, #0xFF
_080FEBEA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r3, r1
	bge _080FEC00
_080FEBFE:
	adds r5, r2, #0x0
_080FEC00:
	adds r4, #0x01
	cmp r4, #0x07
	ble _080FEB90
_080FEC06:
	ldr r4, _080FEC8C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0x08
	str r1, [r0, #0x00]
	str r1, [r7, #0x34]
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	movs r0, #0x8C
	lsls r0, r0, #0x04
	add r0, r8
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	bl sub_810D468
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_810D524
	bl sub_810CCF4
	adds r0, r5, #0x0
	movs r1, #0x0D
	bl sub_810A78C
	movs r0, #0x02
	bl sub_81069B4
	ldr r0, [r4, #0x00]
	ldr r1, _080FEC98 @ =0x00000347
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	movs r0, #0x1F
	ands r1, r0
	ldrb r0, [r2, #0x00]
	movs r3, #0x20
	negs r3, r3
	ands r3, r0
	orrs r3, r1
	strb r3, [r2, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x70]
	cmp r7, r0
	bne _080FECA4
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1B
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, _080FEC9C @ =0x084FE8A8
	b _080FECB0
_080FEC8C: .4byte 0x03000FD8
_080FEC90: .4byte 0x0300034C
_080FEC94: .4byte 0x00000352
_080FEC98: .4byte 0x00000347
_080FEC9C: .4byte 0x084FE8A8
_080FECA0:
	adds r5, r2, #0x0
	b _080FEC06
_080FECA4:
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1B
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, _080FECD8 @ =0x084FE9A4
_080FECB0:
	adds r0, r1, r0
	str r0, [r7, #0x74]
	ldr r4, _080FECDC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, _080FECE0 @ =0x000002BD
	adds r0, r0, r1
	movs r1, #0x02
	strb r1, [r0, #0x00]
	subs r1, #0x03
	movs r0, #0x77
	bl play_sfx_80195B4
	ldr r1, [r4, #0x00]
	ldr r0, _080FECE4 @ =0x080FFD21
	str r0, [r1, #0x24]
_080FECCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FECD8: .4byte 0x084FE9A4
_080FECDC: .4byte 0x03000FD8
_080FECE0: .4byte 0x000002BD
_080FECE4: .4byte sub_80FFD20
	thumb_func_start sub_80FECE8
sub_80FECE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	ldr r0, _080FEDDC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080FEDE0 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FED1E
	ldr r0, _080FEDE4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FED1E
	ldr r0, _080FEDE8 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FED1E:
	ldr r7, _080FEDDC @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r6, [r0, #0x7C]
	bl sub_810D57C
	ldr r1, [r7, #0x00]
	ldr r2, _080FEDEC @ =0x00000342
	mov r8, r2
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	subs r2, #0x04
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r4, r0, #0x0
	ldr r2, [r7, #0x00]
	mov r1, r8
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r4, r0
	beq _080FEDFC
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r6, #0x7F
	ldrb r1, [r6, #0x00]
	movs r2, #0x09
	negs r2, r2
	mov r9, r2
	mov r0, r9
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FED7A
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FED7A:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _080FED90
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FED90:
	ldrb r1, [r6, #0x00]
	mov r0, r9
	ands r0, r1
	strb r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r5, #0x2C]
	bl sub_810CCF4
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r7, #0x00]
	ldr r1, _080FEDF0 @ =0x00000347
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x00]
	ldr r2, _080FEDF4 @ =0x00000343
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	add r0, r8
	orrs r4, r1
	strb r4, [r0, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	ldr r0, _080FEDF8 @ =0x080FE9A1
	mov r1, r10
	str r0, [r1, #0x04]
	b _080FEF06
	.byte 0x00, 0x00
_080FEDDC: .4byte 0x03000FD8
_080FEDE0: .4byte 0x000002C1
_080FEDE4: .4byte 0x0300034C
_080FEDE8: .4byte 0x0000015F
_080FEDEC: .4byte 0x00000342
_080FEDF0: .4byte 0x00000347
_080FEDF4: .4byte 0x00000343
_080FEDF8: .4byte sub_80FE9A0
_080FEDFC:
	ldr r1, _080FEEE8 @ =0x00000343
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	adds r4, r3, #0x0
	ands r4, r0
	subs r1, #0x04
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	subs r5, r0, #0x1
	ldr r2, _080FEEEC @ =0x0300034C
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080FEE30
	cmp r5, #0x00
	beq _080FEE2E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FEE2E:
	subs r4, #0x01
_080FEE30:
	adds r0, r6, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FEE4E
	cmp r5, #0x00
	beq _080FEE4C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FEE4C:
	adds r4, #0x01
_080FEE4E:
	cmp r4, #0x00
	bge _080FEE54
	adds r4, r5, #0x0
_080FEE54:
	cmp r4, r5
	ble _080FEE5A
	movs r4, #0x00
_080FEE5A:
	ldr r5, _080FEEF0 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	ldr r6, _080FEEF4 @ =0x00000347
	adds r1, r1, r6
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _080FEEE8 @ =0x00000343
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r4, r2
	beq _080FEEB0
	strb r4, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	lsrs r2, r2, #0x0C
	adds r1, r1, r6
	ldrb r1, [r1, #0x00]
	asrs r2, r1
	movs r0, #0x01
	eors r2, r0
	ands r2, r0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_810A84C
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
_080FEEB0:
	ldr r0, [r5, #0x00]
	ldr r2, _080FEEF8 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	bl sub_8109F4C
	cmp r0, #0x00
	ble _080FEF06
	ldr r1, [r5, #0x00]
	ldr r0, [r1, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	adds r1, r1, r6
	ldrb r1, [r1, #0x00]
	asrs r0, r1
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080FEEFC
	bl sub_80FEB64
	b _080FEF06
_080FEEE8: .4byte 0x00000343
_080FEEEC: .4byte 0x0300034C
_080FEEF0: .4byte 0x03000FD8
_080FEEF4: .4byte 0x00000347
_080FEEF8: .4byte 0x00000342
_080FEEFC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_080FEF06:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80FEF14
sub_80FEF14:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r5, _080FEFD8 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x7C]
	mov r9, r0
	bl sub_810D57C
	ldr r1, [r5, #0x00]
	ldr r7, _080FEFDC @ =0x00000342
	adds r0, r1, r7
	ldrb r0, [r0, #0x00]
	ldr r2, _080FEFE0 @ =0x0000033E
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r6, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r6, r0
	beq _080FEFE8
	mov r4, r9
	adds r4, #0x08
	mov r2, r9
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FEF7A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FEF7A:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _080FEF90
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FEF90:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	bl sub_810CCF4
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r5, #0x00]
	movs r4, #0xD2
	lsls r4, r4, #0x02
	adds r0, r0, r4
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	adds r0, r0, r7
	orrs r6, r1
	strb r6, [r0, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	ldr r0, _080FEFE4 @ =0x080FE9A1
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x04]
	b _080FF3FE
	.byte 0x00, 0x00
_080FEFD8: .4byte 0x03000FD8
_080FEFDC: .4byte 0x00000342
_080FEFE0: .4byte 0x0000033E
_080FEFE4: .4byte sub_80FE9A0
_080FEFE8:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	adds r6, r3, #0x0
	ands r6, r0
	movs r4, #0xD0
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	subs r4, r0, #0x1
	ldr r1, _080FF024 @ =0x0300034C
	adds r0, r1, #0x0
	adds r0, #0x42
	ldrh r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	mov r10, r1
	cmp r0, #0x00
	beq _080FF028
	cmp r4, #0x00
	beq _080FF01E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF01E:
	subs r6, #0x01
	b _080FF040
	.byte 0x00, 0x00
_080FF024: .4byte 0x0300034C
_080FF028:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _080FF040
	cmp r4, #0x00
	beq _080FF03E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF03E:
	adds r6, #0x01
_080FF040:
	cmp r6, #0x00
	bge _080FF046
	adds r6, r4, #0x0
_080FF046:
	cmp r6, r4
	ble _080FF04C
	movs r6, #0x00
_080FF04C:
	ldr r3, _080FF0A0 @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r2, _080FF0A4 @ =0x00000323
	adds r0, r1, r2
	adds r0, r0, r6
	ldrb r2, [r0, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	mov r8, r4
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r4, #0xC6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	lsls r0, r2, #0x01
	ldr r5, [r1, #0x00]
	lsrs r5, r0
	movs r0, #0x03
	ands r5, r0
	str r5, [sp, #0x004]
	mov r0, r10
	ldrh r1, [r0, #0x3E]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FF0A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, #0x01
	b _080FF0BE
	.byte 0x00, 0x00
_080FF0A0: .4byte 0x03000FD8
_080FF0A4: .4byte 0x00000323
_080FF0A8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FF0BE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	subs r5, #0x01
_080FF0BE:
	cmp r5, #0x00
	bge _080FF0C4
	movs r5, #0x02
_080FF0C4:
	cmp r5, #0x02
	ble _080FF0CA
	movs r5, #0x00
_080FF0CA:
	ldr r2, _080FF130 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	movs r4, #0xDC
	lsls r4, r4, #0x01
	adds r1, r3, r4
	mov r0, r8
	lsls r7, r0, #0x01
	adds r0, r7, r0
	lsls r0, r0, #0x03
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	ldr r0, [r3, #0x7C]
	str r1, [r0, #0x74]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r2, [r0, #0x00]
	cmp r6, r2
	bne _080FF0F4
	b _080FF204
_080FF0F4:
	strb r6, [r0, #0x00]
	ldr r4, _080FF130 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, _080FF134 @ =0x000002BF
	adds r1, r1, r0
	lsls r3, r5, #0x06
	ldrb r2, [r1, #0x00]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r2, _080FF138 @ =0x03000FF4
	mov r0, r9
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	mov r2, r8
	cmp r2, #0x02
	ble _080FF13C
	movs r1, #0x02
	cmp r2, #0x05
	bgt _080FF13E
	movs r1, #0x01
	b _080FF13E
_080FF130: .4byte 0x03000FD8
_080FF134: .4byte 0x000002BF
_080FF138: .4byte 0x03000FF4
_080FF13C:
	movs r1, #0x00
_080FF13E:
	adds r4, r1, #0x0
	movs r7, #0x00
	cmp r4, #0x01
	beq _080FF172
	cmp r4, #0x01
	bgt _080FF150
	cmp r4, #0x00
	beq _080FF156
	b _080FF1A2
_080FF150:
	cmp r4, #0x02
	beq _080FF186
	b _080FF1A2
_080FF156:
	ldr r1, [r0, #0x08]
	lsls r1, r1, #0x0E
	lsrs r1, r1, #0x1A
	ldrb r3, [r0, #0x0B]
	lsrs r3, r3, #0x06
	ldrb r0, [r0, #0x0C]
	movs r2, #0x0F
	ands r0, r2
	lsls r0, r0, #0x02
	orrs r0, r3
	orrs r1, r0
	movs r0, #0x01
	mov r2, r8
	b _080FF198
_080FF172:
	ldrb r1, [r0, #0x0A]
	lsrs r1, r1, #0x02
	ldrh r0, [r0, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	orrs r1, r0
	mov r2, r8
	subs r2, #0x03
	adds r0, r4, #0x0
	b _080FF198
_080FF186:
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1A
	ldrb r0, [r0, #0x0D]
	lsrs r0, r0, #0x02
	orrs r1, r0
	mov r2, r8
	subs r2, #0x06
	movs r0, #0x01
_080FF198:
	lsls r0, r2
	ands r1, r0
	cmp r1, #0x00
	beq _080FF1A2
	movs r7, #0x0A
_080FF1A2:
	ldr r1, _080FF1FC @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	lsrs r2, r2, #0x0C
	asrs r2, r4
	movs r0, #0x01
	eors r2, r0
	ands r2, r0
	adds r0, r6, #0x0
	movs r1, #0x01
	adds r3, r7, #0x0
	bl sub_810A84C
	ldr r4, _080FF1FC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
	ldr r0, _080FF200 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	mov r4, r10
	ldr r1, [r4, #0x0C]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_810D038
	lsls r4, r5, #0x10
	lsrs r0, r4, #0x10
	bl sub_810D098
	b _080FF242
	.byte 0x00, 0x00
_080FF1FC: .4byte 0x03000FD8
_080FF200: .4byte 0x0300034C
_080FF204:
	lsls r4, r5, #0x10
	ldr r0, [sp, #0x004]
	cmp r5, r0
	beq _080FF242
	ldr r1, _080FF26C @ =0x000002BF
	adds r2, r3, r1
	lsls r3, r5, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080FF270 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r0, #0x03
	lsls r0, r7
	ldr r1, [r2, #0x00]
	bics r1, r0
	adds r0, r5, #0x0
	lsls r0, r7
	orrs r1, r0
	str r1, [r2, #0x00]
	movs r0, #0x01
	bl sub_810AC60
	lsrs r0, r4, #0x10
	bl sub_810D098
_080FF242:
	lsrs r0, r4, #0x10
	bl sub_810A984
	ldr r0, _080FF270 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080FF274 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	bl sub_8109F4C
	cmp r0, #0x00
	bgt _080FF260
	b _080FF3FE
_080FF260:
	cmp r5, #0x01
	bgt _080FF278
	mov r4, r10
	ldrb r1, [r4, #0x10]
	b _080FF27C
	.byte 0x00, 0x00
_080FF26C: .4byte 0x000002BF
_080FF270: .4byte 0x03000FD8
_080FF274: .4byte 0x00000342
_080FF278:
	mov r0, r10
	ldrb r1, [r0, #0x11]
_080FF27C:
	mov r0, r9
	adds r0, #0xFC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _080FF28A
	b _080FF3F4
_080FF28A:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsrs r1, r0, #0x0C
	mov r4, r8
	cmp r4, #0x02
	ble _080FF2B2
	cmp r4, #0x05
	bgt _080FF2A2
	movs r0, #0x02
	b _080FF2A4
_080FF2A2:
	movs r0, #0x04
_080FF2A4:
	ands r1, r0
	cmp r1, #0x00
	beq _080FF2AC
	b _080FF3F4
_080FF2AC:
	b _080FF2BE
_080FF2AE:
	adds r4, r2, #0x0
	b _080FF35C
_080FF2B2:
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	cmp r1, #0x00
	bne _080FF2BE
	b _080FF3F4
_080FF2BE:
	mov r0, r9
	movs r1, #0x02
	bl sub_810C414
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FF2CE
	b _080FF3D4
_080FF2CE:
	movs r4, #0x00
	movs r5, #0x00
	ldr r0, _080FF3E0 @ =0x0300034C
	mov r10, r0
	mov r7, r8
	adds r7, #0x03
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldr r2, _080FF3E8 @ =0x00000352
	adds r2, r2, r6
	mov r8, r2
_080FF2E4:
	lsls r1, r5, #0x02
	adds r0, r6, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080FF356
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FF356
	mov r0, r8
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r2, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _080FF2AE
	cmp r4, #0x00
	beq _080FF354
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _080FF328
	adds r1, #0xFF
_080FF328:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	bge _080FF340
	adds r1, #0xFF
_080FF340:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r3, r1
	bge _080FF356
_080FF354:
	adds r4, r2, #0x0
_080FF356:
	adds r5, #0x01
	cmp r5, #0x07
	ble _080FF2E4
_080FF35C:
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r0, r0, r2
	adds r1, r4, #0x0
	adds r1, #0x08
	str r1, [r0, #0x00]
	mov r0, r9
	str r1, [r0, #0x34]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	movs r0, #0x8C
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	bl sub_810CCF4
	adds r0, r4, #0x0
	movs r1, #0x0D
	bl sub_810A78C
	bl sub_810D468
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_810D524
	movs r0, #0x05
	bl sub_81069B4
	movs r2, #0x88
	lsls r2, r2, #0x01
	add r2, r9
	movs r0, #0x1F
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _080FF3EC @ =0x000002BD
	adds r0, r0, r2
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldr r0, _080FF3F0 @ =0x080FFD21
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x04]
_080FF3D4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x77
	bl play_sfx_80195B4
	b _080FF3FE
_080FF3E0: .4byte 0x0300034C
_080FF3E4: .4byte 0x03000FD8
_080FF3E8: .4byte 0x00000352
_080FF3EC: .4byte 0x000002BD
_080FF3F0: .4byte sub_80FFD20
_080FF3F4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_080FF3FE:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80FF410
sub_80FF410:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080FF4F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080FF4FC @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080FF444
	ldr r0, _080FF500 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FF444
	ldr r0, _080FF504 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080FF444:
	ldr r7, _080FF4F8 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r6, [r0, #0x7C]
	bl sub_810D57C
	ldr r1, [r7, #0x00]
	ldr r2, _080FF508 @ =0x00000342
	mov r8, r2
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	ldr r3, _080FF50C @ =0x0000033E
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r4, r0, #0x0
	ldr r2, [r7, #0x00]
	mov r5, r8
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r4, r0
	beq _080FF518
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r2, r6, #0x0
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FF49E
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FF49E:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _080FF4B4
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FF4B4:
	movs r0, #0x00
	str r0, [r5, #0x2C]
	bl sub_810CCF4
	movs r0, #0x0F
	bl sub_810D1D8
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
	ldr r0, [r7, #0x00]
	ldr r1, _080FF510 @ =0x00000349
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	add r0, r8
	orrs r4, r1
	strb r4, [r0, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	ldr r0, _080FF514 @ =0x080FE9A1
	mov r3, r9
	str r0, [r3, #0x04]
	b _080FFB64
_080FF4F8: .4byte 0x03000FD8
_080FF4FC: .4byte 0x000002C1
_080FF500: .4byte 0x0300034C
_080FF504: .4byte 0x0000015F
_080FF508: .4byte 0x00000342
_080FF50C: .4byte 0x0000033E
_080FF510: .4byte 0x00000349
_080FF514: .4byte sub_80FE9A0
_080FF518:
	ldr r4, _080FF5CC @ =0x00000345
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	adds r4, r3, #0x0
	ands r4, r0
	ldr r5, _080FF5D0 @ =0x00000341
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	subs r5, r0, #0x1
	ldr r2, _080FF5D4 @ =0x0300034C
	adds r0, r2, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080FF54C
	cmp r5, #0x00
	beq _080FF54A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF54A:
	subs r4, #0x01
_080FF54C:
	adds r0, r7, #0x0
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FF56A
	cmp r5, #0x00
	beq _080FF568
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF568:
	adds r4, #0x01
_080FF56A:
	cmp r4, #0x00
	bge _080FF570
	adds r4, r5, #0x0
_080FF570:
	cmp r4, r5
	ble _080FF576
	movs r4, #0x00
_080FF576:
	ldr r5, _080FF5D8 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xCB
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ldr r0, _080FF5DC @ =0x00000349
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r2, [r5, #0x00]
	adds r0, r2, r0
	ldrb r7, [r0, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r2, r2, r3
	lsls r0, r7, #0x04
	ldr r1, _080FF5E0 @ =0x083BBDD0
	adds r0, r0, r1
	str r0, [r2, #0x00]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FF606
	ldr r0, [r5, #0x00]
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _080FF5E4
	cmp r0, #0x0B
	beq _080FF5F6
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	b _080FF602
	.byte 0x00, 0x00
_080FF5CC: .4byte 0x00000345
_080FF5D0: .4byte 0x00000341
_080FF5D4: .4byte 0x0300034C
_080FF5D8: .4byte 0x03000FD8
_080FF5DC: .4byte 0x00000349
_080FF5E0: .4byte 0x083BBDD0
_080FF5E4:
	movs r0, #0x00
	movs r1, #0x02
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x02
	bl sub_810CB04
	b _080FF606
_080FF5F6:
	movs r0, #0x00
	movs r1, #0x01
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x01
_080FF602:
	bl sub_810CB04
_080FF606:
	ldr r5, _080FF6AC @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _080FF6B0 @ =0x00000345
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r4, r2
	beq _080FF652
	strb r4, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x01
	movs r3, #0x00
	bl sub_810A84C
	ldr r0, [r5, #0x00]
	movs r3, #0x9E
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
	ldr r0, _080FF6B4 @ =0x083BBDD0
	lsls r1, r7, #0x04
	adds r0, #0x0C
	adds r1, r1, r0
	ldr r0, _080FF6B8 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_810D038
_080FF652:
	ldr r0, [r5, #0x00]
	ldr r1, _080FF6BC @ =0x00000342
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	bl sub_8109F4C
	adds r1, r0, #0x0
	ldr r0, _080FF6C0 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8A
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FF674
	b _080FFB64
_080FF674:
	cmp r1, #0x00
	bgt _080FF67A
	b _080FFB64
_080FF67A:
	movs r3, #0x00
	movs r4, #0x00
	mov r8, r5
_080FF680:
	mov r2, r8
	ldr r0, [r2, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x80
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080FF692
	b _080FF7F4
_080FF692:
	ldr r0, _080FF6B4 @ =0x083BBDD0
	lsls r1, r7, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _080FF6A2
	b _080FF7F4
_080FF6A2:
	lsls r0, r0, #0x02
	ldr r1, _080FF6C4 @ =0x080FF6C8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080FF6AC: .4byte 0x03000FD8
_080FF6B0: .4byte 0x00000345
_080FF6B4: .4byte 0x083BBDD0
_080FF6B8: .4byte 0x0300034C
_080FF6BC: .4byte 0x00000342
_080FF6C0: .4byte 0x03000FF4
_080FF6C4: .4byte 0x080FF6C8
	.byte 0x00, 0xF7, 0x0F, 0x08, 0x7C, 0xF7, 0x0F, 0x08, 0x24, 0xF7, 0x0F, 0x08, 0xF4, 0xF7, 0x0F, 0x08
	.byte 0xF4, 0xF7, 0x0F, 0x08, 0xF4, 0xF7, 0x0F, 0x08, 0xF4, 0xF7, 0x0F, 0x08, 0xF4, 0xF7, 0x0F, 0x08
	.byte 0xF4, 0xF7, 0x0F, 0x08, 0xF4, 0xF7, 0x0F, 0x08, 0x34, 0xF7, 0x0F, 0x08, 0x44, 0xF7, 0x0F, 0x08
	.byte 0xF2, 0xF7, 0x0F, 0x08, 0xF2, 0xF7, 0x0F, 0x08, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20
	.byte 0x08, 0x40, 0x02, 0x28, 0x72, 0xD1, 0x11, 0x1C, 0xF6, 0x31, 0x10, 0x1C, 0xF8, 0x30, 0x00, 0x25
	.byte 0x49, 0x5F, 0x00, 0x22, 0x80, 0x5E, 0x81, 0x42, 0x68, 0xDA, 0x66, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x06, 0x28, 0x60, 0xD1, 0x5E, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28, 0x58, 0xD1, 0x10, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28, 0x50, 0xD1, 0x11, 0x1C, 0xF6, 0x31, 0x10, 0x1C
	.byte 0xF8, 0x30, 0x00, 0x25, 0x49, 0x5F, 0x00, 0x25, 0x40, 0x5F, 0x81, 0x42, 0x45, 0xDB, 0x10, 0x1C
	.byte 0xFC, 0x30, 0x11, 0x1C, 0xFE, 0x31, 0x00, 0x25, 0x42, 0x5F, 0x00, 0x25, 0x48, 0x5F, 0x82, 0x42
	.byte 0x3C, 0xDA, 0x3A, 0xE0, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28
	.byte 0x34, 0xD1, 0x96, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x78, 0x13, 0x28, 0x14, 0xD0, 0x14, 0x28
	.byte 0x19, 0xD0, 0x8F, 0x25, 0x6D, 0x00, 0x50, 0x19, 0x01, 0x88, 0xC0, 0x20, 0x00, 0x01, 0x08, 0x40
	.byte 0x00, 0x28, 0x1A, 0xD0, 0x90, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x68, 0xE0, 0x21, 0x89, 0x02
	.byte 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0, 0x0F, 0xE0, 0x8F, 0x25, 0x6D, 0x00, 0x50, 0x19, 0x01, 0x88
	.byte 0x80, 0x20, 0x00, 0x01, 0x05, 0xE0, 0x8F, 0x21, 0x49, 0x00, 0x50, 0x18, 0x01, 0x88, 0x80, 0x20
	.byte 0xC0, 0x00, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x23, 0x8F, 0x25, 0x6D, 0x00, 0x50, 0x19
	.byte 0x01, 0x88, 0x10, 0x48, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x23
_080FF7F4:
	adds r4, #0x01
	cmp r4, #0x01
	bgt _080FF7FC
	b _080FF680
_080FF7FC:
	cmp r3, #0x00
	bne _080FF802
	b _080FFB5A
_080FF802:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x77
	bl play_sfx_80195B4
	ldr r0, _080FF830 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _080FF822
	b _080FFA68
_080FF822:
	lsls r0, r0, #0x02
	ldr r1, _080FF834 @ =0x080FF838
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0xAB, 0xF1, 0x00, 0x00
_080FF830: .4byte 0x03000FD8
_080FF834: .4byte 0x080FF838
	.byte 0x70, 0xF8, 0x0F, 0x08, 0x86, 0xF9, 0x0F, 0x08, 0xD0, 0xF8, 0x0F, 0x08, 0x68, 0xFA, 0x0F, 0x08
	.byte 0x68, 0xFA, 0x0F, 0x08, 0x68, 0xFA, 0x0F, 0x08, 0x68, 0xFA, 0x0F, 0x08, 0x68, 0xFA, 0x0F, 0x08
	.byte 0x68, 0xFA, 0x0F, 0x08, 0x68, 0xFA, 0x0F, 0x08, 0xF0, 0xF8, 0x0F, 0x08, 0x40, 0xF9, 0x0F, 0x08
	.byte 0x38, 0xFA, 0x0F, 0x08, 0x38, 0xFA, 0x0F, 0x08, 0x07, 0x48, 0x01, 0x68, 0xB7, 0x22, 0x92, 0x00
	.byte 0x88, 0x18, 0x00, 0x68, 0x40, 0x79, 0x00, 0x28, 0x0A, 0xD0, 0x34, 0x1C, 0x03, 0x4B, 0xC9, 0x18
	.byte 0x81, 0x20, 0x08, 0x70, 0xC7, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00
	.byte 0x30, 0x1C, 0x87, 0xF7, 0xBF, 0xFE, 0x02, 0x1C, 0x31, 0x1C, 0xF6, 0x31, 0x30, 0x1C, 0xF8, 0x30
	.byte 0x00, 0x24, 0x09, 0x5F, 0x00, 0x25, 0x40, 0x5F, 0x81, 0x42, 0x00, 0xDA, 0xAC, 0xE0, 0x00, 0x2A
	.byte 0x00, 0xD1, 0xA9, 0xE0, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x06, 0x28
	.byte 0x00, 0xD1, 0xA1, 0xE0, 0x14, 0x1C, 0xA0, 0xE0, 0x30, 0x1C, 0x87, 0xF7, 0xA3, 0xFE, 0x04, 0x1C
	.byte 0x08, 0x30, 0x70, 0x63, 0x02, 0x48, 0x00, 0x68, 0x02, 0x4B, 0xC0, 0x18, 0x03, 0x21, 0xB3, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00, 0x30, 0x1C, 0x87, 0xF7, 0x93, 0xFE, 0x03, 0x1C
	.byte 0x30, 0x1C, 0xFC, 0x30, 0x32, 0x1C, 0xFE, 0x32, 0x00, 0x24, 0x01, 0x5F, 0x00, 0x25, 0x50, 0x5F
	.byte 0x81, 0x42, 0x08, 0xDB, 0x00, 0x2B, 0x06, 0xD0, 0x18, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20
	.byte 0x08, 0x40, 0x06, 0x28, 0x01, 0xD1, 0x34, 0x1C, 0x00, 0xE0, 0x1C, 0x1C, 0x20, 0x1C, 0x08, 0x30
	.byte 0x70, 0x63, 0x03, 0x48, 0x00, 0x68, 0x03, 0x49, 0x40, 0x18, 0x01, 0x21, 0x01, 0x70, 0x75, 0xE0
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00, 0x30, 0x1C, 0x87, 0xF7, 0x6B, 0xFE, 0x03, 0x1C
	.byte 0x31, 0x1C, 0xF6, 0x31, 0x30, 0x1C, 0xF8, 0x30, 0x00, 0x24, 0x09, 0x5F, 0x00, 0x25, 0x40, 0x5F
	.byte 0x81, 0x42, 0x59, 0xDB, 0x30, 0x1C, 0xFC, 0x30, 0x32, 0x1C, 0xFE, 0x32, 0x00, 0x24, 0x01, 0x5F
	.byte 0x00, 0x25, 0x50, 0x5F, 0x81, 0x42, 0x4F, 0xDB, 0x00, 0x2B, 0x4D, 0xD0, 0x18, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x06, 0x28, 0x46, 0xD0, 0x1C, 0x1C, 0x45, 0xE0, 0x30, 0x1C
	.byte 0x87, 0xF7, 0x48, 0xFE, 0x02, 0x1C, 0x8F, 0x23, 0x5B, 0x00, 0xF0, 0x18, 0x01, 0x88, 0x07, 0x48
	.byte 0x08, 0x40, 0x00, 0x28, 0x08, 0xD1, 0x00, 0x2A, 0x06, 0xD0, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78
	.byte 0x06, 0x20, 0x08, 0x40, 0x06, 0x28, 0x03, 0xD1, 0x34, 0x1C, 0x02, 0xE0, 0xAB, 0xF1, 0x00, 0x00
	.byte 0x14, 0x1C, 0x96, 0x25, 0x6D, 0x00, 0x70, 0x19, 0x00, 0x78, 0x13, 0x28, 0x14, 0xD0, 0x14, 0x28
	.byte 0x19, 0xD0, 0x8F, 0x21, 0x49, 0x00, 0x70, 0x18, 0x01, 0x88, 0xC0, 0x20, 0x00, 0x01, 0x08, 0x40
	.byte 0x00, 0x28, 0x1A, 0xD0, 0x90, 0x22, 0x52, 0x00, 0xB0, 0x18, 0x00, 0x68, 0xE0, 0x21, 0x89, 0x02
	.byte 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0, 0x0F, 0xE0, 0x8F, 0x23, 0x5B, 0x00, 0xF0, 0x18, 0x01, 0x88
	.byte 0x80, 0x20, 0x00, 0x01, 0x05, 0xE0, 0x8F, 0x25, 0x6D, 0x00, 0x70, 0x19, 0x01, 0x88, 0x80, 0x20
	.byte 0xC0, 0x00, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x34, 0x1C, 0x06, 0x48, 0x00, 0x68, 0x06, 0x49
	.byte 0x40, 0x18, 0x01, 0x21, 0x01, 0x70, 0x20, 0x1C, 0x08, 0x30, 0x70, 0x63, 0x03, 0x48, 0x4A, 0x46
	.byte 0x50, 0x60, 0x23, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00, 0x21, 0xFD, 0x0F, 0x08
	.byte 0x30, 0x1C, 0x87, 0xF7, 0xEF, 0xFD, 0x34, 0x1C, 0x30, 0x1C, 0x08, 0x30, 0x70, 0x63, 0x05, 0x48
	.byte 0x00, 0x68, 0x05, 0x4B, 0xC0, 0x18, 0x01, 0x21, 0x01, 0x70, 0x04, 0x48, 0x4D, 0x46, 0x68, 0x60
	.byte 0x0C, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00, 0x21, 0xFD, 0x0F, 0x08
_080FFA68:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	b _080FFB64
	.byte 0x0D, 0xF0, 0xF8, 0xFC, 0x01, 0x20, 0x00, 0x21, 0x00, 0x22, 0x0D, 0xF0, 0x51, 0xFD, 0x0D, 0xF0
	.byte 0x37, 0xF9, 0x00, 0x2C, 0x5C, 0xD0, 0x0B, 0x48, 0x00, 0x68, 0x0B, 0x49, 0x40, 0x18, 0x01, 0x78
	.byte 0x80, 0x20, 0x08, 0x40, 0x00, 0x28, 0x15, 0xD0, 0x08, 0x49, 0x09, 0x48, 0x8C, 0x22, 0x12, 0x01
	.byte 0x80, 0x18, 0x00, 0x78, 0x80, 0x00, 0x40, 0x18, 0x00, 0x68, 0x80, 0x68, 0x0D, 0xF0, 0x68, 0xFA
	.byte 0x33, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xBD, 0x02, 0x00, 0x00, 0x00, 0xA6, 0x3B, 0x08
	.byte 0x4C, 0x03, 0x00, 0x03, 0x23, 0x1C, 0xEC, 0x33, 0x00, 0x25, 0x58, 0x5F, 0x00, 0x28, 0x15, 0xDA
	.byte 0x08, 0x4A, 0x09, 0x48, 0x8C, 0x21, 0x09, 0x01, 0x40, 0x18, 0x01, 0x78, 0x89, 0x00, 0x89, 0x18
	.byte 0x00, 0x22, 0x98, 0x5E, 0xC0, 0x43, 0x09, 0x68, 0x80, 0x00, 0x40, 0x18, 0x00, 0x68, 0x0D, 0xF0
	.byte 0x47, 0xFA, 0x12, 0xE0, 0x00, 0xA6, 0x3B, 0x08, 0x4C, 0x03, 0x00, 0x03, 0x20, 0x1C, 0xF0, 0x30
	.byte 0x01, 0x68, 0x0C, 0x48, 0x8C, 0x23, 0x1B, 0x01, 0xC0, 0x18, 0x00, 0x78, 0x09, 0x68, 0x80, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x68, 0x0D, 0xF0, 0x33, 0xFA, 0x20, 0x1C, 0x7E, 0x30, 0x01, 0x78
	.byte 0x06, 0x20, 0x08, 0x40, 0x02, 0x28, 0x07, 0xD1, 0x20, 0x1C, 0x11, 0x21, 0x0A, 0xF0, 0x2C, 0xFE
	.byte 0x06, 0xE0, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03, 0x20, 0x1C, 0x0D, 0x21, 0x0A, 0xF0, 0x24, 0xFE
	.byte 0x07, 0x20, 0x06, 0xF0, 0x35, 0xFF, 0x88, 0x24, 0x64, 0x00, 0x30, 0x19, 0x01, 0x78, 0x1F, 0x22
	.byte 0x11, 0x43, 0x01, 0x70, 0x04, 0xE0
_080FFB5A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_080FFB64:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80FFB70
sub_80FFB70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080FFBD8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	ldr r7, [r2, #0x34]
	movs r3, #0xD9
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	ldr r4, [r1, #0x08]
	adds r3, r0, #0x0
	cmp r7, #0x00
	beq _080FFBE4
	ldr r0, [r2, #0x40]
	ldr r5, _080FFBDC @ =0xFFFFFC00
	adds r0, r0, r5
	str r0, [r4, #0x04]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldr r5, _080FFBE0 @ =0x000002BD
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FFBE4
	cmp r4, #0x00
	bne _080FFBC8
	b _080FFD16
_080FFBC8:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080FFBCC:
	str r0, [r4, #0x04]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FFBCC
	b _080FFD16
	.byte 0x00, 0x00
_080FFBD8: .4byte 0x03000FD8
_080FFBDC: .4byte 0xFFFFFC00
_080FFBE0: .4byte 0x000002BD
_080FFBE4:
	ldr r3, [r3, #0x00]
	ldr r1, _080FFC6C @ =0x000002BD
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080FFCA4
	movs r5, #0x7F
	mov r12, r5
	mov r1, r12
	ands r1, r0
	mov r12, r1
	adds r5, r3, #0x0
	adds r5, #0x58
	movs r6, #0x08
	movs r3, #0x41
	negs r3, r3
	mov r8, r3
_080FFC06:
	ldr r3, [r5, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r12
	bne _080FFC8E
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FFC8E
	adds r0, r3, #0x0
	adds r0, #0x08
	cmp r0, r7
	beq _080FFC8E
	movs r0, #0x06
	ands r0, r2
	cmp r0, #0x04
	bne _080FFC70
	adds r2, r3, #0x0
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r2, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x00]
	movs r1, #0x06
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r1, [r4, #0x1B]
	mov r0, r8
	ands r0, r1
	b _080FFC8A
_080FFC6C: .4byte 0x000002BD
_080FFC70:
	ldr r0, [r3, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r3, #0x44]
	str r0, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
_080FFC8A:
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
_080FFC8E:
	adds r5, #0x04
	lsls r0, r6, #0x10
	ldr r3, _080FFCA0 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bne _080FFC06
	b _080FFD06
	.byte 0x00, 0x00
_080FFCA0: .4byte 0xFFFF0000
_080FFCA4:
	cmp r4, #0x00
	beq _080FFD16
	adds r2, r3, #0x0
	adds r2, #0x70
	ldr r1, [r3, #0x70]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, #0x03
	bne _080FFCCC
	movs r5, #0x88
	lsls r5, r5, #0x01
	adds r0, r1, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080FFCD0
_080FFCCC:
	adds r2, r3, #0x0
	adds r2, #0x74
_080FFCD0:
	ldr r2, [r2, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xE4
	ldr r0, [r3, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r3, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldrb r0, [r4, #0x1B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1B]
	ldr r4, [r4, #0x00]
_080FFD06:
	cmp r4, #0x00
	beq _080FFD16
	movs r0, #0x80
	lsls r0, r0, #0x18
_080FFD0E:
	str r0, [r4, #0x04]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FFD0E
_080FFD16:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80FFD20
sub_80FFD20:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r7, _080FFE14 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _080FFD3E
	b _080FFEEE
_080FFD3E:
	adds r5, r1, #0x0
	adds r5, #0x58
	bl sub_807FA50
	ldr r1, [r7, #0x00]
	movs r4, #0xD9
	lsls r4, r4, #0x02
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r0, _080FFE18 @ =0x00007001
	movs r1, #0x16
	movs r2, #0x01
	movs r3, #0x01
	bl sub_8084338
	ldr r1, [r7, #0x00]
	adds r1, r1, r4
	ldr r2, [r1, #0x00]
	str r0, [r2, #0x04]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_807BC90
	ldr r1, [r7, #0x00]
	ldr r2, _080FFE1C @ =0x000002BD
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080FFE20
	movs r7, #0x7F
	ands r7, r0
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	str r6, [r0, #0x08]
	movs r4, #0x07
_080FFD84:
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r7
	bne _080FFDC6
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FFDC6
	movs r0, #0x80
	lsls r0, r0, #0x18
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807FABC
	adds r2, r0, #0x0
	ldr r0, _080FFE14 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xD9
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	str r2, [r0, #0x08]
_080FFDC6:
	ldr r1, [r5, #0x04]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, r7
	bne _080FFE08
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FFE08
	movs r0, #0x80
	lsls r0, r0, #0x18
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807FABC
	adds r2, r0, #0x0
	ldr r0, _080FFE14 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xD9
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	str r2, [r0, #0x08]
_080FFE08:
	adds r5, #0x08
	subs r4, #0x02
	cmp r4, #0x00
	bge _080FFD84
	b _080FFE3C
	.byte 0x00, 0x00
_080FFE14: .4byte 0x03000FD8
_080FFE18: .4byte 0x00007001
_080FFE1C: .4byte 0x000002BD
_080FFE20:
	movs r0, #0x80
	lsls r0, r0, #0x18
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807FABC
	adds r2, r0, #0x0
	str r6, [r2, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0xD9
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x08]
_080FFE3C:
	bl sub_80FFB70
	ldr r7, _080FFED8 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x18]
	ldr r1, _080FFEDC @ =0x000002BD
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080FFEE8
	ldr r0, [r2, #0x7C]
	bl sub_8087650
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _080FFED0
	ldr r0, _080FFEE0 @ =0x00007001
	ldr r1, [r7, #0x00]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080FFE94
	adds r0, #0xFF
_080FFE94:
	asrs r0, r0, #0x08
	adds r0, #0x20
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x44]
	cmp r0, #0x00
	bge _080FFEA2
	adds r0, #0xFF
_080FFEA2:
	asrs r0, r0, #0x08
	subs r0, #0x04
	strh r0, [r4, #0x02]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x2A]
	adds r0, #0x01
	strh r0, [r4, #0x2A]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r4, [r1, #0x00]
_080FFED0:
	ldr r0, _080FFEE4 @ =0x08100791
	mov r1, r8
	str r0, [r1, #0x04]
	b _080FFEEE
_080FFED8: .4byte 0x03000FD8
_080FFEDC: .4byte 0x000002BD
_080FFEE0: .4byte 0x00007001
_080FFEE4: .4byte sub_8100790
_080FFEE8:
	ldr r0, _080FFEF8 @ =0x080FFEFD
	mov r2, r8
	str r0, [r2, #0x04]
_080FFEEE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FFEF8: .4byte sub_80FFEFC
	thumb_func_start sub_80FFEFC
sub_80FFEFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r4, _080FFF58 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	mov r8, r1
	ldr r7, [r1, #0x34]
	ldr r2, _080FFF5C @ =0x000002BD
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r0, r8
	bl sub_810C414
	mov r3, r8
	ldr r0, [r3, #0x34]
	cmp r7, r0
	beq _08100006
	adds r7, r0, #0x0
	cmp r7, #0x00
	bne _080FFF68
	ldr r1, _080FFF60 @ =0x083BA614
	ldr r0, _080FFF64 @ =0x0300034C
	movs r6, #0x8C
	lsls r6, r6, #0x04
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	b _080FFFF6
_080FFF58: .4byte 0x03000FD8
_080FFF5C: .4byte 0x000002BD
_080FFF60: .4byte 0x083BA614
_080FFF64: .4byte 0x0300034C
_080FFF68:
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	cmp r2, #0x00
	bge _080FFFA4
	ldr r1, _080FFF9C @ =0x083BA600
	ldr r0, _080FFFA0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _080FFF92
	adds r1, #0x04
_080FFF92:
	ldr r0, [r1, #0x00]
	bl sub_810CF84
	b _080FFFC2
	.byte 0x00, 0x00
_080FFF9C: .4byte 0x083BA600
_080FFFA0: .4byte 0x0300034C
_080FFFA4:
	adds r0, r1, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	ldr r0, _080FFFDC @ =0x0300034C
	movs r6, #0x8C
	lsls r6, r6, #0x04
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
_080FFFC2:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FFFE0
	ldr r0, [r7, #0x28]
	movs r1, #0x11
	bl sub_810A78C
	b _080FFFE8
	.byte 0x00, 0x00
_080FFFDC: .4byte 0x0300034C
_080FFFE0:
	ldr r0, [r7, #0x28]
	movs r1, #0x0D
	bl sub_810A78C
_080FFFE8:
	ldr r0, _0810003C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
_080FFFF6:
	strb r0, [r1, #0x00]
	bl sub_80FFB70
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08100006:
	cmp r7, #0x00
	bne _08100040
	mov r0, r8
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08100024
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100024:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _08100070
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08100070
_0810003C: .4byte 0x03000FD8
_08100040:
	mov r0, r8
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x01
	bne _08100070
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100070
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100070:
	ldr r2, _081000AC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldr r1, _081000B0 @ =0x000002BE
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	bne _08100086
	b _08100520
_08100086:
	cmp r7, #0x00
	bne _0810008C
	b _08100520
_0810008C:
	ldr r0, [r4, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r5, r0
	ldr r3, _081000B4 @ =0x00000346
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _081000EC
	cmp r0, #0x01
	bgt _081000B8
	cmp r0, #0x00
	beq _081000C0
	b _0810036E
	.byte 0x00, 0x00
_081000AC: .4byte 0x03000FD8
_081000B0: .4byte 0x000002BE
_081000B4: .4byte 0x00000346
_081000B8:
	cmp r0, #0x02
	bne _081000BE
	b _081001E8
_081000BE:
	b _0810036E
_081000C0:
	ldr r1, _081000E0 @ =0x0000034A
	adds r0, r4, r1
	adds r0, r0, r5
	ldr r2, _081000E4 @ =0x00000347
	adds r1, r4, r2
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	movs r3, #0xB2
	lsls r3, r3, #0x02
	adds r0, r1, r3
	adds r0, r0, r2
	ldr r4, _081000E8 @ =0x000002C2
	b _08100358
_081000E0: .4byte 0x0000034A
_081000E4: .4byte 0x00000347
_081000E8: .4byte 0x000002C2
_081000EC:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	movs r2, #0xC0
	lsls r2, r2, #0x0A
	lsls r2, r0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r0, r4, r3
	adds r0, r0, r5
	strb r1, [r0, #0x00]
	ldr r0, _08100164 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	lsls r0, r5, #0x04
	subs r0, r0, r5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	mov r12, r4
	asrs r2, r2, #0x10
	ldr r1, [r4, #0x00]
	bics r1, r2
	ldr r3, [r6, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x02
	ldr r0, [r4, r3]
	ands r0, r2
	orrs r1, r0
	mov r0, r12
	str r1, [r0, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	ldr r1, _08100168 @ =0x000002C9
	adds r0, r3, r1
	adds r0, r0, r2
	subs r4, #0x55
	adds r3, r3, r4
	ldrb r1, [r3, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0810016C @ =0x000002CF
	adds r1, r0, r3
	adds r1, r1, r2
	adds r4, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, _08100170 @ =0x000002BF
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _0810018C
	cmp r0, #0x01
	bgt _08100174
	cmp r0, #0x00
	beq _0810017A
	b _0810036E
_08100164: .4byte 0x03000FF4
_08100168: .4byte 0x000002C9
_0810016C: .4byte 0x000002CF
_08100170: .4byte 0x000002BF
_08100174:
	cmp r0, #0x02
	beq _081001B8
	b _0810036E
_0810017A:
	ldrb r0, [r2, #0x0C]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x08
	orrs r0, r1
	b _081001A0
_0810018C:
	ldrb r1, [r2, #0x0C]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
_081001A0:
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x0C]
	b _0810036E
_081001B8:
	ldrb r1, [r2, #0x0C]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	b _0810036E
_081001E8:
	ldr r3, [r7, #0x28]
	movs r2, #0x00
	mov r8, r2
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _08100200
	b _08100328
_08100200:
	lsls r0, r0, #0x02
	ldr r1, _0810020C @ =0x08100210
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0810020C: .4byte 0x08100210
	.byte 0x48, 0x02, 0x10, 0x08, 0xAA, 0x02, 0x10, 0x08, 0x5E, 0x02, 0x10, 0x08, 0x28, 0x03, 0x10, 0x08
	.byte 0x28, 0x03, 0x10, 0x08, 0x28, 0x03, 0x10, 0x08, 0x28, 0x03, 0x10, 0x08, 0x28, 0x03, 0x10, 0x08
	.byte 0x28, 0x03, 0x10, 0x08, 0x28, 0x03, 0x10, 0x08, 0x6E, 0x02, 0x10, 0x08, 0x80, 0x02, 0x10, 0x08
	.byte 0x24, 0x03, 0x10, 0x08, 0x24, 0x03, 0x10, 0x08, 0x19, 0x1C, 0xF6, 0x31, 0x18, 0x1C, 0xF8, 0x30
	.byte 0x00, 0x22, 0x89, 0x5E, 0x00, 0x23, 0xC0, 0x5E, 0x81, 0x42, 0x65, 0xDA, 0x6D, 0xE0, 0x38, 0x1C
	.byte 0x76, 0x30, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x06, 0x28, 0x5D, 0xD1, 0x65, 0xE0, 0x18, 0x1C
	.byte 0xFC, 0x30, 0x19, 0x1C, 0xFE, 0x31, 0x00, 0x24, 0x02, 0x5F, 0x00, 0x23, 0xC8, 0x5E, 0x11, 0xE0
	.byte 0x19, 0x1C, 0xF6, 0x31, 0x18, 0x1C, 0xF8, 0x30, 0x00, 0x24, 0x09, 0x5F, 0x00, 0x22, 0x80, 0x5E
	.byte 0x81, 0x42, 0x52, 0xDB, 0x18, 0x1C, 0xFC, 0x30, 0x19, 0x1C, 0xFE, 0x31, 0x00, 0x23, 0xC2, 0x5E
	.byte 0x00, 0x24, 0x08, 0x5F, 0x82, 0x42, 0x3F, 0xDA, 0x47, 0xE0, 0x96, 0x21, 0x49, 0x00, 0x58, 0x18
	.byte 0x00, 0x78, 0x13, 0x28, 0x14, 0xD0, 0x14, 0x28, 0x1E, 0xD0, 0x8F, 0x22, 0x52, 0x00, 0x98, 0x18
	.byte 0x01, 0x88, 0xC0, 0x20, 0x00, 0x01, 0x08, 0x40, 0x00, 0x28, 0x20, 0xD0, 0x90, 0x24, 0x64, 0x00
	.byte 0x18, 0x19, 0x00, 0x68, 0xE0, 0x21, 0x89, 0x02, 0x08, 0x40, 0x00, 0x28, 0x17, 0xD0, 0x14, 0xE0
	.byte 0x8F, 0x21, 0x49, 0x00, 0x58, 0x18, 0x01, 0x88, 0x80, 0x20, 0x00, 0x01, 0x08, 0x40, 0x00, 0x28
	.byte 0x0D, 0xD1, 0x01, 0x22, 0x90, 0x46, 0x0A, 0xE0, 0x8F, 0x24, 0x64, 0x00, 0x18, 0x19, 0x01, 0x88
	.byte 0x80, 0x20, 0xC0, 0x00, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x80, 0x46, 0x8F, 0x21
	.byte 0x49, 0x00, 0x58, 0x18, 0x01, 0x88, 0x02, 0x48, 0x08, 0x40, 0x00, 0x28, 0x04, 0xD0, 0x0C, 0xE0
	.byte 0xAB, 0xF1, 0x00, 0x00, 0x01, 0x22, 0x90, 0x46
_08100328:
	mov r3, r8
	cmp r3, #0x00
	bne _0810033A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	b _08100762
_0810033A:
	ldr r0, [r6, #0x00]
	ldr r4, _0810042C @ =0x0000034E
	adds r1, r0, r4
	adds r1, r1, r5
	ldr r2, _08100430 @ =0x00000349
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	lsls r2, r5, #0x01
	adds r2, r2, r5
	ldr r3, _08100434 @ =0x000002CA
	adds r0, r1, r3
	adds r0, r0, r2
	subs r4, #0x8A
_08100358:
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, #0x06
	adds r1, r0, r3
	adds r1, r1, r2
	adds r4, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
_0810036E:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0810038E
	ldr r0, [r6, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r1, [r7, #0x28]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
_0810038E:
	ldr r2, [r6, #0x00]
	ldr r3, _08100438 @ =0x00000346
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810044C
	ldr r0, _0810043C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08100440 @ =0x00008E58
	adds r0, r0, r4
	ldr r1, _08100444 @ =0x08106EB1
	str r1, [r0, #0x00]
	ldr r0, _08100448 @ =0x08106EE9
	mov r1, r9
	str r0, [r1, #0x04]
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r1, [r2, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	b _081004E6
	.byte 0x00, 0x00
_0810042C: .4byte 0x0000034E
_08100430: .4byte 0x00000349
_08100434: .4byte 0x000002CA
_08100438: .4byte 0x00000346
_0810043C: .4byte 0x03000FDC
_08100440: .4byte 0x00008E58
_08100444: .4byte sub_8106EB0
_08100448: .4byte sub_8106EE8
_0810044C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _08100510 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08100514 @ =0x00008E58
	adds r0, r0, r3
	ldr r1, _08100518 @ =0x08106E1D
	str r1, [r0, #0x00]
	ldr r0, _0810051C @ =0x08106EE9
	mov r4, r9
	str r0, [r4, #0x04]
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r1, r1, r0
_081004E6:
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	bl sub_8083E1C
	b _08100762
	.byte 0x00, 0x00
_08100510: .4byte 0x03000FDC
_08100514: .4byte 0x00008E58
_08100518: .4byte sub_8106E1C
_0810051C: .4byte sub_8106EE8
_08100520:
	bl sub_810D57C
	movs r0, #0x00
	bl sub_8109F4C
	adds r2, r0, #0x0
	ldr r0, _081005AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _081005B0 @ =0x000002BF
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08100540
	b _08100762
_08100540:
	cmp r2, #0x00
	blt _08100554
	ldr r0, _081005B4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08100554
	b _08100762
_08100554:
	adds r4, r5, #0x0
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100582
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100582
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100582:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	adds r4, #0x77
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r5, _081005AC @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r6, _081005B8 @ =0x00000346
	adds r0, r2, r6
	ldrb r3, [r0, #0x00]
	cmp r3, #0x01
	bne _081005A0
	b _081006AC
_081005A0:
	cmp r3, #0x01
	bgt _081005BC
	cmp r3, #0x00
	beq _081005C4
	b _08100742
	.byte 0x00, 0x00
_081005AC: .4byte 0x03000FD8
_081005B0: .4byte 0x000002BF
_081005B4: .4byte 0x0300034C
_081005B8: .4byte 0x00000346
_081005BC:
	cmp r3, #0x02
	bne _081005C2
	b _08100700
_081005C2:
	b _08100742
_081005C4:
	ldr r6, _08100618 @ =0x0000033F
	adds r0, r2, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08100634
	ldr r0, _0810061C @ =0x00000343
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bl sub_81069B4
	movs r0, #0x00
	bl sub_810AC60
	bl sub_810D00C
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r2, _08100620 @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100624 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08100628 @ =0x00008E58
	adds r0, r0, r4
	ldr r1, _0810062C @ =0x080FECE9
	str r1, [r0, #0x00]
	ldr r0, _08100630 @ =0x08106EE9
	mov r6, r9
	str r0, [r6, #0x04]
	b _08100742
	.byte 0x00, 0x00
_08100618: .4byte 0x0000033F
_0810061C: .4byte 0x00000343
_08100620: .4byte 0x0000033E
_08100624: .4byte 0x03000FDC
_08100628: .4byte 0x00008E58
_0810062C: .4byte sub_80FECE8
_08100630: .4byte sub_8106EE8
_08100634:
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x00]
	mov r0, r8
	str r3, [r0, #0x34]
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r5, #0x00]
	ldr r1, _08100690 @ =0x00000347
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _08100694 @ =0x00000342
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r3, _08100698 @ =0x0000033E
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	movs r4, #0xC7
	lsls r4, r4, #0x02
	adds r1, r1, r4
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _0810069C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r6, _081006A0 @ =0x00008E58
	adds r0, r0, r6
	ldr r1, _081006A4 @ =0x080FE9A1
	str r1, [r0, #0x00]
	ldr r0, _081006A8 @ =0x08106EE9
	mov r1, r9
	str r0, [r1, #0x04]
	b _08100742
_08100690: .4byte 0x00000347
_08100694: .4byte 0x00000342
_08100698: .4byte 0x0000033E
_0810069C: .4byte 0x03000FDC
_081006A0: .4byte 0x00008E58
_081006A4: .4byte sub_80FE9A0
_081006A8: .4byte sub_8106EE8
_081006AC:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x03
	bl sub_81069B4
	movs r0, #0x01
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r4, _081006F0 @ =0x0000033E
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	movs r6, #0xC7
	lsls r6, r6, #0x02
	adds r1, r1, r6
	movs r2, #0x00
	bl sub_810D524
	bl sub_810D11C
	ldr r0, _081006F4 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081006F8 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _081006FC @ =0x080FEF15
	b _0810073A
	.byte 0x00, 0x00
_081006F0: .4byte 0x0000033E
_081006F4: .4byte 0x03000FDC
_081006F8: .4byte 0x00008E58
_081006FC: .4byte sub_80FEF14
_08100700:
	ldr r3, _08100770 @ =0x00000345
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r5, #0x00]
	ldr r4, _08100774 @ =0x0000033E
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	movs r6, #0xC7
	lsls r6, r6, #0x02
	adds r1, r1, r6
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100778 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0810077C @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _08100780 @ =0x080FF411
_0810073A:
	str r1, [r0, #0x00]
	ldr r0, _08100784 @ =0x08106EE9
	mov r2, r9
	str r0, [r2, #0x04]
_08100742:
	ldr r0, _08100788 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _0810078C @ =0x00000342
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08100758
	bl sub_810B754
_08100758:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_08100762:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100770: .4byte 0x00000345
_08100774: .4byte 0x0000033E
_08100778: .4byte 0x03000FDC
_0810077C: .4byte 0x00008E58
_08100780: .4byte sub_80FF410
_08100784: .4byte sub_8106EE8
_08100788: .4byte 0x03000FD8
_0810078C: .4byte 0x00000342
	thumb_func_start sub_8100790
sub_8100790:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r4, _081007F8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x7C]
	ldr r6, [r5, #0x34]
	ldr r1, _081007FC @ =0x000002BD
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_810C414
	ldr r0, [r5, #0x34]
	cmp r6, r0
	beq _08100880
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _08100808
	ldr r1, _08100800 @ =0x083BA614
	ldr r0, _08100804 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100872
	bl sub_807FB64
	b _08100872
	.byte 0x00, 0x00
_081007F8: .4byte 0x03000FD8
_081007FC: .4byte 0x000002BD
_08100800: .4byte 0x083BA614
_08100804: .4byte 0x0300034C
_08100808:
	ldr r1, _081008B8 @ =0x083BA600
	ldr r0, _081008BC @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	bl sub_810CF84
	ldr r0, [r6, #0x28]
	movs r1, #0x11
	bl sub_810A78C
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100872
	bl sub_807BC90
	ldr r0, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x2A]
	adds r0, #0x01
	strh r0, [r1, #0x2A]
_08100872:
	bl sub_80FFB70
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08100880:
	cmp r6, #0x00
	bne _081008C0
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _0810089E
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810089E:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _081008F0
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081008F0
	.byte 0x00, 0x00
_081008B8: .4byte 0x083BA600
_081008BC: .4byte 0x0300034C
_081008C0:
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x01
	bne _081008F0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _081008F0
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081008F0:
	ldr r2, _081009C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r1, _081009C8 @ =0x000002BE
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08100906
	b _08100AA8
_08100906:
	cmp r6, #0x00
	bne _0810090C
	b _08100AA8
_0810090C:
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r2, [r0, r4]
	mvns r2, r2
	ldr r1, _081009CC @ =0x0000034E
	adds r0, r3, r1
	adds r0, r0, r2
	ldr r4, _081009D0 @ =0x00000349
	adds r1, r3, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	lsls r3, r2, #0x01
	adds r3, r3, r2
	ldr r2, _081009D4 @ =0x000002CA
	adds r0, r1, r2
	adds r0, r0, r3
	subs r4, #0x85
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, #0x06
	adds r1, r0, r2
	adds r1, r1, r3
	ldr r3, _081009D8 @ =0x000002C7
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r4, #0xA4
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100960
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
_08100960:
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r3, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08100990
	adds r1, r3, #0x0
	adds r1, #0xF6
	adds r0, r3, #0x0
	adds r0, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _081009DC
_08100990:
	cmp r2, #0x00
	beq _081009B6
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081009B6
	adds r1, r2, #0x0
	adds r1, #0xF6
	adds r0, r2, #0x0
	adds r0, #0xF8
	movs r4, #0x00
	ldsh r1, [r1, r4]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	blt _081009DC
_081009B6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	b _08100B94
	.byte 0x00, 0x00
_081009C4: .4byte 0x03000FD8
_081009C8: .4byte 0x000002BE
_081009CC: .4byte 0x0000034E
_081009D0: .4byte 0x00000349
_081009D4: .4byte 0x000002CA
_081009D8: .4byte 0x000002C7
_081009DC:
	ldr r0, _08100A94 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08100A98 @ =0x00008E58
	adds r0, r0, r3
	ldr r1, _08100A9C @ =0x08106EB1
	str r1, [r0, #0x00]
	ldr r0, _08100AA0 @ =0x08106EE9
	str r0, [r7, #0x04]
	ldr r5, _08100AA4 @ =0x03000FD8
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	bl sub_8083E1C
	b _08100B94
_08100A94: .4byte 0x03000FDC
_08100A98: .4byte 0x00008E58
_08100A9C: .4byte sub_8106EB0
_08100AA0: .4byte sub_8106EE8
_08100AA4: .4byte 0x03000FD8
_08100AA8:
	bl sub_810D57C
	movs r0, #0x00
	bl sub_8109F4C
	adds r2, r0, #0x0
	ldr r6, _08100B9C @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, _08100BA0 @ =0x000002BF
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08100B94
	cmp r2, #0x00
	blt _08100ADC
	ldr r0, _08100BA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08100B94
_08100ADC:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100AF6
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
_08100AF6:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100B22
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100B22
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100B22:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r4, _08100B9C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, _08100BA8 @ =0x00000345
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r4, #0x00]
	ldr r2, _08100BAC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100BB0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08100BB4 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _08100BB8 @ =0x080FF411
	str r1, [r0, #0x00]
	ldr r0, _08100BBC @ =0x08106EE9
	str r0, [r7, #0x04]
	ldr r0, [r4, #0x00]
	ldr r2, _08100BC0 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08100B8A
	bl sub_810B754
_08100B8A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_08100B94:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100B9C: .4byte 0x03000FD8
_08100BA0: .4byte 0x000002BF
_08100BA4: .4byte 0x0300034C
_08100BA8: .4byte 0x00000345
_08100BAC: .4byte 0x0000033E
_08100BB0: .4byte 0x03000FDC
_08100BB4: .4byte 0x00008E58
_08100BB8: .4byte sub_80FF410
_08100BBC: .4byte sub_8106EE8
_08100BC0: .4byte 0x00000342
	thumb_func_start sub_8100BC4
sub_8100BC4:
	push {r4, r5, r6, lr}
	movs r5, #0x00
	ldr r0, _08100CA4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _08100BF8
_08100BD2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100BF2
	adds r0, r4, #0x0
	bl sub_807D77C
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	movs r0, #0x01
	lsls r0, r1
	orrs r5, r0
_08100BF2:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100BD2
_08100BF8:
	ldr r0, _08100CA4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _08100CD2
_08100C02:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08100CA8
	adds r0, r4, #0x0
	adds r0, #0x78
	ldrb r1, [r0, #0x00]
	movs r2, #0x10
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08100CCC
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08100C3C
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08100C3C
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100C3C
	adds r0, r4, #0x0
	bl sub_8085A6C
_08100C3C:
	ldr r1, [r4, #0x4C]
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r2, [r4, #0x4C]
	cmp r2, #0x00
	bne _08100CCC
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08100C5E
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
_08100C5E:
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r6, #0x21
	negs r6, r6
	adds r1, r6, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, #0x04
	strh r2, [r0, #0x00]
	adds r0, #0x02
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x22
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	subs r0, #0x20
	strh r2, [r0, #0x00]
	adds r0, #0x02
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	b _08100CCC
	.byte 0x00, 0x00
_08100CA4: .4byte 0x03000FD8
_08100CA8:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08100CCC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08100CCC
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100CCC
	adds r0, r4, #0x0
	bl sub_8085A6C
_08100CCC:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100C02
_08100CD2:
	ldr r1, _08100D14 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, [r0, #0x78]
	adds r2, r1, #0x0
	cmp r4, #0x00
	beq _08100CFC
	movs r3, #0x01
_08100CE0:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08100CF6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r3, #0x0
	lsls r0, r1
	orrs r5, r0
_08100CF6:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100CE0
_08100CFC:
	ldr r2, [r2, #0x00]
	lsls r3, r5, #0x04
	ldrb r1, [r2, #0x09]
	movs r0, #0x0F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x09]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08100D14: .4byte 0x03000FD8
	thumb_func_start sub_8100D18
sub_8100D18:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08100D2C
	b _08100E48
_08100D2C:
	ldr r6, _08100DCC @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08100D3C
	b _08100E48
_08100D3C:
	ldr r4, [r2, #0x7C]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x6C]
	ldr r1, [r0, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	adds r4, #0x7F
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r4, [r6, #0x00]
	ldr r1, _08100DD0 @ =0x00000346
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100DFC
	movs r2, #0xD2
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x03
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0x01
	lsls r1, r0, #0x02
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	ldrb r2, [r4, #0x08]
	movs r1, #0x10
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x08]
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xFC
	movs r5, #0x00
	ldsh r3, [r0, r5]
	ldr r2, [r6, #0x00]
	ldr r1, _08100DD4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	bhi _08100DD8
	movs r5, #0xD2
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r5, #0xDC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	b _08100DF2
	.byte 0x00, 0x00
_08100DCC: .4byte 0x03000FD8
_08100DD0: .4byte 0x00000346
_08100DD4: .4byte 0x000002BF
_08100DD8:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r5, #0xDC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
_08100DF2:
	subs r1, r3, r0
	adds r0, r4, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	b _08100E3C
_08100DFC:
	ldr r1, _08100E54 @ =0x00000347
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r1, #0x01
	movs r7, #0x0F
	ands r1, r7
	ldrb r2, [r4, #0x08]
	movs r5, #0x10
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x08]
	ldr r3, [r6, #0x00]
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08100E3C
	ldrb r2, [r3, #0x08]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1A
	ands r1, r7
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x08]
_08100E3C:
	ldr r0, _08100E58 @ =0x08100E5D
	mov r5, r8
	str r0, [r5, #0x04]
	movs r0, #0x08
	bl sub_80F75B4
_08100E48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100E54: .4byte 0x00000347
_08100E58: .4byte sub_8100E5C
	thumb_func_start sub_8100E5C
sub_8100E5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	bl sub_8100BC4
	mov r8, r0
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	bne _08100E84
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_08100E84:
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08100F28 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08100E98
	b _08101138
_08100E98:
	movs r0, #0x04
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	bne _08100EA4
	b _08101138
_08100EA4:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08100EB2
	b _08101138
_08100EB2:
	subs r1, #0x87
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08100ED8
	ldr r0, _08100F2C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08100ED8
	ldr r0, _08100F30 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08100ED8:
	ldr r7, _08100F24 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	ldr r4, [r2, #0x70]
	cmp r4, #0x00
	beq _08100EF6
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08100EF6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08100F38
_08100EF6:
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08100F34 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08100F0A
	b _0810100E
_08100F0A:
	ldr r0, _08100F2C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810100E
	ldr r0, _08100F30 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0810100E
	.byte 0x00, 0x00
_08100F24: .4byte 0x03000FD8
_08100F28: .4byte 0x000002BF
_08100F2C: .4byte 0x0300034C
_08100F30: .4byte 0x0000015F
_08100F34: .4byte 0x000002C1
_08100F38:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	bne _0810100E
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r1, [r5, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r0, _08100F7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0810100E
	ldr r1, _08100F80 @ =0x000002F9
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08100FC4
	cmp r0, #0x02
	bgt _08100F84
	cmp r0, #0x01
	beq _08100F88
	b _0810100E
	.byte 0x00, 0x00
_08100F7C: .4byte 0x0300034C
_08100F80: .4byte 0x000002F9
_08100F84:
	cmp r0, #0x03
	bne _0810100E
_08100F88:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r0, _08100FC0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08100FB4
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08100FB4:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_808C994
	b _0810100E
	.byte 0x00, 0x00
_08100FC0: .4byte 0x03000FD8
_08100FC4:
	ldr r0, _08101058 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810100E
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08101002
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x08]
_08101002:
	adds r0, r4, #0x0
	adds r0, #0xB0
	str r6, [r0, #0x00]
	subs r0, #0xA8
	bl sub_808CC08
_0810100E:
	ldr r7, _0810105C @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r4, [r3, #0x74]
	mov r12, r7
	cmp r4, #0x00
	beq _0810102E
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _0810102E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	ands r2, r1
	cmp r2, #0x02
	beq _0810106C
_0810102E:
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r1, _08101060 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r0, _08101064 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08101138
	ldr r0, _08101068 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08101138
_08101058: .4byte 0x03000FC0
_0810105C: .4byte 0x03000FD8
_08101060: .4byte 0x000002C1
_08101064: .4byte 0x0300034C
_08101068: .4byte 0x0000015F
_0810106C:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	bne _08101138
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r0, _081010AC @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r2, r0
	cmp r2, #0x00
	beq _08101138
	ldr r1, _081010B0 @ =0x000002F9
	adds r0, r3, r1
	ldrb r5, [r0, #0x00]
	cmp r5, #0x02
	beq _081010EE
	cmp r5, #0x02
	bgt _081010B4
	cmp r5, #0x01
	beq _081010B8
	b _08101138
	.byte 0x00, 0x00
_081010AC: .4byte 0x0300034C
_081010B0: .4byte 0x000002F9
_081010B4:
	cmp r5, #0x03
	bne _08101138
_081010B8:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	mov r0, r12
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _081010E4
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_081010E4:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_808C994
	b _08101138
_081010EE:
	ldr r0, _08101168 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08101138
	ldrh r1, [r6, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0810112C
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x08]
_0810112C:
	adds r0, r4, #0x0
	adds r0, #0xB0
	str r5, [r0, #0x00]
	subs r0, #0xA8
	bl sub_808CC08
_08101138:
	mov r0, r8
	cmp r0, #0x00
	bne _0810117E
	ldr r3, _0810116C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r0, _08101170 @ =0x000002BF
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, _08101174 @ =0x000002D6
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08101178
	mov r0, r9
	bl sub_810118C
	b _0810117E
	.byte 0x00, 0x00
_08101168: .4byte 0x03000FC0
_0810116C: .4byte 0x03000FD8
_08101170: .4byte 0x000002BF
_08101174: .4byte 0x000002D6
_08101178:
	mov r0, r9
	bl sub_810124C
_0810117E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810118C
sub_810118C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _081011C0 @ =0x0810118D
	str r0, [r4, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810123E
	ldr r2, _081011C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r1, [r3, #0x7C]
	movs r0, #0x00
	strh r0, [r4, #0x12]
	ldr r5, _081011C8 @ =0x0000012B
	adds r0, r1, r5
	ldrb r1, [r0, #0x00]
	adds r5, r2, #0x0
	cmp r1, #0x05
	beq _081011D0
	cmp r1, #0x05
	bgt _081011CC
	cmp r1, #0x04
	beq _081011D0
	b _081011E0
	.byte 0x00, 0x00
_081011C0: .4byte sub_810118C
_081011C4: .4byte 0x03000FD8
_081011C8: .4byte 0x0000012B
_081011CC:
	cmp r1, #0x06
	bne _081011E0
_081011D0:
	ldr r1, _08101218 @ =0x000002D6
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x0A
	bl __divsi3
	strh r0, [r4, #0x12]
_081011E0:
	movs r1, #0x12
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bgt _081011EC
	movs r0, #0x01
	strh r0, [r4, #0x12]
_081011EC:
	movs r1, #0x00
	movs r0, #0x01
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x00]
	ldr r2, _08101218 @ =0x000002D6
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r0, _0810121C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r5, _08101220 @ =0x00008E58
	adds r0, r0, r5
	ldr r1, _08101224 @ =0x0810124D
	str r1, [r0, #0x00]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	beq _08101228
	movs r1, #0x0E
	cmp r0, #0x02
	bne _0810122A
	movs r1, #0x08
	b _0810122A
_08101218: .4byte 0x000002D6
_0810121C: .4byte 0x03000FDC
_08101220: .4byte 0x00008E58
_08101224: .4byte sub_810124C
_08101228:
	movs r1, #0x00
_0810122A:
	strh r1, [r4, #0x16]
	ldr r0, _08101244 @ =0x08107151
	str r0, [r4, #0x04]
	ldr r1, _08101248 @ =0x084FCE8C
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082898
_0810123E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101244: .4byte sub_8107150
_08101248: .4byte 0x084FCE8C
	thumb_func_start sub_810124C
sub_810124C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08101288 @ =0x0810124D
	str r0, [r5, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08101260
	b _08101362
_08101260:
	ldr r0, _0810128C @ =0x0810136D
	str r0, [r5, #0x04]
	ldr r0, _08101290 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _08101294
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_80F7590
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl sub_80F7538
	b _08101354
	.byte 0x00, 0x00
_08101288: .4byte sub_810124C
_0810128C: .4byte sub_810136C
_08101290: .4byte 0x03000FD8
_08101294:
	ldrb r1, [r2, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08101348
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r4, #0x00
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	mov r0, r12
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	bl sub_807EF54
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_081012F6:
	cmp r4, #0x00
	beq _08101328
	ldr r2, _0810131C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	subs r1, r4, #0x1
	ldr r3, _08101320 @ =0x0000033F
	adds r0, r0, r3
	strb r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	negs r0, r4
	adds r0, #0x02
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r0, _08101324 @ =0x081068A9
	str r0, [r5, #0x04]
	b _08101336
	.byte 0x00, 0x00
_0810131C: .4byte 0x03000FD8
_08101320: .4byte 0x0000033F
_08101324: .4byte sub_81068A8
_08101328:
	ldr r0, _08101344 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
_08101336:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
	b _08101354
_08101344: .4byte 0x03000FD8
_08101348:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
_08101354:
	ldr r0, _08101368 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_08101362:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101368: .4byte 0x03000FD8
	thumb_func_start sub_810136C
sub_810136C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _081013A0 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x7C]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	bl sub_80F8DA4
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08101466
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _0810139A
	ldrb r0, [r1, #0x05]
	cmp r0, #0x00
	bne _081013A8
_0810139A:
	ldr r0, _081013A4 @ =0x08101471
	str r0, [r4, #0x04]
	b _08101466
_081013A0: .4byte 0x03000FD8
_081013A4: .4byte sub_8101470
_081013A8:
	ldr r0, _0810146C @ =0x08106D9D
	str r0, [r4, #0x04]
	movs r4, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r5, #0x06
_081013B4:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _081013D8
	cmp r1, #0x00
	beq _081013D8
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_081013D8:
	adds r4, #0x01
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _081013FE
	cmp r1, #0x00
	beq _081013FE
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_081013FE:
	adds r4, #0x01
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _08101424
	cmp r1, #0x00
	beq _08101424
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_08101424:
	adds r4, #0x01
	ldr r2, [r3, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _0810144A
	cmp r1, #0x00
	beq _0810144A
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_0810144A:
	adds r3, #0x10
	adds r4, #0x01
	cmp r4, #0x07
	ble _081013B4
_08101452:
	cmp r4, #0x08
	bne _0810145E
	movs r0, #0x80
	lsls r0, r0, #0x0D
	bl sub_80F7538
_0810145E:
	movs r0, #0x80
	lsls r0, r0, #0x13
	bl sub_80F7538
_08101466:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810146C: .4byte sub_8106D9C
	thumb_func_start sub_8101470
sub_8101470:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08101512
	ldr r2, _081014D4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0B]
	movs r0, #0x04
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08101512
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081014E8
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081014E8
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
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _081014E8
	ldr r0, _081014D8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081014DC @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _081014E0 @ =0x08101471
	str r1, [r0, #0x00]
	ldr r0, _081014E4 @ =0x080FDA35
	b _08101510
	.byte 0x00, 0x00
_081014D4: .4byte 0x03000FD8
_081014D8: .4byte 0x03000FDC
_081014DC: .4byte 0x00008E58
_081014E0: .4byte sub_8101470
_081014E4: .4byte sub_80FDA34
_081014E8:
	ldr r0, [r5, #0x00]
	ldr r2, _08101518 @ =0x00000346
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08101504
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
_08101504:
	bl sub_810CCB0
	adds r0, r4, #0x0
	bl sub_80FCC78
	ldr r0, _0810151C @ =0x08101521
_08101510:
	str r0, [r4, #0x04]
_08101512:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101518: .4byte 0x00000346
_0810151C: .4byte sub_8101520
	thumb_func_start sub_8101520
sub_8101520:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r3, _081015C0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	ldr r6, _081015C4 @ =0x03000FF4
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r5, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08101564
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_08101564:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081015A6
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r5, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _081015A6
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_081015A6:
	ldr r3, [r3, #0x00]
	ldrb r2, [r3, #0x04]
	cmp r2, #0x00
	beq _081015B4
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081015D0
_081015B4:
	ldr r1, _081015C8 @ =0x08106D21
	cmp r2, #0x00
	beq _081015D2
	ldr r1, _081015CC @ =0x08106D55
	b _081015D2
	.byte 0x00, 0x00
_081015C0: .4byte 0x03000FD8
_081015C4: .4byte 0x03000FF4
_081015C8: .4byte sub_8106D20
_081015CC: .4byte sub_8106D54
_081015D0:
	ldr r1, _081015E0 @ =0x08106C65
_081015D2:
	adds r0, r7, #0x0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081015E0: .4byte sub_8106C64
	thumb_func_start sub_81015E4
sub_81015E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r2, #0x00
	str r2, [sp, #0x008]
	mov r9, r2
	ldr r1, _081016B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r3, #0x00
	beq _08101636
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101636
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	adds r1, #0x0E
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	mov r9, r0
_08101636:
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0810166A
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810166A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r1, r3, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x008]
_0810166A:
	ldr r0, [r4, #0x00]
	ldr r3, _081016C0 @ =0x000002BE
	adds r0, r0, r3
	ldrb r2, [r0, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x00
	mov r0, r10
	cmp r0, #0x0A
	bne _08101684
	movs r1, #0x01
_08101684:
	ldr r2, [sp, #0x004]
	cmp r2, #0x0A
	bne _0810168C
	adds r1, #0x01
_0810168C:
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r7, r0, #0x02
	movs r0, #0x00
	ldr r3, [sp, #0x008]
	cmp r3, #0x20
	bne _0810169C
	movs r0, #0x01
_0810169C:
	movs r2, #0x00
	mov r1, r9
	cmp r1, #0x20
	bne _081016A6
	movs r2, #0x01
_081016A6:
	adds r6, r0, #0x0
	orrs r6, r2
	movs r2, #0x00
	mov r8, r2
	ldr r0, [r4, #0x00]
	ldr r3, _081016C4 @ =0x000003A6
	adds r0, r0, r3
	b _08101760
	.byte 0x00, 0x00
_081016B8: .4byte 0x03000FD8
_081016BC: .4byte 0x0000012D
_081016C0: .4byte 0x000002BE
_081016C4: .4byte 0x000003A6
_081016C8:
	ldr r0, _08101868 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r4, r8
	lsls r1, r4, #0x01
	ldr r3, _0810186C @ =0x00008E3E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x2C
	muls r1, r0
	ldr r0, _08101870 @ =0x08500A98
	adds r5, r1, r0
	ldr r4, _08101874 @ =0x00008E46
	adds r2, r2, r4
	add r2, r8
	ldrb r4, [r2, #0x00]
	cmp r4, #0x00
	ble _08101754
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08101726
	cmp r1, #0x03
	bge _08101716
	cmp r1, #0x02
	bge _0810170A
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_0810170A:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_08101716:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
	cmp r4, #0x00
	ble _08101754
_08101726:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x04
	cmp r4, #0x00
	bgt _08101726
_08101754:
	movs r0, #0x01
	add r8, r0
	ldr r0, _08101878 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _0810187C @ =0x000003A6
	adds r0, r0, r1
_08101760:
	ldrb r0, [r0, #0x00]
	cmp r8, r0
	blt _081016C8
	movs r2, #0x00
	mov r8, r2
_0810176A:
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _081017B4
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081017B4
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_081017B4:
	mov r1, r8
	adds r1, #0x01
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08101800
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08101800
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_08101800:
	movs r0, #0x02
	add r8, r0
	mov r1, r8
	cmp r1, #0x05
	ble _0810176A
	movs r0, #0x00
	mov r2, r10
	cmp r2, #0x17
	bne _08101814
	movs r0, #0x01
_08101814:
	adds r4, r0, #0x0
	ldr r3, [sp, #0x004]
	cmp r3, #0x17
	bne _0810181E
	adds r4, #0x01
_0810181E:
	cmp r4, #0x00
	beq _08101860
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0810184A
	cmp r1, #0x03
	bge _08101840
	cmp r1, #0x02
	bge _0810183A
	bl sub_8106928
	subs r4, #0x01
_0810183A:
	bl sub_8106928
	subs r4, #0x01
_08101840:
	bl sub_8106928
	subs r4, #0x01
	cmp r4, #0x00
	beq _08101860
_0810184A:
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	subs r4, #0x04
	cmp r4, #0x00
	bne _0810184A
_08101860:
	movs r4, #0x00
	mov r8, r4
	b _081018AA
	.byte 0x00, 0x00
_08101868: .4byte 0x03000FDC
_0810186C: .4byte 0x00008E3E
_08101870: .4byte 0x08500A98
_08101874: .4byte 0x00008E46
_08101878: .4byte 0x03000FD8
_0810187C: .4byte 0x000003A6
_08101880:
	ldr r0, _08101910 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x01
	ldr r4, _08101914 @ =0x00008E4E
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	lsrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r1, r3
	ldr r3, _08101918 @ =0x00008E4A
	adds r2, r2, r3
	add r2, r8
	ldrb r2, [r2, #0x00]
	bl sub_8122E30
	movs r4, #0x01
	add r8, r4
_081018AA:
	ldr r0, _0810191C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101920 @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r8, r0
	blt _08101880
	ldr r2, [sp, #0x008]
	cmp r2, #0x1A
	beq _081018CA
	ldr r4, _0810191C @ =0x03000FD8
	mov r3, r9
	cmp r3, #0x1A
	bne _081018D6
_081018CA:
	ldr r2, _0810191C @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x01
	strh r0, [r1, #0x18]
	adds r4, r2, #0x0
_081018D6:
	ldr r2, [r4, #0x00]
	ldr r4, _08101924 @ =0x000002C1
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081018F8
	ldr r0, [sp, #0x008]
	cmp r0, #0x1B
	beq _081018F2
	mov r1, r9
	cmp r1, #0x1B
	bne _081018F8
_081018F2:
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #0x01
	strh r0, [r2, #0x16]
_081018F8:
	ldr r0, _08101928 @ =0x081019A9
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101910: .4byte 0x03000FDC
_08101914: .4byte 0x00008E4E
_08101918: .4byte 0x00008E4A
_0810191C: .4byte 0x03000FD8
_08101920: .4byte 0x000002BE
_08101924: .4byte 0x000002C1
_08101928: .4byte sub_81019A8
	thumb_func_start sub_810192C
sub_810192C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8100BC4
	adds r2, r0, #0x0
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	bne _0810194C
	ldr r0, _08101994 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_0810194C:
	cmp r2, #0x00
	beq _0810199C
	ldr r1, _08101994 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r3, r1, #0x0
	cmp r2, #0x00
	beq _08101972
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _08101972
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
_08101972:
	ldr r0, [r3, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _081019A2
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _081019A2
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	b _081019A2
	.byte 0x00, 0x00
_08101994: .4byte 0x03000FD8
_08101998: .4byte 0x0000F3FF
_0810199C:
	adds r0, r4, #0x0
	bl sub_81054D4
_081019A2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81019A8
sub_81019A8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r0, _081019D8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _081019DC
	movs r1, #0x04
	ands r1, r0
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x000]
	b _081019DE
	.byte 0x00, 0x00
_081019D8: .4byte 0x03000FD8
_081019DC:
	str r1, [sp, #0x000]
_081019DE:
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x20
	movs r3, #0xFF
	bl sub_807F708
	ldr r0, _08101A4C @ =0x084FB588
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, _08101A50 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, _08101A54 @ =0x06008000
	movs r3, #0xE4
	lsls r3, r3, #0x04
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08101A58 @ =0x00007002
	bl sub_8082AAC
	ldr r6, _08101A5C @ =0x00002003
	adds r0, r6, #0x0
	bl sub_8082AAC
	ldr r5, _08101A60 @ =0x00002050
	adds r0, r5, #0x0
	bl sub_8082AAC
	ldr r4, _08101A64 @ =0x0000401F
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r6, #0x0
	bl sub_8082A6C
	adds r0, r5, #0x0
	bl sub_8082A6C
	adds r0, r4, #0x0
	bl sub_8082A6C
	movs r0, #0x0C
	strh r0, [r7, #0x10]
	ldr r0, _08101A68 @ =0x08106C11
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101A4C: .4byte 0x084FB588
_08101A50: .4byte 0x089F808C
_08101A54: .4byte 0x06008000
_08101A58: .4byte 0x00007002
_08101A5C: .4byte 0x00002003
_08101A60: .4byte 0x00002050
_08101A64: .4byte 0x0000401F
_08101A68: .4byte sub_8106C10
	thumb_func_start sub_8101A6C
sub_8101A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x010]
	movs r6, #0x00
	ldr r5, _08101AE0 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101AEA
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101AEA
	ldr r0, [r4, #0x18]
	ldr r1, _08101AE4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101AE8
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101AEA
	.byte 0x00, 0x00
_08101AE0: .4byte 0x03000FD8
_08101AE4: .4byte 0xFFFFFD00
_08101AE8:
	movs r6, #0x01
_08101AEA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101B52
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101B52
	ldr r0, [r4, #0x18]
	ldr r1, _08101B4C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101B50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101B52
	.byte 0x00, 0x00
_08101B4C: .4byte 0xFFFFFD00
_08101B50:
	movs r6, #0x01
_08101B52:
	cmp r6, #0x00
	beq _08101B58
	b _08101ECC
_08101B58:
	ldr r5, _08101BF4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08101C00
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101BAA
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101BAA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
	b _08101C8E
_08101BF4: .4byte 0x03000FD8
_08101BF8: .4byte 0x084FB588
_08101BFC: .4byte 0x089F808C
_08101C00:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101C50
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101C48 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101C4C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
	b _08101C8E
_08101C48: .4byte 0x084FB588
_08101C4C: .4byte 0x089F808C
_08101C50:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101E1C @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101E20 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101C8E:
	movs r7, #0x03
	ldr r0, _08101E24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101E28 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101CB0
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	movs r1, #0x0B
	muls r0, r1
	adds r1, r0, #0x1
	asrs r0, r1, #0x03
	adds r7, r0, #0x2
_08101CB0:
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r8, r3
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x10
	mov r9, r1
	str r1, [sp, #0x000]
	subs r1, r7, #0x1
	str r1, [sp, #0x004]
	ldr r5, _08101E1C @ =0x084FB588
	adds r5, #0x40
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	ldr r4, _08101E20 @ =0x089F808C
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x05
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x4
	mov r1, r9
	str r1, [sp, #0x000]
	movs r6, #0x01
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x5
	mov r1, r9
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xE7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0x07
	mov r10, r3
	str r3, [sp, #0x000]
	movs r7, #0x04
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r2, r2, r4
	mov r9, r2
	add r1, r9
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x08
	str r3, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x0D
	bl sub_8084F28
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	mov r2, r10
	str r2, [sp, #0x000]
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	add r1, r9
	adds r1, #0x1C
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r5, #0x06
	str r5, [sp, #0x000]
	movs r1, #0x0F
	str r1, [sp, #0x004]
	movs r1, #0x0B
	str r1, [sp, #0x008]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x0F
	bl sub_8084578
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	movs r2, #0x90
	bl sub_8085170
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101E56
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101E56
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E30
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E2C @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101E3E
	.byte 0x00, 0x00
_08101E1C: .4byte 0x084FB588
_08101E20: .4byte 0x089F808C
_08101E24: .4byte 0x03000FD8
_08101E28: .4byte 0x000002BE
_08101E2C: .4byte 0x00002003
_08101E30:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E90 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101E3E:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101E56:
	ldr r0, _08101E94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101EC2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101EC2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E9C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E98 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101EAA
_08101E90: .4byte 0x00002050
_08101E94: .4byte 0x03000FD8
_08101E98: .4byte 0x00002003
_08101E9C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101EDC @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101EAA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101EC2:
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x10]
	ldr r0, _08101EE0 @ =0x08101EE5
	str r0, [r3, #0x04]
_08101ECC:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08101EDC: .4byte 0x00002050
_08101EE0: .4byte sub_8101EE4
	thumb_func_start sub_8101EE4
sub_8101EE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x014]
	ldr r4, _08101FC0 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0x10
	ldsh r5, [r3, r0]
	movs r0, #0x0B
	adds r1, r5, #0x0
	muls r1, r0
	adds r0, r1, #0x1
	cmp r0, #0x00
	bge _08101F12
	adds r0, #0x07
_08101F12:
	asrs r0, r0, #0x03
	mov r10, r0
	movs r1, #0x01
	str r1, [sp, #0x018]
	ldr r3, _08101FC4 @ =0x000002BE
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101F2E
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x018]
_08101F2E:
	cmp r5, #0x00
	bne _08101F54
	ldr r0, _08101FC8 @ =0x03001034
	movs r2, #0x87
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	ldr r0, _08101FCC @ =0x08105C11
	movs r1, #0x00
	bl sub_807FF70
	ldr r1, [r4, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
_08101F54:
	mov r3, r10
	lsls r3, r3, #0x04
	str r3, [sp, #0x01C]
	movs r0, #0x7F
	mov r9, r0
	ldr r1, _08101FD0 @ =0x03000C0C
	mov r8, r1
_08101F62:
	movs r4, #0x00
	ldr r0, _08101FC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08101FC4 @ =0x000002BE
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101FAE
	ldr r0, _08101FD4 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	lsls r1, r5, #0x01
	ldr r3, _08101FD8 @ =0x00008E4E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r0, #0x0B
	adds r3, r5, #0x0
	muls r3, r0
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _08101FDC @ =0x00008E4A
	adds r2, r2, r0
	adds r2, r2, r5
	ldrb r0, [r2, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x68
	bl sub_8083934
_08101FAE:
	asrs r0, r4, #0x07
	cmp r0, #0x02
	beq _08102004
	cmp r0, #0x02
	bgt _08101FE0
	cmp r0, #0x01
	beq _08101FEA
	b _0810205C
	.byte 0x00, 0x00
_08101FC0: .4byte 0x03000FD8
_08101FC4: .4byte 0x000002BE
_08101FC8: .4byte 0x03001034
_08101FCC: .4byte sub_8105C10
_08101FD0: .4byte 0x03000C0C
_08101FD4: .4byte 0x03000FDC
_08101FD8: .4byte 0x00008E4E
_08101FDC: .4byte 0x00008E4A
_08101FE0:
	cmp r0, #0x03
	beq _08102020
	cmp r0, #0x04
	beq _0810203C
	b _0810205C
_08101FEA:
	ldr r2, _08102000 @ =0x083BD844
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
_08102000: .4byte 0x083BD844
_08102004:
	ldr r2, _0810201C @ =0x083BE67C
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r3, r8
	ldrb r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_0810201C: .4byte 0x083BE67C
_08102020:
	ldr r2, _08102038 @ =0x083BCDC4
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_08102038: .4byte 0x083BCDC4
_0810203C:
	ldr r0, _08102058 @ =0x083BBDD0
	mov r3, r9
	ands r4, r3
	lsls r1, r4, #0x04
	adds r0, #0x0C
	adds r1, r1, r0
	mov r2, r8
	ldrb r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102068
	.byte 0x00, 0x00
_08102058: .4byte 0x083BBDD0
_0810205C:
	ldr r0, _081020E4 @ =0x083BA628
	mov r3, r8
	ldrb r1, [r3, #0x00]
_08102062:
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
_08102068:
	ldr r0, [r0, #0x00]
	movs r6, #0x0B
	adds r3, r5, #0x0
	muls r3, r6
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x08
	bl sub_8083860
	adds r5, #0x01
	ldr r0, [sp, #0x018]
	cmp r0, r5
	ble _0810209E
	add r0, sp, #0x010
	bl sub_8199470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8C
	bhi _0810209E
	b _08101F62
_0810209E:
	ldr r0, _081020E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	mov r0, r10
	subs r3, r2, r0
	lsls r0, r3, #0x05
	adds r2, r7, r0
	adds r0, r5, #0x0
	muls r0, r6
	adds r1, r0, #0x0
	adds r1, #0x08
	cmp r1, #0x00
	bge _081020C2
	adds r1, #0x07
_081020C2:
	asrs r1, r1, #0x03
	mov r0, r10
	subs r1, r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_80850F8
	ldr r1, [sp, #0x018]
	cmp r5, r1
	bge _081020EC
	ldr r2, [sp, #0x014]
	strh r5, [r2, #0x10]
	b _081020F2
	.byte 0x00, 0x00
_081020E4: .4byte 0x083BA628
_081020E8: .4byte 0x03000FD8
_081020EC:
	ldr r0, _08102104 @ =0x081023C9
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x04]
_081020F2:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102104: .4byte sub_81023C8
	thumb_func_start sub_8102108
sub_8102108:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r6, [sp, #0x044]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x48
	ldr r1, _081021D4 @ =0x081021E5
	bl sub_807FFD8
	adds r5, r0, #0x0
	bl sub_807FB04
	adds r4, r0, #0x0
	mov r0, r8
	bl sub_8083F88
	adds r7, r0, #0x0
	mov r0, r9
	bl sub_8083F88
	ldr r1, [sp, #0x000]
	str r1, [r5, #0x08]
	str r4, [r5, #0x0C]
	mov r2, r10
	strh r2, [r5, #0x18]
	mov r1, r8
	strh r1, [r4, #0x16]
	str r7, [r4, #0x04]
	mov r2, r9
	str r2, [r4, #0x08]
	str r0, [r4, #0x0C]
	mov r0, sp
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0x10]
	mov r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r5, #0x10]
	mov r2, sp
	ldrh r2, [r2, #0x2C]
	strh r2, [r4, #0x12]
	mov r0, sp
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0x14]
	ldr r1, _081021D8 @ =0x000001FF
	adds r3, r1, #0x0
	ldr r1, [sp, #0x034]
	ands r1, r3
	ldrh r2, [r4, #0x1A]
	ldr r0, _081021DC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x1A]
	movs r0, #0xFF
	ldr r2, [sp, #0x038]
	ands r2, r0
	strh r2, [r4, #0x18]
	ldr r2, [sp, #0x03C]
	ands r2, r3
	strh r2, [r5, #0x12]
	ldr r2, [sp, #0x040]
	ands r2, r0
	strh r2, [r5, #0x14]
	ldr r0, _081021E0 @ =0xFFFFFB2E
	cmp r6, r0
	bne _081021A6
	ldr r6, [sp, #0x034]
	subs r6, #0x08
_0810219E:
	asrs r7, r7, #0x04
	subs r6, #0x08
	cmp r7, #0x00
	bne _0810219E
_081021A6:
	ldr r1, _081021D8 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	movs r1, #0x00
	strh r6, [r5, #0x16]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081021D0: .4byte 0x03000FD8
_081021D4: .4byte sub_81021E4
_081021D8: .4byte 0x000001FF
_081021DC: .4byte 0xFFFFF000
_081021E0: .4byte 0xFFFFFB2E
	thumb_func_start sub_81021E4
sub_81021E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	ldr r5, [r6, #0x0C]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	mov r10, r0
	ldr r3, [r5, #0x04]
	str r3, [sp, #0x000]
	ldr r0, [r5, #0x08]
	str r0, [sp, #0x004]
	ldr r7, [r5, #0x0C]
	ldrh r0, [r5, #0x10]
	ldr r1, _08102224 @ =0x00000FFF
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x008]
	ldrh r0, [r6, #0x10]
	ands r1, r0
	str r1, [sp, #0x00C]
	movs r3, #0x18
	ldsh r1, [r6, r3]
	cmp r1, #0x00
	ble _08102228
	adds r0, r1, #0x0
	b _08102236
	.byte 0x00, 0x00
_08102224: .4byte 0x00000FFF
_08102228:
	movs r0, #0x02
	negs r0, r0
	ldr r3, _081022D8 @ =0x00999999
	mov r8, r3
	cmp r1, r0
	bne _08102238
	ldr r0, _081022DC @ =0x00009999
_08102236:
	mov r8, r0
_08102238:
	movs r1, #0x12
	ldsh r3, [r5, r1]
	movs r0, #0x14
	ldsh r4, [r5, r0]
	ldrh r0, [r5, #0x1A]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x010]
	movs r0, #0x18
	ldsh r1, [r5, r0]
	str r1, [sp, #0x014]
	movs r0, #0x12
	ldsh r1, [r6, r0]
	str r1, [sp, #0x018]
	movs r0, #0x14
	ldsh r1, [r6, r0]
	str r1, [sp, #0x01C]
	movs r0, #0x16
	ldsh r1, [r6, r0]
	str r1, [sp, #0x020]
	movs r0, #0x10
	ldsh r1, [r2, r0]
	mov r9, r1
	adds r0, r3, r4
	cmp r9, r0
	blt _0810226E
	b _08102390
_0810226E:
	cmp r3, r9
	bge _081022BC
	ldr r2, _081022E0 @ =0x03001038
	ldr r0, _081022E4 @ =0x0819832C
	ldr r1, _081022E8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r9
	subs r0, r1, r3
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	mov r1, r10
	subs r0, r1, r4
	bl sub_8083F88
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x004]
	adds r0, r2, r4
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081022AA
	mov r7, r8
_081022AA:
	ldr r0, _081022EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldrh r0, [r1, #0x00]
	cmp r0, r4
	beq _081022BC
	strh r4, [r1, #0x00]
_081022BC:
	ldr r0, [sp, #0x008]
	cmp r9, r0
	bge _081022F0
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D274
	b _08102304
_081022D8: .4byte 0x00999999
_081022DC: .4byte 0x00009999
_081022E0: .4byte 0x03001038
_081022E4: .4byte 0x0819832C
_081022E8: .4byte 0x08198220
_081022EC: .4byte 0x03000FD8
_081022F0:
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D34C
_08102304:
	ldr r1, [sp, #0x00C]
	cmp r9, r1
	bge _08102320
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D2E0
	b _08102334
_08102320:
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D3B8
_08102334:
	ldr r2, [sp, #0x008]
	cmp r9, r2
	bge _08102360
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102358 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r2, r2, r3
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810235C @ =0x0000C0D4
	b _0810237C
_08102358: .4byte 0x0300034C
_0810235C: .4byte 0x0000C0D4
_08102360:
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102388 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810238C @ =0x0000B0D4
_0810237C:
	adds r1, r3, #0x0
	strh r1, [r0, #0x04]
	adds r0, #0x08
	str r0, [r2, #0x00]
	b _081023B2
	.byte 0x00, 0x00
_08102388: .4byte 0x0300034C
_0810238C: .4byte 0x0000B0D4
_08102390:
	adds r0, r5, #0x0
	bl sub_807FA94
	ldr r0, [sp, #0x004]
	add r0, r10
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081023A6
	mov r7, r8
_081023A6:
	str r7, [r6, #0x0C]
	ldr r1, _081023C4 @ =0x08106BED
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_081023B2:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081023C4: .4byte sub_8106BEC
	thumb_func_start sub_81023C8
sub_81023C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x024]
	movs r7, #0x00
	ldr r1, _08102428 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r3, #0x00
	bne _081023EA
	b _08102544
_081023EA:
	subs r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08102400
	b _08102538
_08102400:
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08102410
	b _08102538
_08102410:
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102430
	ldr r0, _0810242C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _08102436
_08102428: .4byte 0x03000FD8
_0810242C: .4byte 0x03000FF4
_08102430:
	ldr r0, _08102494 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_08102436:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x08
	ldr r4, _08102498 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x5A
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	str r0, [sp, #0x01C]
	ldr r0, _0810249C @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	adds r2, r3, #0x0
	adds r3, r5, #0x0
	bl sub_8102108
	ldr r2, [r4, #0x00]
	lsls r3, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x02
	adds r1, r2, r4
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	bne _081024A0
	ldr r0, _08102494 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _081024A6
_08102494: .4byte 0x03000FF4
_08102498: .4byte 0x03000FD8
_0810249C: .4byte 0xFFFFFB2E
_081024A0:
	ldr r0, _0810252C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_081024A6:
	lsls r0, r0, #0x08
	lsrs r2, r0, #0x08
	ldr r5, _08102530 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r4, #0x5A
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x14
	mov r8, r0
	str r0, [sp, #0x00C]
	movs r0, #0x6C
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	str r0, [sp, #0x018]
	movs r0, #0x70
	mov r10, r0
	str r0, [sp, #0x01C]
	ldr r0, _08102534 @ =0xFFFFFB2E
	mov r9, r0
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r3, [r5, #0x00]
	lsls r2, r7, #0x02
	movs r6, #0xE0
	lsls r6, r6, #0x02
	adds r1, r3, r6
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r7, #0x01
	ldrh r1, [r3, #0x18]
	ldr r0, _0810252C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r2, [r0, #0x00]
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r4, r8
	str r4, [sp, #0x00C]
	movs r0, #0xA4
	str r0, [sp, #0x010]
	movs r0, #0x6E
	str r0, [sp, #0x014]
	movs r0, #0xCC
	str r0, [sp, #0x018]
	mov r0, r10
	str r0, [sp, #0x01C]
	mov r4, r9
	str r4, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r1, [r5, #0x00]
	lsls r2, r7, #0x02
	adds r1, r1, r6
	b _081026AE
	.byte 0x00, 0x00
_0810252C: .4byte 0x03000FF4
_08102530: .4byte 0x03000FD8
_08102534: .4byte 0xFFFFFB2E
_08102538:
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0810259C
_08102544:
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102564
	ldr r0, _08102560 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _0810256A
_08102560: .4byte 0x03000FF4
_08102564:
	ldr r0, _08102594 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_0810256A:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _08102598 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x28
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	b _0810264C
_08102594: .4byte 0x03000FF4
_08102598: .4byte 0x03000FD8
_0810259C:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102604
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081025CC
	ldr r0, _081025C8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _081025D2
_081025C8: .4byte 0x03000FF4
_081025CC:
	ldr r0, _081025FC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_081025D2:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _08102600 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x5A
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	b _0810264C
_081025FC: .4byte 0x03000FF4
_08102600: .4byte 0x03000FD8
_08102604:
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102620
	ldr r0, _0810261C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _08102626
_0810261C: .4byte 0x03000FF4
_08102620:
	ldr r0, _081026CC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_08102626:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _081026D0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r2, #0x5A
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r0, #0x6C
	str r0, [sp, #0x010]
	str r2, [sp, #0x014]
	str r0, [sp, #0x018]
	movs r0, #0x70
_0810264C:
	str r0, [sp, #0x01C]
	ldr r0, _081026D4 @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	adds r2, r5, #0x0
	bl sub_8102108
	ldr r1, [r4, #0x00]
	lsls r2, r7, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r7, #0x01
	ldr r4, _081026D0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x18]
	ldr r0, _081026CC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r2, [r0, #0x00]
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x3C
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r0, #0xA4
	str r0, [sp, #0x010]
	movs r0, #0x6E
	str r0, [sp, #0x014]
	movs r0, #0xCC
	str r0, [sp, #0x018]
	movs r0, #0x70
	str r0, [sp, #0x01C]
	ldr r0, _081026D4 @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r1, [r4, #0x00]
	lsls r2, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x02
	adds r1, r1, r4
_081026AE:
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x10]
	ldr r0, _081026D8 @ =0x08102789
	str r0, [r1, #0x04]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081026CC: .4byte 0x03000FF4
_081026D0: .4byte 0x03000FD8
_081026D4: .4byte 0xFFFFFB2E
_081026D8: .4byte sub_8102788
	thumb_func_start sub_81026DC
sub_81026DC:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0810277E
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810277E
	ldr r0, _08102740 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x08]
	lsls r1, r0, #0x1C
	lsrs r0, r1, #0x1C
	movs r3, #0x03
	ands r3, r0
	cmp r3, #0x00
	bne _08102710
	lsrs r3, r1, #0x1E
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	bne _08102710
	movs r3, #0x01
_08102710:
	cmp r4, #0x00
	beq _0810276E
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810276E
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102748
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r1, r3, #0x0
	ldr r2, _08102744 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08102756
	.byte 0x00, 0x00
_08102740: .4byte 0x03000FD8
_08102744: .4byte 0x00002003
_08102748:
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r1, r3, #0x0
	ldr r2, _08102784 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08102756:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0810276E:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0810277E:
	pop {r4}
	pop {r0}
	bx r0
_08102784: .4byte 0x00002050
	thumb_func_start sub_8102788
sub_8102788:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r5, _081028A8 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810279E
	b _081028B4
_0810279E:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102800
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x5A
	bne _08102800
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r5, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102800:
	ldr r4, _081028A8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102860
	movs r3, #0x10
	ldsh r0, [r6, r3]
	cmp r0, #0x5A
	beq _08102822
	b _0810297C
_08102822:
	adds r0, r2, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
_08102860:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x5A
	beq _0810286A
	b _0810297C
_0810286A:
	ldr r0, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r3, #0x87
	lsls r3, r3, #0x02
	adds r2, r2, r3
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	b _0810297C
	.byte 0x00, 0x00
_081028A8: .4byte 0x03000FD8
_081028AC: .4byte 0x084FB588
_081028B0: .4byte 0x089F808C
_081028B4:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x28
	bne _08102938
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x79
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r4
	bne _081028FC
	ldr r0, _081028F4 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _081028F8 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102910
	.byte 0x00, 0x00
_081028F4: .4byte 0x084FB588
_081028F8: .4byte 0x089F808C
_081028FC:
	ldr r0, _08102AA0 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102AA4 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r1, r1, r3
_08102910:
	adds r2, r0, r1
	ldr r0, _08102AA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102938:
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x3C
	bne _0810297C
	ldr r0, _08102AA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r2, r2, r1
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
_0810297C:
	ldrh r3, [r6, #0x10]
	movs r0, #0x10
	ldsh r2, [r6, r0]
	cmp r2, #0x6D
	ble _08102988
	b _08102B86
_08102988:
	ldr r0, _08102AAC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08102996
	b _08102B80
_08102996:
	ldr r4, _08102AA8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081029A6
	b _08102AB0
_081029A6:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081029F8
	cmp r2, #0x59
	bgt _081029F8
	adds r0, r3, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_081029F8:
	ldr r4, _08102AA8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102A58
	movs r3, #0x10
	ldsh r0, [r6, r3]
	cmp r0, #0x59
	ble _08102A1A
	b _08102B6C
_08102A1A:
	adds r0, r2, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
_08102A58:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x59
	ble _08102A62
	b _08102B6C
_08102A62:
	ldr r0, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r3, #0x87
	lsls r3, r3, #0x02
	adds r2, r2, r3
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	b _08102B6C
	.byte 0x00, 0x00
_08102AA0: .4byte 0x084FB588
_08102AA4: .4byte 0x089F808C
_08102AA8: .4byte 0x03000FD8
_08102AAC: .4byte 0x0300034C
_08102AB0:
	cmp r2, #0x27
	bgt _08102B28
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102AEC
	ldr r0, _08102AE4 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102AE8 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102B00
	.byte 0x00, 0x00
_08102AE4: .4byte 0x084FB588
_08102AE8: .4byte 0x089F808C
_08102AEC:
	ldr r0, _08102B74 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102B78 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r1, r1, r3
_08102B00:
	adds r2, r0, r1
	ldr r0, _08102B7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102B28:
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x3B
	bgt _08102B6C
	ldr r0, _08102B7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102B74 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102B78 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r2, r2, r1
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
_08102B6C:
	movs r0, #0x6E
	strh r0, [r6, #0x10]
	b _08102C7E
	.byte 0x00, 0x00
_08102B74: .4byte 0x084FB588
_08102B78: .4byte 0x089F808C
_08102B7C: .4byte 0x03000FD8
_08102B80:
	adds r0, r3, #0x1
	strh r0, [r6, #0x10]
	b _08102C7E
_08102B86:
	movs r0, #0x79
	bl stop_sfx_80195A8
	ldr r0, _08102C88 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08102C7E
	ldr r4, _08102C8C @ =0x03000FF4
	ldr r0, [r4, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x88
	ldr r1, _08102C90 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x18]
	ldrh r3, [r2, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08102C94 @ =0x0000270F
	adds r5, r1, #0x0
	cmp r0, r3
	bls _08102BBC
	strh r3, [r2, #0x00]
_08102BBC:
	ldr r0, _08102C98 @ =0x08102CA5
	mov r12, r0
	adds r7, r4, #0x0
	ldr r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08102C1C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102C1C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [r3, #0x04]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x08
	ldrh r4, [r4, #0x16]
	adds r0, r0, r4
	ldr r1, _08102C9C @ =0x00FFFFFF
	ands r0, r1
	movs r4, #0xFF
	lsls r4, r4, #0x18
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #0x04]
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x08
	ldr r2, _08102CA0 @ =0x000F423F
	cmp r0, r2
	bls _08102C1C
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0x04]
_08102C1C:
	ldr r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08102C76
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102C76
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [r3, #0x04]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x08
	ldrh r4, [r4, #0x16]
	adds r0, r0, r4
	ldr r1, _08102C9C @ =0x00FFFFFF
	ands r0, r1
	movs r4, #0xFF
	lsls r4, r4, #0x18
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #0x04]
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x08
	ldr r2, _08102CA0 @ =0x000F423F
	cmp r0, r2
	bls _08102C76
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0x04]
_08102C76:
	movs r0, #0x00
	strh r0, [r6, #0x10]
	mov r3, r12
	str r3, [r6, #0x04]
_08102C7E:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102C88: .4byte 0x0300034C
_08102C8C: .4byte 0x03000FF4
_08102C90: .4byte 0x03000FD8
_08102C94: .4byte 0x0000270F
_08102C98: .4byte sub_8102CA4
_08102C9C: .4byte 0x00FFFFFF
_08102CA0: .4byte 0x000F423F
	thumb_func_start sub_8102CA4
sub_8102CA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x008]
	movs r4, #0x00
	ldr r7, _08102E7C @ =0x03000FD8
	mov r8, r4
_08102CB8:
	ldr r5, [r7, #0x00]
	lsls r1, r4, #0x02
	adds r0, r5, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	bne _08102CCC
	b _08102E8C
_08102CCC:
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	mov r9, r0
	ldr r1, _08102E80 @ =0x03000FF4
	lsls r0, r0, #0x04
	mov r2, r9
	subs r0, r0, r2
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r3, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	cmp r1, #0x62
	ble _08102CF0
	b _08102E8C
_08102CF0:
	lsls r2, r2, #0x03
	add r2, r9
	lsls r0, r2, #0x05
	adds r2, r2, r0
	lsls r2, r2, #0x02
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _08102E84 @ =0x083BAEAC
	adds r0, r0, r1
	adds r2, r2, r0
	subs r2, #0x0C
	ldr r1, [r3, #0x04]
	lsls r1, r1, #0x08
	lsrs r1, r1, #0x08
	ldrh r3, [r2, #0x06]
	ldrb r0, [r2, #0x08]
	lsls r0, r0, #0x10
	orrs r0, r3
	cmp r1, r0
	bcs _08102D1C
	b _08102E8C
_08102D1C:
	movs r6, #0x94
	lsls r6, r6, #0x02
	adds r0, r5, r6
	ldr r0, [r0, #0x00]
	movs r5, #0x1E
	str r5, [sp, #0x000]
	movs r4, #0x14
	str r4, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084E98
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084E98
	ldr r0, [r7, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102D68
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	mov r1, r8
	str r1, [r0, #0x00]
_08102D68:
	ldr r0, [r7, #0x00]
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102D86
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
_08102D86:
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102D9A
	mov r2, r8
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102D9A:
	ldr r0, [r7, #0x00]
	movs r1, #0xDF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102DB8
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	mov r1, r8
	str r1, [r0, #0x00]
_08102DB8:
	ldr r0, [r7, #0x00]
	movs r2, #0xDE
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102DD6
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
_08102DD6:
	ldr r0, [r7, #0x00]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102DEA
	mov r2, r8
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102DEA:
	movs r4, #0x00
	mov r0, r10
	ldr r5, [r0, #0x10]
	ldr r6, _08102E88 @ =0x08102EB1
	ldr r3, _08102E7C @ =0x03000FD8
	movs r2, #0x00
	ldr r0, [r3, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E08
	str r4, [r1, #0x04]
	str r4, [r0, #0x00]
_08102E08:
	ldr r0, [r3, #0x00]
	movs r1, #0xE1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E1A
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E1A:
	ldr r0, [r3, #0x00]
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E2C
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E2C:
	ldr r0, [r3, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E3E
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E3E:
	ldr r0, [r3, #0x00]
	movs r1, #0xE4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E50
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E50:
	ldr r0, [r3, #0x00]
	movs r1, #0xE5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E62
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E62:
	ldrb r0, [r5, #0x12]
	movs r2, #0x11
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x12]
	mov r1, r9
	ldr r0, [sp, #0x008]
	strh r1, [r0, #0x12]
	mov r2, r10
	str r2, [r0, #0x0C]
	str r6, [r0, #0x04]
	b _08102E9A
_08102E7C: .4byte 0x03000FD8
_08102E80: .4byte 0x03000FF4
_08102E84: .4byte 0x083BAEAC
_08102E88: .4byte sub_8102EB0
_08102E8C:
	adds r4, #0x01
	cmp r4, #0x01
	bgt _08102E94
	b _08102CB8
_08102E94:
	ldr r0, _08102EAC @ =0x081054D5
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x04]
_08102E9A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102EAC: .4byte sub_81054D4
	thumb_func_start sub_8102EB0
sub_8102EB0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r4, _08102F38 @ =0x00007003
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	adds r4, #0x01
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r4, #0x0
	bl sub_8082A6C
	ldr r0, _08102F3C @ =0x084FB588
	mov r8, r0
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	ldr r5, _08102F40 @ =0x089F808C
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08102F44 @ =0x06008000
	movs r3, #0x92
	lsls r3, r3, #0x04
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08102F48 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r0, #0x02
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08102F4C @ =0x06008920
	movs r3, #0xA4
	lsls r3, r3, #0x03
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	strh r4, [r6, #0x10]
	movs r0, #0x03
	strh r0, [r6, #0x18]
	ldr r0, _08102F50 @ =0x08106BB1
	str r0, [r6, #0x04]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08102F38: .4byte 0x00007003
_08102F3C: .4byte 0x084FB588
_08102F40: .4byte 0x089F808C
_08102F44: .4byte 0x06008000
_08102F48: .4byte 0x0300034C
_08102F4C: .4byte 0x06008920
_08102F50: .4byte sub_8106BB0
	thumb_func_start sub_8102F54
sub_8102F54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x020]
	ldr r7, [r0, #0x0C]
	movs r1, #0x12
	ldsh r0, [r0, r1]
	str r0, [sp, #0x024]
	ldr r6, _08103084 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r4, #0x93
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r5, r0, #0x0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x07
	adds r5, r5, r2
	ldr r0, [r7, #0x18]
	subs r5, r5, r0
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x08
	movs r3, #0xA0
	lsls r3, r3, #0x08
	adds r4, r4, r3
	ldr r0, [r7, #0x1C]
	subs r4, r4, r0
	ldr r0, [r7, #0x20]
	movs r6, #0xE0
	lsls r6, r6, #0x06
	subs r6, r6, r0
	movs r0, #0x1A
	add r0, sp
	mov r8, r0
	add r1, sp, #0x01C
	mov r9, r1
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0xF0
	lsls r2, r2, #0x05
	adds r0, r6, r2
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	add r0, sp, #0x018
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0xA4
	str r0, [r1, #0x00]
	add r0, sp, #0x018
	ldrh r0, [r0, #0x00]
	adds r1, #0x12
	strh r0, [r1, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	mov r1, r9
	ldrh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xBA
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r7, #0x18]
	adds r5, r5, r0
	str r5, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x1C]
	adds r4, r4, r0
	str r4, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x20]
	adds r6, r6, r0
	str r6, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	cmp r7, #0x00
	beq _081030B2
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081030B2
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810308C
	adds r0, r7, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08103088 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _0810309A
_08103084: .4byte 0x03000FD8
_08103088: .4byte 0x00002003
_0810308C:
	adds r0, r7, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _0810324C @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_0810309A:
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081030B2:
	ldr r0, _08103250 @ =0x08103529
	ldr r3, [sp, #0x020]
	str r0, [r3, #0x04]
	ldr r1, _08103254 @ =0x03000FF4
	ldr r2, [sp, #0x024]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	mov r12, r1
	mov r0, r12
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	mov r10, r0
	mov r3, r10
	adds r3, #0x01
	movs r5, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	mov r9, r0
	movs r6, #0x00
	movs r4, #0x00
	cmp r6, r3
	bge _081031CC
	ldr r2, _08103258 @ =0x083BAEAC
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r1, r0, #0x05
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r0, r2
	negs r1, r3
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08103158
	cmp r1, #0x03
	bge _08103138
	cmp r1, #0x02
	bge _0810311C
	ldrb r5, [r2, #0x00]
	ldrb r4, [r2, #0x01]
	ldrb r7, [r2, #0x02]
	ldrb r3, [r2, #0x05]
	mov r8, r3
	ldrb r0, [r2, #0x03]
	mov r9, r0
	ldrb r6, [r2, #0x04]
	adds r2, #0x0C
	mov r3, r10
_0810311C:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r2, #0x0C
	subs r3, #0x01
_08103138:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r2, #0x0C
	subs r3, #0x01
	cmp r3, #0x00
	beq _081031CC
_08103158:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x0C
	ldrb r1, [r2, #0x0C]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x18
	ldrb r1, [r2, #0x18]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r2, #0x30
	subs r3, #0x04
	cmp r3, #0x00
	bne _08103158
_081031CC:
	ldr r2, _0810325C @ =0x03000FDC
	ldr r1, [r2, #0x00]
	ldr r3, _08103260 @ =0x00008E28
	adds r0, r1, r3
	strh r5, [r0, #0x00]
	ldr r2, _08103264 @ =0x00008E2A
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	adds r3, #0x04
	adds r0, r1, r3
	strh r7, [r0, #0x00]
	adds r2, #0x04
	adds r0, r1, r2
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r0, r1, r2
	mov r3, r9
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r0, r1, r2
	strh r6, [r0, #0x00]
	mov r3, r12
	ldrh r2, [r3, #0x10]
	ldr r3, _08103268 @ =0x00008E10
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x16]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x1A]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x22]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x1E]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r2, r12
	ldrh r0, [r2, #0x26]
	adds r3, #0x02
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	mov r0, sp
	ldrh r1, [r0, #0x24]
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x18]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810324C: .4byte 0x00002050
_08103250: .4byte sub_8103528
_08103254: .4byte 0x03000FF4
_08103258: .4byte 0x083BAEAC
_0810325C: .4byte 0x03000FDC
_08103260: .4byte 0x00008E28
_08103264: .4byte 0x00008E2A
_08103268: .4byte 0x00008E10
	thumb_func_start sub_810326C
sub_810326C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08103284
	movs r3, #0x16
	ldsh r0, [r5, r3]
	movs r4, #0x12
	ldsh r1, [r5, r4]
	b _08103334
_08103284:
	subs r0, r1, #0x1
	movs r6, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08103350
	ldr r0, _081032F8 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r4, r3, #0x1B
	ldr r3, _081032FC @ =0x0300034C
	ldr r1, _08103300 @ =0x00000888
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	lsls r1, r4, #0x05
	adds r2, r3, #0x0
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r1, #0x40
	strh r1, [r0, #0x06]
	ldrh r2, [r0, #0x0E]
	strh r6, [r0, #0x0E]
	ldrh r2, [r0, #0x16]
	strh r6, [r0, #0x16]
	ldrh r2, [r0, #0x1E]
	strh r1, [r0, #0x1E]
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r3, r2
	ldr r2, [r0, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	strh r0, [r2, #0x08]
	strh r0, [r2, #0x00]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bgt _08103308
	lsls r0, r4, #0x09
	ldr r4, _08103304 @ =0xFFFF8048
	b _0810330C
	.byte 0x00, 0x00
_081032F8: .4byte 0x03000FD8
_081032FC: .4byte 0x0300034C
_08103300: .4byte 0x00000888
_08103304: .4byte 0xFFFF8048
_08103308:
	lsls r0, r4, #0x09
	ldr r4, _08103344 @ =0xFFFF8058
_0810330C:
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r2, #0x0A]
	strh r0, [r2, #0x02]
	ldr r1, _08103348 @ =0x0000B390
	adds r0, r1, #0x0
	strh r0, [r2, #0x04]
	ldr r4, _0810334C @ =0x0000B3A0
	adds r0, r4, #0x0
	strh r0, [r2, #0x0C]
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r1, r3, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	str r0, [r1, #0x00]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	movs r2, #0x12
	ldsh r1, [r5, r2]
_08103334:
	adds r1, #0x08
	movs r3, #0x14
	ldsh r2, [r5, r3]
	subs r2, #0x08
	movs r3, #0x00
	bl sub_810D3B8
	b _0810335E
_08103344: .4byte 0xFFFF8058
_08103348: .4byte 0x0000B390
_0810334C: .4byte 0x0000B3A0
_08103350:
	movs r0, #0xC0
	strh r0, [r5, #0x10]
	ldr r1, _08103364 @ =0x08103369
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
_0810335E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08103364: .4byte sub_8103368
	thumb_func_start sub_8103368
sub_8103368:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x10]
	subs r0, #0x13
	movs r6, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _081033A0
	ldr r0, [r5, #0x08]
	strh r0, [r5, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0810338C
	ldrh r0, [r5, #0x12]
	adds r0, #0x04
	strh r0, [r5, #0x12]
_0810338C:
	strh r6, [r5, #0x10]
	ldr r1, _0810339C @ =0x08106B91
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	b _08103500
	.byte 0x00, 0x00
_0810339C: .4byte sub_8106B90
_081033A0:
	ldr r0, _08103428 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r7, r3, #0x1B
	ldr r2, _0810342C @ =0x0300034C
	ldr r1, _08103430 @ =0x00000888
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	lsls r1, r7, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r3, #0x0
	subs r1, r2, r1
	ldrh r3, [r0, #0x06]
	strh r1, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r6, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r6, [r0, #0x16]
	ldrh r1, [r5, #0x10]
	subs r2, r2, r1
	ldrh r1, [r0, #0x1E]
	strh r2, [r0, #0x1E]
	movs r6, #0x12
	ldsh r4, [r5, r6]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bgt _08103440
	ldr r2, _08103434 @ =0x03001038
	ldr r0, _08103438 @ =0x0819832C
	ldr r1, _0810343C @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0x68
	subs r0, r0, r4
	movs r2, #0x10
	ldsh r1, [r5, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	adds r4, r4, r0
	b _08103474
_08103428: .4byte 0x03000FD8
_0810342C: .4byte 0x0300034C
_08103430: .4byte 0x00000888
_08103434: .4byte 0x03001038
_08103438: .4byte 0x0819832C
_0810343C: .4byte 0x08198220
_08103440:
	ldr r2, _08103508 @ =0x03001038
	ldr r0, _0810350C @ =0x0819832C
	ldr r1, _08103510 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0x78
	subs r0, r0, r4
	movs r6, #0x10
	ldsh r1, [r5, r6]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	adds r4, r4, r0
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08103474
	adds r4, #0x04
_08103474:
	ldr r2, _08103508 @ =0x03001038
	ldr r0, _0810350C @ =0x0819832C
	ldr r1, _08103510 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r2, #0x14
	ldsh r1, [r5, r2]
	movs r0, #0x44
	subs r0, r0, r1
	movs r6, #0x10
	ldsh r1, [r5, r6]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	movs r2, #0x14
	ldsh r1, [r5, r2]
	adds r1, r1, r0
	ldr r3, _08103514 @ =0x0300034C
	movs r6, #0x88
	lsls r6, r6, #0x04
	adds r3, r3, r6
	ldr r2, [r3, #0x00]
	subs r1, #0x20
	movs r0, #0xFF
	ands r1, r0
	movs r6, #0xC0
	lsls r6, r6, #0x02
	adds r0, r6, #0x0
	orrs r1, r0
	strh r1, [r2, #0x08]
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x20
	ldr r4, _08103518 @ =0x000001FF
	adds r1, r4, #0x0
	ands r0, r1
	lsls r1, r7, #0x09
	orrs r0, r1
	ldr r6, _0810351C @ =0xFFFF8000
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x0A]
	strh r0, [r2, #0x02]
	ldr r1, _08103520 @ =0x0000B390
	adds r0, r1, #0x0
	strh r0, [r2, #0x04]
	ldr r4, _08103524 @ =0x0000B3A0
	adds r0, r4, #0x0
	strh r0, [r2, #0x0C]
	adds r2, #0x10
	str r2, [r3, #0x00]
	movs r6, #0x16
	ldsh r0, [r5, r6]
	movs r2, #0x12
	ldsh r1, [r5, r2]
	adds r1, #0x08
	movs r3, #0x14
	ldsh r2, [r5, r3]
	subs r2, #0x08
	movs r3, #0x00
	bl sub_810D3B8
_08103500:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08103508: .4byte 0x03001038
_0810350C: .4byte 0x0819832C
_08103510: .4byte 0x08198220
_08103514: .4byte 0x0300034C
_08103518: .4byte 0x000001FF
_0810351C: .4byte 0xFFFF8000
_08103520: .4byte 0x0000B390
_08103524: .4byte 0x0000B3A0
	thumb_func_start sub_8103528
sub_8103528:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r6, [r0, #0x0C]
	adds r2, r6, #0x0
	adds r2, #0xBA
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r6, #0x1C]
	adds r0, r0, r1
	str r0, [r6, #0x1C]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x20]
	adds r1, r0, r1
	str r1, [r6, #0x20]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _08103572
	b _0810369E
_08103572:
	subs r2, #0x26
	ldr r0, [r2, #0x00]
	cmp r0, r1
	bge _0810357C
	b _0810369E
_0810357C:
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x1C]
	ldr r0, [r2, #0x00]
	str r0, [r6, #0x20]
	adds r4, r6, #0x0
	adds r4, #0xEC
	cmp r6, #0x00
	beq _081035EE
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081035EE
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081035C8
	adds r0, r6, #0x0
	adds r0, #0x08
	movs r1, #0x04
	ldr r2, _081035C4 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _081035D6
	.byte 0x00, 0x00
_081035C4: .4byte 0x00002003
_081035C8:
	adds r0, r6, #0x0
	adds r0, #0x08
	movs r1, #0x04
	ldr r2, _081036A8 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_081035D6:
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081035EE:
	ldr r2, [r6, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081036AC @ =0x00007003
	movs r1, #0x00
	ldsh r2, [r4, r1]
	mvns r2, r2
	negs r1, r2
	orrs r1, r2
	lsrs r1, r1, #0x1F
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r5, r0, #0x0
	ldr r7, _081036B0 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807BC90
	movs r4, #0x78
	strh r4, [r5, #0x00]
	movs r0, #0x1C
	strh r0, [r5, #0x02]
	ldr r0, _081036B4 @ =0x00007004
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r5, r0, #0x0
	ldr r0, [r7, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807BC90
	strh r4, [r5, #0x00]
	movs r0, #0x40
	strh r0, [r5, #0x02]
	ldrb r0, [r5, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x12]
	adds r0, r6, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r0, #0x0
	ldr r0, [r7, #0x00]
	adds r0, #0x48
	ldr r1, _081036B8 @ =0x0810326D
	bl sub_807FFD8
	adds r5, r0, #0x0
	strh r4, [r5, #0x12]
	cmp r6, #0x09
	bgt _0810367E
	movs r0, #0x74
	strh r0, [r5, #0x12]
_0810367E:
	movs r0, #0x3A
	strh r0, [r5, #0x14]
	adds r0, r6, #0x0
	bl sub_8083F88
	strh r0, [r5, #0x16]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
	ldr r0, _081036BC @ =0x081036C1
	mov r1, r8
	str r0, [r1, #0x04]
_0810369E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081036A8: .4byte 0x00002050
_081036AC: .4byte 0x00007003
_081036B0: .4byte 0x03000FD8
_081036B4: .4byte 0x00007004
_081036B8: .4byte sub_810326C
_081036BC: .4byte sub_81036C0
	thumb_func_start sub_81036C0
sub_81036C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081036DE
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810387C
_081036DE:
	movs r4, #0x12
	ldsh r3, [r6, r4]
	str r3, [sp, #0x000]
	ldr r1, _08103814 @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	str r1, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0x30
	ldrb r3, [r0, #0x00]
	ldr r7, [sp, #0x000]
	lsls r1, r7, #0x03
	adds r1, r1, r7
	lsls r0, r1, #0x05
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x02
	ldr r2, _08103818 @ =0x083BAEAC
	adds r0, r0, r2
	adds r5, r1, r0
	adds r4, r5, #0x0
	subs r4, #0x0C
	str r3, [sp, #0x008]
	ldr r2, _0810381C @ =0x03000FDC
	ldr r0, [r2, #0x00]
	ldr r3, _08103820 @ =0x00008E10
	adds r1, r0, r3
	ldrh r3, [r1, #0x00]
	ldr r7, _08103824 @ =0x00008E12
	adds r1, r0, r7
	ldrh r7, [r1, #0x00]
	ldr r1, _08103828 @ =0x00008E14
	ldrh r1, [r1, r0]
	mov r12, r1
	ldr r1, _0810382C @ =0x00008E16
	ldrh r1, [r1, r0]
	mov r8, r1
	ldr r1, _08103830 @ =0x00008E18
	ldrh r1, [r1, r0]
	mov r9, r1
	ldr r1, _08103834 @ =0x00008E1A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r10, r0
	ldrh r1, [r4, #0x06]
	ldrb r0, [r4, #0x08]
	lsls r4, r0, #0x10
	orrs r4, r1
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x04]
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x08
	cmp r4, r0
	bhi _081037B0
	ldr r0, [sp, #0x008]
	cmp r0, #0x01
	beq _0810376A
	adds r0, r5, #0x0
	subs r0, #0x18
	ldrh r1, [r0, #0x06]
	ldrb r0, [r0, #0x08]
	lsls r0, r0, #0x10
	orrs r0, r1
	cmp r0, r4
	bhi _081037B0
_0810376A:
	adds r4, r5, #0x0
	ldr r1, [sp, #0x008]
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldrb r0, [r4, #0x00]
	adds r3, r3, r0
	ldrb r0, [r4, #0x01]
	adds r7, r7, r0
	ldrb r0, [r4, #0x02]
	add r12, r0
	ldrb r0, [r4, #0x05]
	add r8, r0
	ldrb r0, [r4, #0x03]
	add r9, r0
	ldrb r0, [r4, #0x04]
	add r10, r0
	ldr r0, _08103838 @ =0x000003E7
	cmp r3, r0
	ble _08103792
	adds r3, r0, #0x0
_08103792:
	cmp r7, r0
	ble _08103798
	adds r7, r0, #0x0
_08103798:
	cmp r12, r0
	ble _0810379E
	mov r12, r0
_0810379E:
	cmp r8, r0
	ble _081037A4
	mov r8, r0
_081037A4:
	cmp r9, r0
	ble _081037AA
	mov r9, r0
_081037AA:
	cmp r10, r0
	ble _081037B0
	mov r10, r0
_081037B0:
	ldr r0, [sp, #0x004]
	adds r0, #0x30
	mov r4, sp
	ldrb r4, [r4, #0x08]
	strb r4, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldr r2, _0810383C @ =0x00008E1C
	adds r1, r0, r2
	strh r3, [r1, #0x00]
	ldr r3, _08103840 @ =0x00008E1E
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	ldr r4, _08103844 @ =0x00008E20
	adds r1, r0, r4
	mov r7, r12
	strh r7, [r1, #0x00]
	adds r2, #0x06
	adds r1, r0, r2
	mov r3, r8
	strh r3, [r1, #0x00]
	adds r4, #0x04
	adds r1, r0, r4
	mov r7, r9
	strh r7, [r1, #0x00]
	ldr r1, _08103848 @ =0x00008E26
	adds r0, r0, r1
	mov r2, r10
	strh r2, [r0, #0x00]
	ldr r0, _0810384C @ =0x081069D5
	ldr r1, _08103850 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	bl sub_807FF48
	adds r1, r0, #0x0
	movs r0, #0x46
	strh r0, [r1, #0x10]
	ldr r4, [sp, #0x000]
	cmp r4, #0x00
	beq _08103854
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7B
	bl play_sfx_80195B4
	b _0810385E
	.byte 0x00, 0x00
_08103814: .4byte 0x03000FF4
_08103818: .4byte 0x083BAEAC
_0810381C: .4byte 0x03000FDC
_08103820: .4byte 0x00008E10
_08103824: .4byte 0x00008E12
_08103828: .4byte 0x00008E14
_0810382C: .4byte 0x00008E16
_08103830: .4byte 0x00008E18
_08103834: .4byte 0x00008E1A
_08103838: .4byte 0x000003E7
_0810383C: .4byte 0x00008E1C
_08103840: .4byte 0x00008E1E
_08103844: .4byte 0x00008E20
_08103848: .4byte 0x00008E26
_0810384C: .4byte sub_81069D4
_08103850: .4byte 0x03000FD8
_08103854:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7A
	bl play_sfx_80195B4
_0810385E:
	ldr r0, _0810388C @ =0x08104FED
	movs r1, #0x00
	bl sub_807FF48
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #0x12]
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x0C]
	movs r0, #0x1E
	strh r0, [r1, #0x10]
	movs r0, #0x96
	strh r0, [r6, #0x10]
	ldr r0, _08103890 @ =0x08103895
	str r0, [r6, #0x04]
_0810387C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810388C: .4byte sub_8104FEC
_08103890: .4byte sub_8103894
	thumb_func_start sub_8103894
sub_8103894:
	push {lr}
	adds r2, r0, #0x0
	ldrh r1, [r2, #0x10]
	movs r3, #0x10
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _081038A8
	subs r0, r1, #0x1
	strh r0, [r2, #0x10]
	b _081038EE
_081038A8:
	movs r0, #0x40
	strh r0, [r2, #0x10]
	ldr r1, [r2, #0x0C]
	ldr r0, [r1, #0x18]
	ldr r3, _081038F4 @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r1, #0x18]
	ldr r0, _081038F8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	ldr r0, _081038FC @ =0x08103901
	str r0, [r2, #0x04]
_081038EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081038F4: .4byte 0xFFFFFD00
_081038F8: .4byte 0x03000FD8
_081038FC: .4byte sub_8103900
	thumb_func_start sub_8103900
sub_8103900:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	str r0, [sp, #0x024]
	ldr r4, [r0, #0x0C]
	ldr r0, [r4, #0x18]
	ldr r1, _08103A08 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r2, _08103A0C @ =0x03000FD8
	mov r8, r2
	ldr r2, [r2, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r7, r2, r3
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	movs r3, #0x00
	mov r9, r3
	strh r0, [r1, #0x00]
	movs r0, #0xDC
	lsls r0, r0, #0x02
	adds r6, r2, r0
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, #0x03
	strh r0, [r1, #0x12]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r5, r2, r1
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r3, _08103A10 @ =0x0200001C
	ldrh r0, [r3, #0x00]
	adds r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, [sp, #0x024]
	ldrh r0, [r2, #0x10]
	subs r0, #0x03
	strh r0, [r2, #0x10]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r2, r0, #0x0
	subs r2, #0x18
	cmp r2, #0x00
	ble _0810396A
	b _08103B3C
_0810396A:
	cmp r2, #0x00
	beq _0810399C
	lsls r1, r2, #0x08
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldrh r0, [r1, #0x12]
	subs r0, r0, r2
	strh r0, [r1, #0x12]
	ldr r1, [r5, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldr r1, [sp, #0x024]
	ldrh r0, [r1, #0x10]
	subs r0, r0, r2
	strh r0, [r1, #0x10]
_0810399C:
	mov r0, r9
	ldr r2, [sp, #0x024]
	strh r0, [r2, #0x10]
	strh r0, [r3, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r5, #0x0E
	str r5, [sp, #0x000]
	movs r6, #0x0D
	str r6, [sp, #0x004]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084E98
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08103A1C
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103A14 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103A18 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
	b _08103A4E
	.byte 0x00, 0x00
_08103A08: .4byte 0xFFFFFD00
_08103A0C: .4byte 0x03000FD8
_08103A10: .4byte 0x0200001C
_08103A14: .4byte 0x084FB588
_08103A18: .4byte 0x089F808C
_08103A1C:
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r1, _08103B4C @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103B50 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x03
	movs r3, #0x04
	bl sub_8084F28
_08103A4E:
	movs r7, #0x00
	movs r2, #0x2A
	str r2, [sp, #0x028]
	movs r3, #0x28
	str r3, [sp, #0x02C]
	movs r0, #0x5D
	str r0, [sp, #0x030]
	movs r1, #0x20
	str r1, [sp, #0x034]
_08103A60:
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r7, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	ldr r3, [sp, #0x034]
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	ldr r3, [sp, #0x02C]
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	ldr r1, _08103B64 @ =0x03000FD8
	mov r10, r1
	ldr r1, [r1, #0x00]
	lsls r2, r7, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x02C]
	adds r1, #0x10
	mov r8, r1
	ldr r5, [sp, #0x030]
	adds r5, #0x0C
	ldr r6, [sp, #0x034]
	adds r6, #0x0C
	adds r4, r7, #0x1
	ldr r3, _08103B54 @ =0x03000FDC
	ldr r2, [r3, #0x00]
	lsls r3, r4, #0x01
	ldr r1, _08103B58 @ =0x00008E1C
	adds r0, r2, r1
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
	ldr r0, _08103B5C @ =0x00008E10
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x0C
	str r3, [sp, #0x00C]
	movs r0, #0xC0
	str r0, [sp, #0x010]
	mov r3, r8
	str r3, [sp, #0x014]
	movs r0, #0xA8
	str r0, [sp, #0x018]
	mov r3, r9
	str r3, [sp, #0x01C]
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	ldr r3, _08103B60 @ =0x00000999
	bl sub_8102108
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r4, r4, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r0, #0x20
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x02C]
	adds r1, #0x20
	str r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	adds r2, #0x18
	str r2, [sp, #0x030]
	ldr r3, [sp, #0x034]
	adds r3, #0x18
	str r3, [sp, #0x034]
	adds r7, #0x02
	cmp r7, #0x05
	ble _08103A60
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x10]
	ldr r0, _08103B68 @ =0x08106B0D
	str r0, [r1, #0x04]
_08103B3C:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08103B4C: .4byte 0x084FB588
_08103B50: .4byte 0x089F808C
_08103B54: .4byte 0x03000FDC
_08103B58: .4byte 0x00008E1C
_08103B5C: .4byte 0x00008E10
_08103B60: .4byte 0x00000999
_08103B64: .4byte 0x03000FD8
_08103B68: .4byte sub_8106B0C
	thumb_func_start sub_8103B6C
sub_8103B6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, _08103B90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08103B94
	mov r2, r8
	str r0, [r2, #0x04]
	b _08103D46
_08103B90: .4byte 0x03000FD8
_08103B94:
	mov r3, r8
	ldr r1, [r3, #0x08]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	subs r7, r0, #0x4
	ldr r0, _08103D58 @ =0x000001FF
	ands r7, r0
	movs r0, #0x02
	ldsh r2, [r1, r0]
	movs r4, #0x14
	ldsh r0, [r3, r4]
	subs r2, r2, r0
	movs r0, #0x12
	negs r0, r0
	adds r0, r0, r2
	mov r10, r0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x04
	bne _08103BC0
	subs r2, #0x0E
	mov r10, r2
_08103BC0:
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r1, _08103D60 @ =0x0819832C
	ldr r0, _08103D64 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	adds r2, r0, r1
	movs r0, #0x00
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r3, r8
	movs r4, #0x14
	ldsh r0, [r3, r4]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	mov r0, r10
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	mov r4, r10
	lsls r6, r4, #0x01
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	add r6, r10
	movs r3, #0x03
	str r3, [sp, #0x000]
_08103C62:
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	adds r0, r6, #0x0
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x14
	ldsh r0, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r4, _08103D6C @ =0xFFFF8000
	orrs r0, r4
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r0, _08103D70 @ =0x0000B0A5
	strh r0, [r5, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x08
	str r1, [sp, #0x008]
	add r6, r10
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x08]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x18
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x18]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r3, _08103D70 @ =0x0000B0A5
	strh r3, [r2, #0x04]
	adds r5, #0x20
	add r6, r10
	ldr r4, [sp, #0x000]
	subs r4, #0x04
	str r4, [sp, #0x000]
	cmp r4, #0x00
	bge _08103C62
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r5, [r0, #0x00]
_08103D46:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08103D58: .4byte 0x000001FF
_08103D5C: .4byte 0x0300034C
_08103D60: .4byte 0x0819832C
_08103D64: .4byte 0x08198220
_08103D68: .4byte 0x03001038
_08103D6C: .4byte 0xFFFF8000
_08103D70: .4byte 0x0000B0A5
	thumb_func_start sub_8103D74
sub_8103D74:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	movs r5, #0x00
	ldr r0, _08103E98 @ =0x084FB5D4
	mov r9, r0
	movs r6, #0x05
	ldr r4, _08103E9C @ =0x089F808C
	mov r8, r4
_08103D8E:
	ldr r1, _08103EA0 @ =0x03000FD8
	mov r10, r1
	ldr r2, [r1, #0x00]
	lsls r1, r5, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103DDE
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	adds r3, r6, #0x0
	bl sub_8084F28
_08103DDE:
	adds r3, r6, #0x2
	mov r12, r3
	adds r4, #0x80
	adds r1, r5, #0x1
	mov r0, r10
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103E34
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	mov r3, r12
	bl sub_8084F28
_08103E34:
	adds r6, #0x04
	adds r4, #0x80
	adds r5, #0x02
	cmp r5, #0x05
	ble _08103D8E
	ldrh r0, [r7, #0x10]
	movs r3, #0x10
	ldsh r1, [r7, r3]
	cmp r1, #0x5B
	bgt _08103EAC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103E5A
	b _081040C2
_08103E5A:
	movs r0, #0x5C
	strh r0, [r7, #0x10]
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x0C
	str r1, [sp, #0x004]
	ldr r1, _08103EA8 @ =0x084FB588
	adds r1, #0x4C
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103E9C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	movs r3, #0x05
	bl sub_8084F28
	b _081040C2
	.byte 0x00, 0x00
_08103E98: .4byte 0x084FB5D4
_08103E9C: .4byte 0x089F808C
_08103EA0: .4byte 0x03000FD8
_08103EA4: .4byte 0x0300034C
_08103EA8: .4byte 0x084FB588
_08103EAC:
	cmp r1, #0x5C
	bne _08103EDC
	movs r0, #0x36
	bl stop_sfx_80195A8
	ldr r0, _08103ED8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EC4
	b _081040C2
_08103EC4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	b _081040C2
	.byte 0x00, 0x00
_08103ED8: .4byte 0x0300034C
_08103EDC:
	cmp r1, #0xA4
	bgt _08103EFC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EF8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EF2
	b _081040C2
_08103EF2:
	movs r0, #0xA5
	strh r0, [r7, #0x10]
	b _081040C2
_08103EF8: .4byte 0x0300034C
_08103EFC:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	ldr r2, _08104068 @ =0x03000FF4
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0810406C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r3, _08104070 @ =0x00008E1C
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	movs r3, #0x00
	mov r8, r3
	strh r0, [r2, #0x10]
	ldr r3, _08104074 @ =0x00008E1E
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x16]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1A]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x22]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1E]
	ldr r0, _08104078 @ =0x00008E26
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x26]
	mov r5, r10
	ldr r0, [r5, #0x00]
	movs r6, #0x93
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _0810407C @ =0x0000401F
	movs r0, #0x84
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r4, [r0, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	movs r3, #0x76
	adds r3, r3, r4
	mov r9, r3
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	mov r2, r8
	str r2, [r0, #0x7C]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x70
	subs r2, r1, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08103FF0
	adds r0, #0xFF
_08103FF0:
	asrs r3, r0, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08103FFA
	adds r0, #0xFF
_08103FFA:
	asrs r1, r0, #0x08
	ldr r0, _08104080 @ =0x00007003
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x03
	bl sub_810A648
	mov r3, r10
	ldr r0, [r3, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	movs r4, #0x1C
	ldr r5, [r1, #0x08]
	adds r0, #0x48
	ldr r1, _08104084 @ =0x08103B6D
	bl sub_807FFD8
	strh r4, [r0, #0x14]
	str r5, [r0, #0x08]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [r7, #0x0C]
	movs r0, #0x79
	bl stop_sfx_80195A8
	cmp r4, #0x00
	beq _081040B2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081040B2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810408C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _08104088 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _0810409A
_08104068: .4byte 0x03000FF4
_0810406C: .4byte 0x03000FDC
_08104070: .4byte 0x00008E1C
_08104074: .4byte 0x00008E1E
_08104078: .4byte 0x00008E26
_0810407C: .4byte 0x0000401F
_08104080: .4byte 0x00007003
_08104084: .4byte sub_8103B6C
_08104088: .4byte 0x00002003
_0810408C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _081040D4 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_0810409A:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081040B2:
	ldr r0, _081040D8 @ =0x081040DD
	str r0, [r7, #0x04]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081040C2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081040D4: .4byte 0x00002050
_081040D8: .4byte sub_81040DC
	thumb_func_start sub_81040DC
sub_81040DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _08104174 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x10]
	ldr r2, _08104178 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0810410C
	adds r0, #0xFF
_0810410C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r6, #0x00
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	cmp r0, #0xD0
	bgt _08104166
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xD0
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x00]
	ldr r1, _0810417C @ =0x00000342
	adds r0, r0, r1
	strb r6, [r0, #0x00]
	ldr r0, _08104180 @ =0x08106AC9
	mov r2, r8
	str r0, [r2, #0x04]
_08104166:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104174: .4byte 0x03000FD8
_08104178: .4byte 0xFFFFFF00
_0810417C: .4byte 0x00000342
_08104180: .4byte sub_8106AC8
	thumb_func_start sub_8104184
sub_8104184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _081042B8 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r6, [r1, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	mov r8, r1
	ldr r1, _081042BC @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	ldr r0, _081042C0 @ =0x0300034C
	adds r4, r0, #0x0
	adds r4, #0x42
	ldrh r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081041D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	subs r5, #0x01
_081041D0:
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081041E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, #0x01
_081041E6:
	cmp r5, #0x00
	bge _08104220
	movs r5, #0x05
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _081041F4
	adds r0, #0xFF
_081041F4:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _081041FE
	adds r4, #0xFF
_081041FE:
	asrs r4, r4, #0x08
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x20
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_08104220:
	cmp r5, #0x05
	ble _0810425A
	movs r5, #0x00
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810422E
	adds r0, #0xFF
_0810422E:
	asrs r7, r0, #0x08
	ldr r4, [r6, #0x3C]
	cmp r4, #0x00
	bge _08104238
	adds r4, #0xFF
_08104238:
	asrs r4, r4, #0x08
	ldr r0, _081042B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x70
	subs r2, r2, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_810D228
_0810425A:
	ldr r1, _081042B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _081042BC @ =0x00000342
	adds r0, r0, r2
	ldrb r2, [r0, #0x00]
	cmp r5, r2
	beq _081042A6
	strb r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x04
	adds r1, #0x30
	adds r0, r0, r1
	movs r1, #0xA0
	subs r2, r1, r0
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0810428E
	adds r0, #0xFF
_0810428E:
	asrs r3, r0, #0x08
	ldr r1, [r6, #0x3C]
	cmp r1, #0x00
	bge _08104298
	adds r1, #0xFF
_08104298:
	asrs r1, r1, #0x08
	ldr r0, _081042C4 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x05
	bl sub_810A648
_081042A6:
	ldr r2, _081042C0 @ =0x0300034C
	ldrh r1, [r2, #0x3E]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081042C8
	mov r0, r8
	movs r1, #0x01
	b _081042D4
_081042B8: .4byte 0x03000FD8
_081042BC: .4byte 0x00000342
_081042C0: .4byte 0x0300034C
_081042C4: .4byte 0x00007001
_081042C8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081042DE
	mov r0, r8
	movs r1, #0x02
_081042D4:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081042F8
_081042DE:
	adds r0, r2, #0x0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _081042F8
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081042F8:
	ldr r0, _08104348 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08104338
	mov r2, r8
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810431C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810431C:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _0810434C @ =0x08104801
	mov r1, r10
	str r0, [r1, #0x04]
_08104338:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104348: .4byte 0x0300034C
_0810434C: .4byte sub_8104800
	thumb_func_start sub_8104350
sub_8104350:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x170
	mov r9, r0
	str r1, [sp, #0x14C]
	ldr r6, [sp, #0x190]
	ldr r4, [sp, #0x194]
	lsls r0, r6, #0x01
	adds r2, r0, r2
	ldrh r2, [r2, #0x00]
	str r2, [sp, #0x150]
	adds r0, r0, r3
	ldrh r7, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08104394 @ =0x08200F7C
	movs r2, #0xA0
	lsls r2, r2, #0x01
	mov r0, sp
	bl memcpy
	cmp r4, #0x00
	bne _081043CC
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _08104398 @ =0x0810439C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08104394: .4byte 0x08200F7C
_08104398: .4byte 0x0810439C
	.byte 0xB4, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0xBA, 0x43, 0x10, 0x08, 0xC4, 0x43, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0xA6, 0x25, 0x6D, 0x00, 0x1F, 0xE0, 0x01, 0x48
	.byte 0x36, 0xE0, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x49, 0x24, 0xE0, 0x33, 0x01, 0x00, 0x00
_081043CC:
	cmp r6, #0x05
	bhi _08104430
	lsls r0, r6, #0x02
	ldr r1, _081043DC @ =0x081043E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_081043DC: .4byte 0x081043E0
	.byte 0xF8, 0x43, 0x10, 0x08, 0x1C, 0x44, 0x10, 0x08, 0x08, 0x44, 0x10, 0x08, 0x10, 0x44, 0x10, 0x08
	.byte 0x1C, 0x44, 0x10, 0x08, 0x28, 0x44, 0x10, 0x08, 0x01, 0x4D, 0x02, 0x49, 0x55, 0x91, 0x17, 0xE0
	.byte 0x19, 0x01, 0x00, 0x00, 0x33, 0x01, 0x00, 0x00, 0x00, 0x48, 0x0F, 0xE0, 0x33, 0x01, 0x00, 0x00
	.byte 0x01, 0x49, 0x55, 0x91, 0x0D, 0x1C, 0x0B, 0xE0, 0x19, 0x01, 0x00, 0x00, 0x01, 0x4A, 0x55, 0x92
	.byte 0x15, 0x1C, 0x05, 0xE0, 0x33, 0x01, 0x00, 0x00, 0xA6, 0x20, 0x40, 0x00, 0x55, 0x90, 0x05, 0x1C
_08104430:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, sp
	mov r10, r1
	adds r0, r7, #0x0
	bl sub_81DB964
	str r0, [sp, #0x158]
	str r1, [sp, #0x15C]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r2, [sp, #0x14C]
	adds r0, r2, r7
	muls r0, r5
	bl sub_81DB964
	str r0, [sp, #0x160]
	str r1, [sp, #0x164]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r5, _08104784 @ =0x3FE00000
	ldr r6, _08104788 @ =0x00000000
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	adds r3, r6, #0x0
	adds r2, r5, #0x0
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r1, r10
	str r4, [r1, #0x04]
	ldr r0, [sp, #0x158]
	ldr r1, [sp, #0x15C]
	ldr r2, _0810477C @ =0x3FD00000
	ldr r3, _08104780 @ =0x00000000
	bl sub_81DB240
	ldr r2, _08104774 @ =0x40700000
	ldr r3, _08104778 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x160]
	ldr r1, [sp, #0x164]
	ldr r3, _08104770 @ =0x00000000
	ldr r2, _0810476C @ =0x3FE80000
	bl sub_81DB240
	bl sub_81DB9E0
	adds r4, r4, r0
	mov r2, r10
	str r4, [r2, #0x08]
	movs r7, #0x00
	ldr r0, [sp, #0x150]
	lsls r1, r0, #0x08
	add r0, sp, #0x140
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x14C]
	lsls r3, r2, #0x08
	cmp r1, r0
	blt _08104500
	adds r2, r1, #0x0
	mov r1, r10
_081044F2:
	adds r1, #0x04
	adds r7, #0x01
	cmp r7, #0x02
	bgt _08104500
	ldr r0, [r1, #0x00]
	cmp r2, r0
	bge _081044F2
_08104500:
	adds r0, r3, #0x0
	movs r1, #0x05
	bl __divsi3
	cmp r0, #0xFF
	bgt _08104510
	movs r0, #0x80
	lsls r0, r0, #0x01
_08104510:
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810451A
	adds r0, #0xFF
_0810451A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x154]
	cmp r7, #0x01
	bne _08104536
	ldr r2, _0810478C @ =0xFFFFFF00
	adds r0, r0, r2
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r0, r1
	str r1, [sp, #0x154]
_08104536:
	cmp r7, #0x02
	bne _0810454E
	ldr r2, [sp, #0x154]
	ldr r1, _0810478C @ =0xFFFFFF00
	adds r0, r2, r1
	movs r1, #0x03
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r0, r2
	str r2, [sp, #0x154]
_0810454E:
	cmp r7, #0x03
	bne _08104558
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x154]
_08104558:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	lsls r1, r7, #0x02
	str r1, [sp, #0x168]
	mov r5, r9
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810458E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810458E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x00]
	ldrb r4, [r1, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045AE
	cmp r4, #0x05
	bls _081045C6
_081045AE:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _081045BA
	mov r1, r9
	strb r0, [r1, #0x00]
_081045BA:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	bls _081045C6
	movs r0, #0x05
	strb r0, [r1, #0x00]
_081045C6:
	adds r5, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810465A
_081045D0:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081045DE
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081045DE:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x00]
	ldrb r4, [r5, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _081045FC
	cmp r4, #0x05
	bls _08104610
_081045FC:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104606
	strb r0, [r5, #0x00]
_08104606:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x05
	bls _08104610
	movs r0, #0x05
	strb r0, [r5, #0x00]
_08104610:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _0810461E
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_0810461E:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r5, #0x01]
	ldrb r4, [r5, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r4, r0
	bgt _0810463C
	cmp r4, #0x05
	bls _08104650
_0810463C:
	movs r1, #0x01
	add r8, r1
	cmp r4, r0
	ble _08104646
	strb r0, [r5, #0x01]
_08104646:
	ldrb r0, [r5, #0x01]
	cmp r0, #0x05
	bls _08104650
	movs r0, #0x05
	strb r0, [r5, #0x01]
_08104650:
	adds r5, #0x02
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081045D0
_0810465A:
	mov r4, r10
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
	cmp r4, r10
	bne _08104684
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r1, r0, #0x02
	adds r1, r1, r0
	mov r10, r1
_08104684:
	mov r4, r9
	adds r4, #0x05
	mov r2, r10
	lsls r1, r2, #0x02
	ldr r2, [sp, #0x168]
	adds r0, r2, r7
	lsls r0, r0, #0x04
	movs r2, #0x04
	add r0, sp
	adds r6, r1, r0
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046A6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046A6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	mov r1, r9
	strb r0, [r1, #0x05]
	ldrb r5, [r1, #0x05]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _081046C6
	cmp r5, #0x05
	bls _081046DE
_081046C6:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _081046D2
	mov r1, r9
	strb r0, [r1, #0x05]
_081046D2:
	mov r1, r9
	ldrb r0, [r1, #0x05]
	cmp r0, #0x05
	bls _081046DE
	movs r0, #0x05
	strb r0, [r1, #0x05]
_081046DE:
	adds r4, #0x01
	adds r6, #0x04
	subs r2, #0x01
	cmp r2, #0x00
	blt _0810479C
_081046E8:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _081046F6
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_081046F6:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r5, [r4, #0x00]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104714
	cmp r5, #0x05
	bls _08104728
_08104714:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810471E
	strb r0, [r4, #0x00]
_0810471E:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x05
	bls _08104728
	movs r0, #0x05
	strb r0, [r4, #0x00]
_08104728:
	ldr r0, [r6, #0x04]
	ldr r1, [sp, #0x154]
	muls r0, r1
	cmp r0, #0x00
	bge _08104736
	ldr r1, _08104790 @ =0x000003FF
	adds r0, r0, r1
_08104736:
	asrs r0, r0, #0x0A
	adds r0, #0x01
	strb r0, [r4, #0x01]
	ldrb r5, [r4, #0x01]
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	str r2, [sp, #0x16C]
	bl __divsi3
	adds r0, #0x03
	ldr r2, [sp, #0x16C]
	cmp r5, r0
	bgt _08104754
	cmp r5, #0x05
	bls _08104768
_08104754:
	movs r1, #0x01
	add r8, r1
	cmp r5, r0
	ble _0810475E
	strb r0, [r4, #0x01]
_0810475E:
	ldrb r0, [r4, #0x01]
	cmp r0, #0x05
	bls _08104768
	movs r0, #0x05
	strb r0, [r4, #0x01]
_08104768:
	adds r4, #0x02
	b _08104794
_0810476C: .4byte 0x3FE80000
_08104770: .4byte 0x00000000
_08104774: .4byte 0x40700000
_08104778: .4byte 0x00000000
_0810477C: .4byte 0x3FD00000
_08104780: .4byte 0x00000000
_08104784: .4byte 0x3FE00000
_08104788: .4byte 0x00000000
_0810478C: .4byte 0xFFFFFF00
_08104790: .4byte 0x000003FF
_08104794:
	adds r6, #0x08
	subs r2, #0x02
	cmp r2, #0x00
	bge _081046E8
_0810479C:
	mov r2, r8
	cmp r2, #0x03
	ble _081047EE
	lsrs r0, r2, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	mov r8, r0
	cmp r0, #0x00
	ble _081047EE
	ldr r0, [sp, #0x14C]
	movs r1, #0x0A
	bl __divsi3
	adds r5, r0, #0x3
_081047B8:
	movs r7, #0x00
	mov r4, r8
	subs r4, #0x01
_081047BE:
	adds r7, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r2, r0, #0x0
	mov r0, r9
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	beq _081047DC
	cmp r0, r5
	bne _081047E4
_081047DC:
	ldrb r0, [r1, #0x00]
	lsrs r0, r0, #0x01
	strb r0, [r1, #0x00]
	movs r7, #0x64
_081047E4:
	cmp r7, #0x1F
	ble _081047BE
	mov r8, r4
	cmp r4, #0x00
	bgt _081047B8
_081047EE:
	add sp, #0x170
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8104800
sub_8104800:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r0, _08104880 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08104874
	movs r2, #0x12
	ldsh r5, [r6, r2]
	ldr r1, _08104884 @ =0x03000FF4
	lsls r0, r5, #0x04
	subs r0, r0, r5
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldr r0, _08104888 @ =0x03000FDC
	ldr r3, [r0, #0x00]
	ldr r7, _0810488C @ =0x00008E34
	adds r0, r3, r7
	adds r1, #0x30
	ldrb r1, [r1, #0x00]
	subs r7, #0x18
	adds r2, r3, r7
	adds r7, #0x0C
	adds r3, r3, r7
	ldr r7, _08104890 @ =0x00000342
	adds r4, r4, r7
	ldrb r4, [r4, #0x00]
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	bl sub_8104350
	mov r0, r8
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r6, #0x10]
	ldr r0, _08104894 @ =0x08104981
	str r0, [r6, #0x04]
	ldr r0, _08104898 @ =0x00000123
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08104874:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104880: .4byte 0x03000FD8
_08104884: .4byte 0x03000FF4
_08104888: .4byte 0x03000FDC
_0810488C: .4byte 0x00008E34
_08104890: .4byte 0x00000342
_08104894: .4byte sub_8104980
_08104898: .4byte 0x00000123
	thumb_func_start sub_810489C
sub_810489C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	adds r5, r1, #0x0
	ldrh r0, [r0, #0x10]
	ldr r7, _081048EC @ =0x000007FF
	ands r7, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x1B
	cmp r7, #0x00
	bne _081048D4
	adds r6, #0x01
	cmp r6, #0x0A
	bne _081048C0
	movs r6, #0x00
_081048C0:
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081048F4 @ =0x00008E34
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r2, r8
	strh r0, [r2, #0x16]
_081048D4:
	adds r7, #0x01
	cmp r7, r5
	bne _081048DC
	movs r7, #0x00
_081048DC:
	cmp r6, #0x00
	beq _081048FC
	ldr r0, _081048F0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	ldr r3, _081048F8 @ =0x00008E33
	adds r0, r0, r3
	b _08104904
_081048EC: .4byte 0x000007FF
_081048F0: .4byte 0x03000FDC
_081048F4: .4byte 0x00008E34
_081048F8: .4byte 0x00008E33
_081048FC:
	ldr r0, _08104964 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08104968 @ =0x00008E3D
	adds r0, r0, r1
_08104904:
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	mov r9, r0
	ldr r0, _0810496C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08104970 @ =0x00000342
	adds r0, r0, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x04
	adds r4, #0x28
	ldr r2, _08104974 @ =0x03001038
	ldr r0, _08104978 @ =0x0819832C
	ldr r1, _0810497C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r7, #0x06
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	movs r1, #0xB8
	bl sub_810D260
	adds r2, r0, #0x0
	mov r3, r8
	movs r1, #0x16
	ldsh r0, [r3, r1]
	str r5, [sp, #0x000]
	mov r1, r9
	adds r3, r4, #0x0
	bl sub_8109FEC
	lsls r0, r6, #0x0B
	orrs r7, r0
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08104964: .4byte 0x03000FDC
_08104968: .4byte 0x00008E3D
_0810496C: .4byte 0x03000FD8
_08104970: .4byte 0x00000342
_08104974: .4byte 0x03001038
_08104978: .4byte 0x0819832C
_0810497C: .4byte 0x08198220
	thumb_func_start sub_8104980
sub_8104980:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	bl sub_810489C
	strh r0, [r4, #0x10]
	ldr r0, _081049B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r0, _081049BC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081049C4
	strh r2, [r4, #0x14]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _081049C0 @ =0x08106A89
	str r0, [r4, #0x04]
	b _081049F2
_081049B8: .4byte 0x03000FD8
_081049BC: .4byte 0x0300034C
_081049C0: .4byte sub_8106A88
_081049C4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081049F2
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x0B
	bl sub_8082E1C
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	subs r1, #0xF1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r0, _081049F8 @ =0x08106AC9
	str r0, [r4, #0x04]
	ldr r0, _081049FC @ =0x00000123
	bl stop_sfx_80195A8
_081049F2:
	pop {r4, r5}
	pop {r0}
	bx r0
_081049F8: .4byte sub_8106AC8
_081049FC: .4byte 0x00000123
	thumb_func_start sub_8104A00
sub_8104A00:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08104A70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08104A74 @ =0x00000342
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r6, r0, #0x0
	adds r6, #0x28
	movs r0, #0x16
	ldsh r4, [r5, r0]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r7, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	ble _08104A68
	ldr r0, _08104A78 @ =0x00007003
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	movs r0, #0xB8
	strh r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x0A
	strh r0, [r4, #0x02]
	strh r7, [r4, #0x0E]
	str r4, [r5, #0x08]
	strh r7, [r5, #0x10]
	ldr r0, _08104A7C @ =0x08106A31
	str r0, [r5, #0x04]
	ldr r0, _08104A80 @ =0x00000123
	bl stop_sfx_80195A8
_08104A68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104A70: .4byte 0x03000FD8
_08104A74: .4byte 0x00000342
_08104A78: .4byte 0x00007003
_08104A7C: .4byte sub_8106A30
_08104A80: .4byte 0x00000123
	thumb_func_start sub_8104A84
sub_8104A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x024
	adds r5, r0, #0x0
	ldr r0, _08104B20 @ =0x03000FD8
	mov r9, r0
	ldr r0, [r0, #0x00]
	ldr r1, _08104B24 @ =0x00000342
	adds r0, r0, r1
	ldrb r6, [r0, #0x00]
	lsls r7, r6, #0x01
	adds r0, r7, #0x5
	lsls r0, r0, #0x03
	mov r8, r0
	movs r2, #0x16
	ldsh r4, [r5, r2]
	adds r0, r4, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	mov r2, r8
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	bgt _08104ACE
	b _08104C54
_08104ACE:
	ldrh r0, [r5, #0x16]
	movs r2, #0x0F
	ands r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r2, r1
	strh r2, [r5, #0x16]
	mov r1, r9
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r2, #0x16
	ldsh r0, [r5, r2]
	mov r12, r0
	ldr r0, _08104B28 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08104B2C @ =0x00008E1C
	adds r0, r0, r2
	adds r0, r0, r7
	ldrh r2, [r0, #0x00]
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r0, #0x20
	str r0, [sp, #0x008]
	movs r0, #0x0C
	str r0, [sp, #0x00C]
	movs r3, #0x16
	ldsh r0, [r5, r3]
	adds r4, r1, #0x0
	cmp r0, #0x09
	bgt _08104B30
	movs r0, #0xBC
	b _08104B32
_08104B20: .4byte 0x03000FD8
_08104B24: .4byte 0x00000342
_08104B28: .4byte 0x03000FDC
_08104B2C: .4byte 0x00008E1C
_08104B30:
	movs r0, #0xC0
_08104B32:
	str r0, [sp, #0x010]
	mov r0, r8
	str r0, [sp, #0x014]
	movs r1, #0xA8
	str r1, [sp, #0x018]
	lsls r0, r6, #0x04
	adds r0, #0x2A
	str r0, [sp, #0x01C]
	str r1, [sp, #0x020]
	adds r0, r5, #0x0
	mov r1, r12
	ldr r3, _08104B80 @ =0x00000999
	bl sub_8102108
	ldr r1, _08104B84 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r4
	str r0, [r1, #0x00]
	ldr r3, _08104B88 @ =0x03000FF4
	movs r0, #0x12
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r3, #0x00]
	adds r3, r1, r0
	ldr r1, _08104B8C @ =0x00000342
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	cmp r0, #0x05
	bhi _08104C4C
	lsls r0, r0, #0x02
	ldr r1, _08104B90 @ =0x08104B94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08104B80: .4byte 0x00000999
_08104B84: .4byte 0x03000FD8
_08104B88: .4byte 0x03000FF4
_08104B8C: .4byte 0x00000342
_08104B90: .4byte 0x08104B94
	.byte 0xAC, 0x4B, 0x10, 0x08, 0xC8, 0x4B, 0x10, 0x08, 0xE4, 0x4B, 0x10, 0x08, 0x00, 0x4C, 0x10, 0x08
	.byte 0x1C, 0x4C, 0x10, 0x08, 0x38, 0x4C, 0x10, 0x08, 0xE8, 0x8A, 0x1A, 0x8A, 0x80, 0x18, 0x18, 0x82
	.byte 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x46, 0xD9, 0x19, 0x82, 0x44, 0xE0, 0x00, 0x00
	.byte 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xD9, 0x8A, 0x40, 0x18, 0xD8, 0x82, 0x00, 0x04, 0x00, 0x0C
	.byte 0x02, 0x49, 0x88, 0x42, 0x38, 0xD9, 0xD9, 0x82, 0x36, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00
	.byte 0xE8, 0x8A, 0x5A, 0x8B, 0x80, 0x18, 0x58, 0x83, 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42
	.byte 0x2A, 0xD9, 0x59, 0x83, 0x28, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0x59, 0x8C
	.byte 0x40, 0x18, 0x58, 0x84, 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x1C, 0xD9, 0x59, 0x84
	.byte 0x1A, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xDA, 0x8B, 0x80, 0x18, 0xD8, 0x83
	.byte 0x00, 0x04, 0x00, 0x0C, 0x02, 0x49, 0x88, 0x42, 0x0E, 0xD9, 0xD9, 0x83, 0x0C, 0xE0, 0x00, 0x00
	.byte 0xE7, 0x03, 0x00, 0x00, 0xE8, 0x8A, 0xD9, 0x8C, 0x40, 0x18, 0xD8, 0x84, 0x00, 0x04, 0x00, 0x0C
	.byte 0x07, 0x49, 0x88, 0x42, 0x00, 0xD9, 0xD9, 0x84
_08104C4C:
	movs r0, #0x01
	strh r0, [r5, #0x10]
	ldr r0, _08104C68 @ =0x08104C6D
	str r0, [r5, #0x04]
_08104C54:
	add sp, #0x024
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00
_08104C68: .4byte sub_8104C6C
	thumb_func_start sub_8104C6C
sub_8104C6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x2B
	bgt _08104C8E
	cmp r0, #0x20
	bne _08104C86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
_08104C86:
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	strh r0, [r5, #0x10]
	b _08104D06
_08104C8E:
	movs r0, #0x79
	bl stop_sfx_80195A8
	ldr r4, [r5, #0x0C]
	cmp r4, #0x00
	beq _08104CF2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08104CF2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08104CCC
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104CC8 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08104CDA
_08104CC8: .4byte 0x00002003
_08104CCC:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104D0C @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08104CDA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08104CF2:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08104D10 @ =0x08106A11
	str r0, [r5, #0x04]
_08104D06:
	pop {r4, r5}
	pop {r0}
	bx r0
_08104D0C: .4byte 0x00002050
_08104D10: .4byte sub_8106A10
	thumb_func_start sub_8104D14
sub_8104D14:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08104D90 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08104DAC
	movs r1, #0x12
	ldsh r0, [r5, r1]
	ldr r2, _08104D94 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r4, [r2, #0x00]
	adds r4, r4, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_81230D0
	ldr r6, [r5, #0x0C]
	adds r4, #0x30
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8102CA4
	ldr r1, [r5, #0x04]
	ldr r0, _08104D98 @ =0x081054D5
	cmp r1, r0
	beq _08104DAC
	ldr r0, [r5, #0x0C]
	cmp r0, r6
	beq _08104DA8
	ldr r4, _08104D9C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	ldr r1, _08104DA0 @ =0x08104F11
	bl sub_807FFD8
	str r6, [r0, #0x0C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r1, #0x20
	strh r1, [r2, #0x34]
	ldr r0, [r0, #0x00]
	adds r0, #0x4A
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08104DA4 @ =0x08106BB1
	b _08104DAA
_08104D90: .4byte 0x0300034C
_08104D94: .4byte 0x03000FF4
_08104D98: .4byte sub_81054D4
_08104D9C: .4byte 0x03000FD8
_08104DA0: .4byte sub_8104F10
_08104DA4: .4byte sub_8106BB0
_08104DA8:
	ldr r0, _08104DB4 @ =0x08102F55
_08104DAA:
	str r0, [r5, #0x04]
_08104DAC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104DB4: .4byte sub_8102F54
	thumb_func_start sub_8104DB8
sub_8104DB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r7, #0x94
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r10, r1
	str r1, [sp, #0x000]
	movs r1, #0x02
	mov r9, r1
	str r1, [sp, #0x004]
	ldr r4, _08104E4C @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104E50 @ =0x089F808C
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	mov r8, r1
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104E48 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r5
	str r1, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
	movs r0, #0x00
	strh r0, [r6, #0x12]
	strh r0, [r6, #0x10]
	ldr r0, _08104E54 @ =0x08104E59
	str r0, [r6, #0x04]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08104E48: .4byte 0x03000FD8
_08104E4C: .4byte 0x084FB588
_08104E50: .4byte 0x089F808C
_08104E54: .4byte sub_8104E58
	thumb_func_start sub_8104E58
sub_8104E58:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0C
	ble _08104EF4
	movs r0, #0x00
	strh r0, [r7, #0x10]
	ldrh r0, [r7, #0x12]
	movs r1, #0x01
	eors r0, r1
	strh r0, [r7, #0x12]
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r10, r3
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0x1E
	mov r9, r1
	str r1, [sp, #0x000]
	movs r3, #0x02
	mov r8, r3
	str r3, [sp, #0x004]
	ldr r4, _08104F08 @ =0x084FB588
	adds r4, #0x4E
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	ldr r5, _08104F0C @ =0x089F808C
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r6, #0x80
	lsls r6, r6, #0x08
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084F28
	ldr r1, _08104F04 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	mov r3, r9
	str r3, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldrh r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	movs r3, #0x12
	ldsh r2, [r7, r3]
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x12
	bl sub_8084F28
_08104EF4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08104F04: .4byte 0x03000FD8
_08104F08: .4byte 0x084FB588
_08104F0C: .4byte 0x089F808C
	thumb_func_start sub_8104F10
sub_8104F10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	ldr r4, [r0, #0x0C]
	mov r5, sp
	adds r5, #0x0E
	add r6, sp, #0x010
	movs r0, #0xD8
	adds r0, r0, r4
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x18]
	subs r3, r3, r0
	movs r1, #0xDC
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r7, r4, #0x0
	adds r7, #0xE0
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087968
	movs r1, #0x90
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _08104F86
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x1C]
	adds r0, r0, r1
	str r0, [r4, #0x1C]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x20]
	b _08104FDA
_08104F86:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r1, r9
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x1C]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x20]
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x04]
_08104FDA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8104FEC
sub_8104FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	ble _0810500A
	subs r0, r1, #0x1
	mov r3, r8
	strh r0, [r3, #0x10]
	b _081050D2
_0810500A:
	mov r1, r8
	movs r2, #0x12
	ldsh r0, [r1, r2]
	ldr r2, _081050E0 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	adds r6, r0, #0x0
	ldr r0, _081050E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	str r6, [r1, #0x08]
	ldr r1, [r0, #0x00]
	movs r0, #0x1E
	strh r0, [r1, #0x10]
	ldr r0, _081050E8 @ =0x03001034
	mov r9, r0
	ldr r5, _081050EC @ =0x06010000
	ldr r1, _081050F0 @ =0x06017200
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _081050F4 @ =0x08198154
	ldr r0, _081050F8 @ =0x081980D8
	subs r7, r1, r0
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	movs r2, #0x0F
	mov r10, r2
	adds r4, r6, #0x0
	ands r4, r2
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	adds r0, r0, r5
	ldr r1, _081050FC @ =0x000072C0
	adds r1, r5, r1
	movs r2, #0x20
	bl _call_via_r3
	mov r0, r9
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	adds r4, r4, r5
	ldr r0, _08105100 @ =0x00007340
	adds r5, r5, r0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x20
	bl _call_via_r3
	lsrs r6, r6, #0x04
	cmp r6, #0x00
	beq _081050CC
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	mov r2, r10
	ands r6, r2
	lsls r4, r6, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	ldr r1, _081050EC @ =0x06010000
	adds r0, r0, r1
	ldr r1, _08105104 @ =0x060174A0
	movs r2, #0x20
	bl _call_via_r3
	mov r2, r9
	ldr r3, [r2, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	ldr r0, _081050EC @ =0x06010000
	adds r4, r4, r0
	ldr r1, _08105108 @ =0x06017520
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_081050CC:
	ldr r0, _0810510C @ =0x08105111
	mov r1, r8
	str r0, [r1, #0x04]
_081050D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081050E0: .4byte 0x03000FF4
_081050E4: .4byte 0x03000FD8
_081050E8: .4byte 0x03001034
_081050EC: .4byte 0x06010000
_081050F0: .4byte 0x06017200
_081050F4: .4byte 0x08198154
_081050F8: .4byte 0x081980D8
_081050FC: .4byte 0x000072C0
_08105100: .4byte 0x00007340
_08105104: .4byte 0x060174A0
_08105108: .4byte 0x06017520
_0810510C: .4byte sub_8105110
	thumb_func_start sub_8105110
sub_8105110:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r0, _0810517C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	ble _08105134
	b _081053A8
_08105134:
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x0C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08105188
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _08105180 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08105184 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
	b _081051BA
	.byte 0x00, 0x00
_0810517C: .4byte 0x03000FD8
_08105180: .4byte 0x084FB588
_08105184: .4byte 0x089F808C
_08105188:
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _081053B8 @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081053BC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
_081051BA:
	ldr r6, _081053C0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x78
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _081053C4 @ =0x00007003
	movs r0, #0x50
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	adds r5, r4, #0x0
	adds r5, #0x9C
	movs r1, #0x30
	str r1, [r5, #0x00]
	ldr r6, _081053C8 @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08105248
	adds r0, #0x3F
_08105248:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r7, _081053CC @ =0x08198504
	movs r3, #0x00
	ldsh r1, [r7, r3]
	cmp r1, #0x00
	bge _0810525E
	adds r1, #0x3F
_0810525E:
	asrs r1, r1, #0x06
	ldr r0, [r5, #0x00]
	muls r1, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	str r5, [sp, #0x014]
	ldr r1, _081053D0 @ =0x0819832C
	ldr r0, _081053D4 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
	ldr r0, _081053D8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x01
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081052A8
	adds r0, #0x3F
_081052A8:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081052C4
	adds r0, #0x3F
_081052C4:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r6, #0x02
_081052DA:
	ldr r0, _081053D8 @ =0x03001038
	mov r9, r0
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	mov r8, r1
	ands r0, r1
	lsls r3, r0, #0x01
	ldr r2, _081053C8 @ =0x08198584
	adds r0, r3, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105300
	adds r0, #0x3F
_08105300:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	ldr r7, _081053CC @ =0x08198504
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0810531E
	adds r0, #0x3F
_0810531E:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r0, r6, #0x1
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r10
	lsls r0, r0, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	mov r2, r8
	ands r0, r2
	lsls r3, r0, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _08105356
	adds r0, #0x3F
_08105356:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08105372
	adds r0, #0x3F
_08105372:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r6, #0x02
	cmp r6, #0x0B
	ble _081052DA
	ldr r0, _081053C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	ldr r0, _081053DC @ =0x081053E1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3E
	bl play_sfx_80195B4
_081053A8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081053B8: .4byte 0x084FB588
_081053BC: .4byte 0x089F808C
_081053C0: .4byte 0x03000FD8
_081053C4: .4byte 0x00007003
_081053C8: .4byte 0x08198584
_081053CC: .4byte 0x08198504
_081053D0: .4byte 0x0819832C
_081053D4: .4byte 0x08198220
_081053D8: .4byte 0x03001038
_081053DC: .4byte sub_81053E0
	thumb_func_start sub_81053E0
sub_81053E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r0, _081054BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r1, r8
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x06
	str r0, [r1, #0x00]
	mov r5, r8
	adds r5, #0x0C
	movs r6, #0x00
	ldr r2, _081054C0 @ =0x0819832C
	str r1, [sp, #0x004]
	adds r7, r1, #0x0
	ldr r0, _081054C4 @ =0x08198220
	subs r2, r2, r0
	mov r10, r2
_08105418:
	ldr r0, _081054C8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, _081054BC @ =0x03000FD8
	mov r9, r2
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x07
	adds r3, r0, r2
	ldr r1, _081054CC @ =0x08198584
	movs r0, #0xFF
	ands r0, r4
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r1, #0x00
	bge _08105458
	adds r1, #0x3F
_08105458:
	asrs r1, r1, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	adds r0, r3, r0
	str r0, [r5, #0x04]
	ldr r0, _081054D0 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105470
	adds r0, #0x3F
_08105470:
	asrs r1, r0, #0x06
	ldr r0, [r7, #0x00]
	muls r0, r1
	movs r2, #0xA0
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	adds r6, #0x01
	cmp r6, #0x0B
	ble _08105418
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x00]
	cmp r0, #0x9F
	ble _081054AA
	mov r0, r8
	bl sub_807C298
	mov r2, r9
	ldr r0, [r2, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x28
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x10]
	str r1, [r2, #0x04]
_081054AA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081054BC: .4byte 0x03000FD8
_081054C0: .4byte 0x0819832C
_081054C4: .4byte 0x08198220
_081054C8: .4byte 0x03001038
_081054CC: .4byte 0x08198584
_081054D0: .4byte 0x08198504
	thumb_func_start sub_81054D4
sub_81054D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r5, _0810566C @ =0x03000FF4
	ldr r1, [r5, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r7, #0x7E
	ldrb r1, [r7, r2]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r7, r2]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _08105528
	adds r1, r0, #0x0
_08105528:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r5, #0x83
	lsls r5, r5, #0x01
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	movs r7, #0x81
	lsls r7, r7, #0x01
	mov r10, r7
	mov r5, r10
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	adds r7, #0x02
	mov r9, r7
	mov r5, r9
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	adds r7, #0x04
	mov r8, r7
	mov r5, r8
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r7, #0x23
	adds r1, r2, r7
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r6, #0x96
	lsls r6, r6, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _08105670 @ =0x0000012D
	adds r1, r2, r5
	strb r0, [r1, #0x00]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08105648
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r7, _0810566C @ =0x03000FF4
	ldr r1, [r7, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r0, #0x7E
	adds r0, r0, r2
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081055EA
	adds r1, r0, #0x0
_081055EA:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r7, #0x83
	lsls r7, r7, #0x01
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	mov r7, r10
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	mov r7, r9
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	mov r7, r8
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _08105674 @ =0x0000012B
	adds r1, r2, r3
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r5
	strb r0, [r1, #0x00]
_08105648:
	movs r0, #0x10
	bl sub_80F7538
	movs r0, #0x01
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x10]
	ldr r0, _08105678 @ =0x0810567D
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105668: .4byte 0x03000FD8
_0810566C: .4byte 0x03000FF4
_08105670: .4byte 0x0000012D
_08105674: .4byte 0x0000012B
_08105678: .4byte sub_810567C
	thumb_func_start sub_810567C
sub_810567C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08105690
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810577C
_08105690:
	ldr r4, _081056D4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldr r1, _081056D8 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810577C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810577C
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	bne _081056DC
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081056DC
	bl sub_8106724
	b _0810577C
	.byte 0x00, 0x00
_081056D4: .4byte 0x03000FD8
_081056D8: .4byte 0x000002BF
_081056DC:
	ldr r5, _08105784 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _08105788 @ =0x000002BF
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810577C
	movs r0, #0x01
	bl sub_8019628
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	ldr r7, _0810578C @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r4, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08105732
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105732:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08105774
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r4, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _08105774
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105774:
	bl sub_801A6B0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0810577C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105784: .4byte 0x03000FD8
_08105788: .4byte 0x000002BF
_0810578C: .4byte 0x03000FF4
	thumb_func_start sub_8105790
sub_8105790:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _081057DC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x00
	beq _081057B0
	movs r5, #0xE9
	lsls r5, r5, #0x02
	adds r1, r2, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
_081057B0:
	ldr r0, [r6, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r1, _081057E0 @ =0x083BA948
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r7, r1, #0x0
	cmp r3, #0x00
	beq _081057E8
	ldr r0, _081057E4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	b _081057EA
_081057DC: .4byte 0x03000FD8
_081057E0: .4byte 0x083BA948
_081057E4: .4byte 0x0300034C
_081057E8:
	movs r0, #0x00
_081057EA:
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	movs r5, #0xE7
	lsls r5, r5, #0x02
	adds r3, r0, r5
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x4
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08105818
	ldr r0, _08105814 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810581A
_08105814: .4byte 0x0300034C
_08105818:
	movs r0, #0x00
_0810581A:
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r3, r0, r1
	adds r0, r2, r4
	lsls r0, r0, #0x02
	adds r1, r7, #0x0
	adds r1, #0x08
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810584C
	ldr r0, _08105848 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _0810584E
	.byte 0x00, 0x00
_08105848: .4byte 0x0300034C
_0810584C:
	movs r0, #0x00
_0810584E:
	str r0, [r3, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8105858
sub_8105858:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08105888 @ =0x03000FD8
	movs r0, #0xE9
	lsls r0, r0, #0x02
	mov r12, r0
	mov r8, r5
	movs r7, #0xE6
	lsls r7, r7, #0x02
	movs r6, #0x00
_0810586E:
	ldr r0, [r5, #0x00]
	mov r1, r12
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x02
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r2, #0x02
	bne _0810588C
	strb r6, [r3, #0x00]
	b _08105890
	.byte 0x00, 0x00
_08105888: .4byte 0x03000FD8
_0810588C:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
_08105890:
	cmp r4, #0x00
	beq _0810586E
	mov r2, r8
	ldr r1, [r2, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810590C
	ldr r2, _081058EC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _081058CA
	ldr r1, _081058F0 @ =0x083BA8FC
	ldr r0, _081058F4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r2, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	cmp r4, r0
	bne _081058CA
	ldr r0, _081058F8 @ =0x083BA910
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
_081058CA:
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08105900
	ldr r1, _081058FC @ =0x000003A5
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x20]
	b _0810590C
_081058EC: .4byte 0x0000033E
_081058F0: .4byte 0x083BA8FC
_081058F4: .4byte 0x0300034C
_081058F8: .4byte 0x083BA910
_081058FC: .4byte 0x000003A5
_08105900:
	ldr r3, _08105918 @ =0x000003A5
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
_0810590C:
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08105918: .4byte 0x000003A5
	thumb_func_start sub_810591C
sub_810591C:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08105944 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bne _08105940
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	bne _08105940
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08105948
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
_08105940:
	movs r0, #0x00
	b _081059CE
_08105944: .4byte 0x03000FD8
_08105948:
	movs r7, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	ldr r5, _081059D4 @ =0x00000111
	movs r6, #0x01
_08105952:
	ldr r2, [r3, #0x00]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x38
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x04]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x08]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	ldr r2, [r3, #0x0C]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08105940
	adds r3, #0x10
	adds r7, #0x04
	cmp r7, #0x07
	ble _08105952
	movs r0, #0x01
_081059CE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081059D4: .4byte 0x00000111
	thumb_func_start sub_81059D8
sub_81059D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	str r1, [sp, #0x000]
	movs r7, #0x00
	ldr r0, _08105A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08105A48 @ =0x000002BE
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	cmp r7, r1
	bge _08105A76
	ldr r0, _08105A4C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r2, _08105A50 @ =0x00008E4E
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	mov r10, r0
	cmp r1, r9
	bgt _08105A76
	ldr r4, _08105A54 @ =0x00008E4A
	movs r3, #0x00
_08105A10:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, _08105A50 @ =0x00008E4E
	adds r2, r1, r0
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	bne _08105A58
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r0, r0, r2
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x09
	bhi _08105A3C
	b _08105BF0
_08105A3C:
	movs r0, #0x09
	strb r0, [r1, #0x00]
	b _08105BF0
	.byte 0x00, 0x00
_08105A44: .4byte 0x03000FD8
_08105A48: .4byte 0x000002BE
_08105A4C: .4byte 0x03000FDC
_08105A50: .4byte 0x00008E4E
_08105A54: .4byte 0x00008E4A
_08105A58:
	adds r3, #0x02
	adds r7, #0x01
	ldr r1, _08105B18 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r7, r0
	bge _08105A76
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	ble _08105A10
_08105A76:
	ldr r2, _08105B18 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1A
	lsrs r0, r1, #0x1D
	cmp r0, #0x03
	bls _08105A8A
	b _08105BF0
_08105A8A:
	adds r4, r0, #0x0
	ldr r2, _08105B20 @ =0x03000FDC
	mov r10, r2
	cmp r4, r7
	bgt _08105A96
	b _08105BB0
_08105A96:
	mov r6, r10
	ldr r0, _08105B24 @ =0x00008E4A
	mov r8, r0
	lsls r3, r4, #0x01
	subs r5, r3, #0x2
	ldr r1, _08105B28 @ =0x00008E4E
	mov r12, r1
	subs r1, r7, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08105B2C
	cmp r1, #0x03
	bge _08105AF8
	cmp r1, #0x02
	bge _08105AD4
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r12
	adds r1, r0, r3
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, r3, #0x4
	adds r4, r2, #0x0
_08105AD4:
	mov r2, r10
	ldr r0, [r2, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	adds r4, r2, #0x0
_08105AF8:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	b _08105BAA
_08105B18: .4byte 0x03000FD8
_08105B1C: .4byte 0x000002BE
_08105B20: .4byte 0x03000FDC
_08105B24: .4byte 0x00008E4A
_08105B28: .4byte 0x00008E4E
_08105B2C:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x2
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x4
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x6
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x08
_08105BAA:
	adds r4, r2, #0x0
	cmp r4, r7
	bgt _08105B2C
_08105BB0:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _08105C00 @ =0x00008E4A
	adds r0, r0, r1
	adds r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #0x00]
	strb r2, [r0, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	ldr r2, _08105C04 @ =0x00008E4E
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08105C08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08105C0C @ =0x000002BE
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x01
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_08105BF0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105C00: .4byte 0x00008E4A
_08105C04: .4byte 0x00008E4E
_08105C08: .4byte 0x03000FD8
_08105C0C: .4byte 0x000002BE
	thumb_func_start sub_8105C10
sub_8105C10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08105C68 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	ldr r0, _08105C6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _08105C70 @ =0x000002BE
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x1D
	movs r4, #0x00
	mov r9, r1
	cmp r4, r5
	bge _08105CF6
	movs r6, #0x7F
	ldr r7, _08105C74 @ =0x03000FDC
	mov r8, r7
	ldr r0, _08105C78 @ =0x083BE67C
	mov r12, r0
	ldr r1, _08105C7C @ =0x083BBDD0
	mov r10, r1
_08105C48:
	mov r7, r8
	ldr r0, [r7, #0x00]
	lsls r1, r4, #0x01
	ldr r7, _08105C80 @ =0x00008E4E
	adds r0, r0, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	lsrs r0, r1, #0x07
	cmp r0, #0x02
	beq _08105C92
	cmp r0, #0x02
	bgt _08105C84
	cmp r0, #0x01
	beq _08105C8E
	b _08105CBA
	.byte 0x00, 0x00
_08105C68: .4byte 0x0300034C
_08105C6C: .4byte 0x03000FD8
_08105C70: .4byte 0x000002BE
_08105C74: .4byte 0x03000FDC
_08105C78: .4byte 0x083BE67C
_08105C7C: .4byte 0x083BBDD0
_08105C80: .4byte 0x00008E4E
_08105C84:
	cmp r0, #0x03
	beq _08105CA6
	cmp r0, #0x04
	beq _08105CB0
	b _08105CBA
_08105C8E:
	movs r3, #0x0C
	b _08105CBA
_08105C92:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r12
	ldrb r0, [r1, #0x11]
	adds r3, r0, #0x0
	adds r3, #0x0C
	b _08105CBA
_08105CA6:
	adds r0, r6, #0x0
	ands r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	b _08105CBA
_08105CB0:
	adds r0, r6, #0x0
	ands r0, r1
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
_08105CBA:
	movs r0, #0x0B
	muls r0, r4
	adds r0, #0x32
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x77
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _08105CE4
	cmp r3, #0x07
	beq _08105CE4
	cmp r3, #0x08
	beq _08105CE4
	cmp r3, #0x09
	bne _08105CE6
_08105CE4:
	movs r0, #0x01
_08105CE6:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	adds r4, #0x01
	cmp r4, r5
	blt _08105C48
_08105CF6:
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r9
	str r2, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8105D0C
sub_8105D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	beq _08105D26
	subs r0, r1, #0x1
	strh r0, [r7, #0x10]
	b _08105DDA
_08105D26:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08105DDA
	ldr r0, _08105DE8 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, _08105DEC @ =0x0000033F
	mov r8, r2
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r3, _08105DF0 @ =0x00002038
	cmp r2, #0x00
	beq _08105D54
	adds r3, #0x2F
_08105D54:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08105DF4 @ =0x00008004
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x00
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105D7C
	adds r0, #0xFF
_08105D7C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105D8C
	adds r0, #0xFF
_08105D8C:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08105DF8 @ =0x083B950C
	ldrb r0, [r0, #0x03]
	strh r0, [r7, #0x10]
	ldr r0, _08105DFC @ =0x08105E01
	str r0, [r7, #0x04]
	mov r1, r9
	ldr r0, [r1, #0x00]
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r2, #0xEF
	cmp r0, #0x00
	beq _08105DD0
	movs r2, #0xFD
_08105DD0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08105DDA:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105DE8: .4byte 0x03000FD8
_08105DEC: .4byte 0x0000033F
_08105DF0: .4byte 0x00002038
_08105DF4: .4byte 0x00008004
_08105DF8: .4byte 0x083B950C
_08105DFC: .4byte sub_8105E00
	thumb_func_start sub_8105E00
sub_8105E00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08105E14
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08105E58
_08105E14:
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08105E60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r1, #0x04
	cmp r2, #0x00
	beq _08105E3A
	movs r1, #0x01
_08105E3A:
	ldr r3, _08105E64 @ =0x00002001
	cmp r2, #0x00
	beq _08105E42
	adds r3, #0x4D
_08105E42:
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x10
	strh r0, [r4, #0x10]
	ldr r1, _08105E68 @ =0x08105E6D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08105E58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105E60: .4byte 0x03000FD8
_08105E64: .4byte 0x00002001
_08105E68: .4byte sub_8105E6C
	thumb_func_start sub_8105E6C
sub_8105E6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r1, #0x10
	ldsh r2, [r7, r1]
	cmp r2, #0x00
	beq _08105E86
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _08105F10
_08105E86:
	ldr r0, _08105F1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x08]
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	str r2, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_807BC90
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08105EC4
	adds r0, #0xFF
_08105EC4:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08105ED4
	adds r1, #0xFF
_08105ED4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r5, #0x02]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, _08105F20 @ =0x083B950C
	ldrb r0, [r0, #0x01]
	strh r0, [r7, #0x10]
	ldr r0, _08105F24 @ =0x08106875
	str r0, [r7, #0x04]
	movs r0, #0x29
	mov r1, r8
	bl play_sfx_80195B4
_08105F10:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105F1C: .4byte 0x03000FD8
_08105F20: .4byte 0x083B950C
_08105F24: .4byte sub_8106874
	thumb_func_start sub_8105F28
sub_8105F28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _08105F48
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _08105FFC
_08105F48:
	ldr r0, _0810600C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08106010 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08106014 @ =0x00002088
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105FAC
	adds r0, #0xFF
_08105FAC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105FBC
	adds r0, #0xFF
_08105FBC:
	asrs r1, r0, #0x08
	adds r0, r7, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08106018 @ =0x00000155
	mov r1, r9
	bl play_sfx_80195B4
	movs r0, #0x40
	strh r0, [r6, #0x10]
	ldr r1, _0810601C @ =0x08106841
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_08105FFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810600C: .4byte 0x03000FD8
_08106010: .4byte 0x0000033F
_08106014: .4byte 0x00002088
_08106018: .4byte 0x00000155
_0810601C: .4byte sub_8106840
	thumb_func_start sub_8106020
sub_8106020:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldrh r0, [r7, #0x10]
	movs r2, #0x10
	ldsh r1, [r7, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810603E
	subs r0, #0x01
	strh r0, [r7, #0x10]
	b _081060D2
_0810603E:
	ldr r0, _081060E0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x08]
	ldr r1, _081060E4 @ =0x00008004
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08106086
	adds r0, #0xFF
_08106086:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08106096
	adds r1, #0xFF
_08106096:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _081060E8 @ =0x083B950C
	ldrb r0, [r0, #0x00]
	strh r0, [r7, #0x10]
	ldr r0, _081060EC @ =0x081060F1
	str r0, [r7, #0x04]
	movs r0, #0x28
	mov r1, r9
	bl play_sfx_80195B4
_081060D2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081060E0: .4byte 0x03000FD8
_081060E4: .4byte 0x00008004
_081060E8: .4byte 0x083B950C
_081060EC: .4byte sub_81060F0
	thumb_func_start sub_81060F0
sub_81060F0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106104
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106164
_08106104:
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r7, _0810616C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r3, _08106170 @ =0x00002038
	cmp r2, #0x00
	beq _0810612C
	adds r3, #0x2F
_0810612C:
	adds r0, r5, #0x0
	movs r1, #0x03
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106174 @ =0x08106179
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	cmp r0, #0x00
	beq _0810615A
	adds r2, #0x19
_0810615A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08106164:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810616C: .4byte 0x03000FD8
_08106170: .4byte 0x00002038
_08106174: .4byte sub_8106178
	thumb_func_start sub_8106178
sub_8106178:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _08106204 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081061FC
	adds r0, r2, #0x0
	movs r1, #0x04
	cmp r0, #0x00
	beq _081061AC
	movs r1, #0x01
_081061AC:
	ldr r2, _08106208 @ =0x00002001
	cmp r0, #0x00
	beq _081061B4
	adds r2, #0x4D
_081061B4:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	ldr r2, _0810620C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106210 @ =0x08106791
	str r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_081061FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106204: .4byte 0x03000FD8
_08106208: .4byte 0x00002001
_0810620C: .4byte 0x0000033F
_08106210: .4byte sub_8106790
	thumb_func_start sub_8106214
sub_8106214:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08106228
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810627C
_08106228:
	ldr r5, _08106284 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	ldr r2, _08106288 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810628C @ =0x0810136D
	str r0, [r6, #0x04]
_0810627C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106284: .4byte 0x03000FD8
_08106288: .4byte 0x0000033F
_0810628C: .4byte sub_810136C
	thumb_func_start sub_8106290
sub_8106290:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081062A6
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _08106396
_081062A6:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106396
	movs r4, #0x00
	ldr r5, _08106368 @ =0x03000FD8
_081062B4:
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x1
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x2
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x3
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r4, #0x04
	cmp r4, #0x07
	ble _081062B4
	ldr r0, _0810636C @ =0x00007009
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	ldr r5, _08106368 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807BC90
	movs r1, #0x00
	movs r0, #0x78
	strh r0, [r4, #0x00]
	ldr r0, _08106370 @ =0x0000FFF0
	strh r0, [r4, #0x02]
	strh r1, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r4, #0x14]
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	beq _08106374
	ldr r0, [r1, #0x10]
	ldrh r0, [r0, #0x14]
	orrs r0, r2
	orrs r0, r3
	mvns r0, r0
	b _08106378
	.byte 0x00, 0x00
_08106368: .4byte 0x03000FD8
_0810636C: .4byte 0x00007009
_08106370: .4byte 0x0000FFF0
_08106374:
	orrs r2, r3
	mvns r0, r2
_08106378:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x40
	ldr r3, _081063A0 @ =0x0000FFFF
	bl sub_807F708
	bl sub_810CAD0
	movs r0, #0x10
	strh r0, [r6, #0x10]
	ldr r0, _081063A4 @ =0x081066DD
	str r0, [r6, #0x04]
_08106396:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081063A0: .4byte 0x0000FFFF
_081063A4: .4byte sub_81066DC
	thumb_func_start sub_81063A8
sub_81063A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081063BC
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _081063FE
_081063BC:
	ldr r0, _08106404 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldrh r0, [r3, #0x02]
	adds r0, #0x10
	strh r0, [r3, #0x02]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5F
	ble _081063FE
	movs r2, #0x60
	strh r2, [r3, #0x02]
	ldrb r1, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	strh r2, [r4, #0x10]
	ldr r0, _08106408 @ =0x0810640D
	str r0, [r4, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_081063FE:
	pop {r4}
	pop {r0}
	bx r0
_08106404: .4byte 0x03000FD8
_08106408: .4byte sub_810640C
	thumb_func_start sub_810640C
sub_810640C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810642A
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _081064C8
_0810642A:
	ldr r0, _081064D8 @ =0x03000FD8
	ldr r5, [r0, #0x00]
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810644E
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	lsrs r1, r0, #0x1F
_0810644E:
	lsls r0, r1, #0x02
	adds r1, r5, #0x0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, _081064DC @ =0x03000FDC
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _0810646A
	adds r1, #0xFF
_0810646A:
	asrs r1, r1, #0x08
	ldr r7, _081064E0 @ =0x00008E10
	adds r0, r3, r7
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r2, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0810647E
	adds r0, #0xFF
_0810647E:
	asrs r0, r0, #0x08
	subs r0, #0x08
	ldr r2, _081064E4 @ =0x00008E12
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _081064E8 @ =0x00008E14
	adds r1, r3, r0
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	ldr r4, _081064EC @ =0x082010BC
	movs r0, #0x44
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0xB4
	lsls r1, r1, #0x01
	str r1, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r7
	str r1, [sp, #0x004]
	mov r1, r8
	str r1, [sp, #0x008]
	movs r1, #0x37
	str r1, [sp, #0x00C]
	ldr r1, _081064F0 @ =0x08106565
	str r1, [sp, #0x010]
	movs r1, #0x07
	adds r2, r4, #0x0
	movs r3, #0x0F
	bl sub_8079D1C
	str r0, [r5, #0x00]
	ldr r0, _081064F4 @ =0x08106689
	str r0, [r6, #0x04]
_081064C8:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081064D8: .4byte 0x03000FD8
_081064DC: .4byte 0x03000FDC
_081064E0: .4byte 0x00008E10
_081064E4: .4byte 0x00008E12
_081064E8: .4byte 0x00008E14
_081064EC: .4byte 0x082010BC
_081064F0: .4byte sub_8106564
_081064F4: .4byte sub_8106688
	thumb_func_start sub_81064F8
sub_81064F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08106530 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	subs r2, r0, #0x1
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08106514
	adds r0, #0xFF
_08106514:
	asrs r0, r0, #0x08
	subs r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x18]
	adds r0, #0x19
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106534
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _0810655A
_08106530: .4byte 0x03000FD8
_08106534:
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0xE8
	cmp r0, #0x00
	beq _08106548
	movs r2, #0xFA
_08106548:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	movs r0, #0x28
	strh r0, [r4, #0x10]
	ldr r0, _08106560 @ =0x08106651
	str r0, [r4, #0x04]
_0810655A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08106560: .4byte sub_8106650
	thumb_func_start sub_8106564
sub_8106564:
	push {r4, r5, lr}
	ldr r0, _081065B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x44
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r4, _081065B8 @ =0x03001034
	ldr r1, _081065BC @ =0x02000080
	movs r5, #0x80
	lsls r5, r5, #0x02
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C0 @ =0x02000280
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C4 @ =0x0300034C
	ldr r0, _081065C8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _081065CC @ =0x081065D1
	movs r1, #0x00
	bl sub_807FF48
	movs r1, #0x20
	strh r1, [r0, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
_081065B4: .4byte 0x03000FD8
_081065B8: .4byte 0x03001034
_081065BC: .4byte 0x02000080
_081065C0: .4byte 0x02000280
_081065C4: .4byte 0x0300034C
_081065C8: .4byte 0x0000FFFF
_081065CC: .4byte sub_81065D0
