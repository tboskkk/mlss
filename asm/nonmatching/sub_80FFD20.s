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
