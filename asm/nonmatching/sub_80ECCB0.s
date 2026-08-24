	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080ECCEC
	cmp r2, #0x01
	bgt _080ECCCC
	cmp r2, #0x00
	beq _080ECCDC
	ldr r2, _080ECCC8 @ =0x03000FD0
	b _080ECD1A
_080ECCC8: .4byte 0x03000FD0
_080ECCCC:
	cmp r2, #0x02
	beq _080ECCFC
	cmp r2, #0x03
	beq _080ECD0C
	ldr r2, _080ECCD8 @ =0x03000FD0
	b _080ECD1A
_080ECCD8: .4byte 0x03000FD0
_080ECCDC:
	movs r6, #0x00
	ldr r0, _080ECCE8 @ =0x03000FD0
	ldr r3, [r0, #0x00]
	adds r2, r0, #0x0
	b _080ECD1A
	.byte 0x00, 0x00
_080ECCE8: .4byte 0x03000FD0
_080ECCEC:
	movs r6, #0x03
	ldr r1, _080ECCF8 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	movs r2, #0xFC
	lsls r2, r2, #0x01
	b _080ECD16
_080ECCF8: .4byte 0x03000FD0
_080ECCFC:
	movs r6, #0x01
	ldr r1, _080ECD08 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	adds r3, r0, #0x0
	adds r3, #0xA8
	b _080ECD18
_080ECD08: .4byte 0x03000FD0
_080ECD0C:
	movs r6, #0x02
	ldr r1, _080ECD94 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	movs r2, #0xA8
	lsls r2, r2, #0x01
_080ECD16:
	adds r3, r0, r2
_080ECD18:
	adds r2, r1, #0x0
_080ECD1A:
	ldr r0, [r3, #0x00]
	str r0, [r3, #0x04]
	adds r1, r3, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	movs r5, #0x04
_080ECD2A:
	adds r0, r1, #0x0
	adds r0, #0xA4
	ldrb r0, [r0, #0x00]
	cmp r0, r6
	bne _080ECD3E
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080ECD3E
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
_080ECD3E:
	adds r1, #0xA8
	lsls r0, r5, #0x10
	ldr r2, _080ECD98 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080ECD2A
	ldr r0, [r4, #0x14]
	ldr r2, _080ECD9C @ =0x0000010B
	adds r1, r0, r2
	ldrb r5, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x28
	cmp r5, #0x00
	beq _080ECD8C
	ldr r0, _080ECDA0 @ =0x0000FFF7
	mov r12, r0
	movs r7, #0xFF
_080ECD62:
	ldr r2, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xFC
	ldrb r1, [r3, #0x00]
	adds r0, r1, #0x0
	cmp r0, r6
	bne _080ECD7E
	orrs r0, r7
	strb r0, [r3, #0x00]
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	mov r0, r12
	ands r0, r1
	strh r0, [r2, #0x00]
_080ECD7E:
	lsls r0, r5, #0x10
	ldr r1, _080ECD98 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0x04
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080ECD62
_080ECD8C:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080ECD94: .4byte 0x03000FD0
_080ECD98: .4byte 0xFFFF0000
_080ECD9C: .4byte 0x0000010B
_080ECDA0: .4byte 0x0000FFF7
