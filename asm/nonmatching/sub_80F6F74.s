	.syntax unified
	.text

	thumb_func_start sub_80F6F74
sub_80F6F74:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsrs r0, r0, #0x17
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080F7006
	lsls r0, r0, #0x02
	ldr r1, _080F6F90 @ =lbl_080F6F94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F6F90: .4byte lbl_080F6F94
lbl_080F6F94:
	.4byte _080F6FAC
	.4byte _080F6FBC
	.4byte _080F6FCC
	.4byte _080F6FF4
	.4byte _080F7002
	.4byte _080F6FDC
_080F6FAC:
	ldr r0, [pc, #8] @ (0x80f6fb8)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #186 @ 0xba
	b.n _080F6FE8
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080F6FBC:
	ldr r0, [pc, #8] @ (0x80f6fc8)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #242 @ 0xf2
	b.n _080F6FE8
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080F6FCC:
	ldr r0, [pc, #8] @ (0x80f6fd8)
	movs r1, #127 @ 0x7f
	ands r1, r3
	adds r1, #170 @ 0xaa
	b.n _080F6FE8
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080F6FDC:
	ldr r0, [pc, #16] @ (0x80f6ff0)
	movs r1, #127 @ 0x7f
	ands r1, r3
	movs r2, #149 @ 0x95
	lsls r2, r2, #1
	adds r1, r1, r2
_080F6FE8:
	ldr r0, [r0, #0]
	adds r5, r0, r1
	b.n _080F7006
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080F6FF4:
	lsls r0, r3, #24
	lsrs r0, r0, #24
	lsls r1, r6, #16
	asrs r1, r1, #16
	bl sub_80F7068
	b.n _080F7060
_080F7002:
	movs r0, #0
	b.n _080F7060
_080F7006:
	ldrb r0, [r5, #0x00]
	movs r1, #0x00
	cmp r0, #0xFF
	beq _080F7010
	adds r1, r0, #0x0
_080F7010:
	adds r4, r1, #0x0
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	ble _080F7046
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x7F
	adds r1, r3, #0x0
	ands r1, r2
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	bl sub_8122E30
	movs r2, #0x00
	ldrb r1, [r5, #0x00]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080F7042
	movs r2, #0x01
_080F7042:
	adds r0, r2, #0x0
	b _080F7060
_080F7046:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bge _080F705C
	movs r0, #0x00
	strb r0, [r5, #0x00]
	movs r0, #0x00
	b _080F7060
_080F705C:
	strb r4, [r5, #0x00]
	movs r0, #0x01
_080F7060:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
