	.syntax unified
	.text

	thumb_func_start sub_8050078
sub_8050078:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, _080500A8 @ =0x02000001
	ands r0, r1
	cmp r0, r1
	beq _0805008E
	b _080501E0
_0805008E:
	ldr r0, _080500AC @ =0x0000033E
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1E
	lsrs r2, r0, #0x1E
	cmp r2, #0x02
	beq _080500E0
	cmp r2, #0x02
	bhi _080500B0
	cmp r2, #0x01
	beq _080500B6
	b _080501E0
	.byte 0x00, 0x00
_080500A8: .4byte 0x02000001
_080500AC: .4byte 0x0000033E
_080500B0:
	cmp r2, #0x03
	beq _08050100
	b _080501E0
_080500B6:
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _080500D8
	movs r1, #0x00
	movs r0, #0x80
	strb r0, [r5, #0x02]
	str r1, [r5, #0x18]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	subs r0, #0x07
	ands r0, r1
	movs r1, #0x02
	b _080500FA
_080500D8:
	ldrb r0, [r5, #0x02]
	adds r0, #0x10
	strb r0, [r5, #0x02]
	b _080501E0
_080500E0:
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080501E0
	movs r0, #0x3C
	strb r0, [r1, #0x00]
	ldrb r0, [r3, #0x00]
	movs r1, #0x03
_080500FA:
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080501E0
_08050100:
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	subs r1, #0x01
	strb r1, [r0, #0x00]
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	cmp r6, #0x00
	bne _080501A4
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	ldr r0, _08050158 @ =0x0000020D
	adds r3, r5, r0
	movs r4, #0x01
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _0805015C @ =0x0000033F
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
	ldr r1, _08050160 @ =0x0000023A
	adds r0, r5, r1
	strb r6, [r0, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	adds r2, r0, #0x0
	orrs r2, r4
	strb r2, [r1, #0x00]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08050168
	lsls r1, r2, #0x19
	ldr r0, _08050164 @ =0x0000033D
	b _0805016E
_08050158: .4byte 0x0000020D
_0805015C: .4byte 0x0000033F
_08050160: .4byte 0x0000023A
_08050164: .4byte 0x0000033D
_08050168:
	lsls r1, r2, #0x19
	movs r0, #0x85
	lsls r0, r0, #0x02
_0805016E:
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080501A0 @ =0x0000033E
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080501E0
	.byte 0x00, 0x00
_080501A0: .4byte 0x0000033E
_080501A4:
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x01
	beq _080501CC
	cmp r0, #0x01
	bgt _080501B6
	cmp r0, #0x00
	beq _080501C0
	b _080501E0
_080501B6:
	cmp r0, #0x02
	beq _080501C0
	cmp r0, #0x03
	beq _080501D8
	b _080501E0
_080501C0:
	ldr r0, _080501C8 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0x00
	b _080501DE
_080501C8: .4byte 0x0000023A
_080501CC:
	ldr r0, _080501D4 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0xFF
	b _080501DE
_080501D4: .4byte 0x0000023A
_080501D8:
	ldr r0, _080501E8 @ =0x0000023A
	adds r1, r5, r0
	movs r0, #0x01
_080501DE:
	strb r0, [r1, #0x00]
_080501E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080501E8: .4byte 0x0000023A
