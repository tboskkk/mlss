	.syntax unified
	.text

	thumb_func_start sub_80ED9A4
sub_80ED9A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	mov r8, r1
	ldr r5, [r3, #0x04]
	ldr r6, _080ED9FC @ =0x03000FD0
	ldr r1, [r6, #0x00]
	lsls r0, r5, #0x01
	ldr r7, _080EDA00 @ =0x00000554
	adds r2, r1, r7
	adds r0, r2, r0
	ldr r1, [r3, #0x00]
	strh r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	cmp r1, #0x00
	beq _080EDA58
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8028D6C
	cmp r5, #0x01
	bne _080EDA24
	mov r0, r8
	cmp r0, #0x00
	beq _080EDA04
	ldr r3, [r6, #0x00]
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r7, #0x06
	adds r3, r3, r7
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080EDA24
	.byte 0x00, 0x00
_080ED9FC: .4byte 0x03000FD0
_080EDA00: .4byte 0x00000554
_080EDA04:
	ldr r2, [r6, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x03
	adds r1, r2, r0
	ldr r7, _080EDA50 @ =0x0000055A
	adds r2, r2, r7
	movs r0, #0x07
	ldrb r1, [r1, #0x00]
	ands r1, r0
	lsls r1, r1, #0x03
	ldrb r3, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EDA24:
	ldr r6, _080EDA54 @ =0x03000FD0
	ldr r2, [r6, #0x00]
	movs r3, #0x00
	cmp r5, #0x00
	bne _080EDA30
	movs r3, #0x01
_080EDA30:
	ldr r4, _080EDA50 @ =0x0000055A
	adds r2, r2, r4
	lsls r3, r3, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	b _080EDA9A
_080EDA50: .4byte 0x0000055A
_080EDA54: .4byte 0x03000FD0
_080EDA58:
	ldr r0, [r4, #0x14]
	ldrh r1, [r2, #0x00]
	bl sub_8028D6C
	ldr r2, [r6, #0x00]
	ldr r1, _080EDAA8 @ =0x00000554
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	negs r1, r1
	ldr r4, _080EDAAC @ =0x0000055A
	adds r2, r2, r4
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	ldrb r3, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r7, _080EDAA8 @ =0x00000554
	adds r0, r2, r7
	ldrh r1, [r0, #0x00]
	negs r1, r1
	adds r2, r2, r4
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	ldrb r3, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EDA9A:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EDAA8: .4byte 0x00000554
_080EDAAC: .4byte 0x0000055A
