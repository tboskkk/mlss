	.syntax unified
	.text

	thumb_func_start sub_80F2984
sub_80F2984:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r3, [r5, #0x2C]
	ldr r1, _080F29B4 @ =0x0000179D
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x00
	bne _080F299A
	b _080F2ABE
_080F299A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080F29BC
	movs r1, #0x00
	ldr r2, _080F29B8 @ =0x0000179E
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x0B
	lsrs r2, r0, #0x10
	b _080F29CA
	.byte 0x00, 0x00
_080F29B4: .4byte 0x0000179D
_080F29B8: .4byte 0x0000179E
_080F29BC:
	movs r2, #0x00
	ldr r1, _080F2AC4 @ =0x0000179E
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x0B
	lsrs r1, r0, #0x10
_080F29CA:
	ldr r0, _080F2AC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_8082D00
	ldr r2, [r5, #0x2C]
	ldr r0, _080F2AC4 @ =0x0000179E
	adds r2, r2, r0
	ldrh r4, [r2, #0x00]
	lsls r1, r4, #0x16
	lsrs r1, r1, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	lsls r3, r1, #0x05
	ldr r0, _080F2ACC @ =0xFFFFFC1F
	ands r0, r4
	orrs r0, r3
	strh r0, [r2, #0x00]
	cmp r1, #0x00
	bne _080F2A74
	ldr r0, [r5, #0x2C]
	ldr r6, _080F2AD0 @ =0x0000179D
	adds r4, r0, r6
	ldrb r3, [r4, #0x00]
	movs r0, #0x7C
	ands r0, r3
	cmp r0, #0x00
	beq _080F2A3E
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	lsls r2, r1, #0x02
	movs r0, #0x7D
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	cmp r1, #0x00
	bne _080F2A3E
	ldr r2, [r5, #0x2C]
	adds r2, r2, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080F2A3E:
	ldr r2, [r5, #0x2C]
	ldr r1, _080F2AD4 @ =0x0000179F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	ldr r4, _080F2AC4 @ =0x0000179E
	adds r2, r2, r4
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x05
	ldrh r3, [r2, #0x00]
	ldr r0, _080F2ACC @ =0xFFFFFC1F
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x2C]
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1B
	asrs r1, r1, #0x1B
	negs r1, r1
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080F2A74:
	ldr r2, [r5, #0x2C]
	ldr r4, _080F2AD0 @ =0x0000179D
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F2ABE
	ldr r3, _080F2AC4 @ =0x0000179E
	adds r0, r2, r3
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	adds r3, #0x01
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r1, r1, #0x1B
	lsrs r0, r0, #0x1B
	cmp r1, r0
	bne _080F2ABE
	ldr r0, _080F2AC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	ldr r1, [r5, #0x2C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080F2ABE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080F2AC4: .4byte 0x0000179E
_080F2AC8: .4byte 0x03000FD8
_080F2ACC: .4byte 0xFFFFFC1F
_080F2AD0: .4byte 0x0000179D
_080F2AD4: .4byte 0x0000179F
