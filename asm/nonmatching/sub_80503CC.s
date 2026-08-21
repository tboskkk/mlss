	.syntax unified
	.text

	thumb_func_start sub_80503CC
sub_80503CC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	mov r12, r0
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x00
	beq _080504A8
	ldr r1, _080504B0 @ =0x00000212
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080504A8
	cmp r2, #0x04
	bne _08050498
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r1, r5, r7
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805045C
	ldr r1, _080504B4 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r6, #0x02
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	adds r1, r2, r7
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	mov r1, r12
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	lsls r1, r1, #0x1B
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r3, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_0805045C:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08050490
	ldr r1, _080504B8 @ =0x0000033D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
_08050490:
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
_08050498:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080504A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080504B0: .4byte 0x00000212
_080504B4: .4byte 0x0000020F
_080504B8: .4byte 0x0000033D
