	push {r4, r5, r6, lr}
	ldr r0, _081073F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x58
	movs r6, #0x06
_0810738C:
	ldr r4, [r5, #0x00]
	cmp r4, #0x00
	beq _08107438
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08107438
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r2, [r0, #0x00]
	subs r1, #0x1E
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _081073F4
	ldr r0, [r4, #0x00]
	cmp r4, r0
	bne _081073C6
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	beq _081073D6
_081073C6:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
_081073D6:
	adds r0, r4, #0x0
	bl sub_81074EC
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08107438
	b _08107422
	.byte 0x00, 0x00
_081073F0: .4byte 0x03000FD8
_081073F4:
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08107438
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _08107414
	adds r0, r4, #0x0
	bl sub_8107670
	b _08107422
_08107414:
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08107422
	adds r0, r4, #0x0
	bl sub_810776C
_08107422:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	cmp r0, #0x00
	beq _08107438
	adds r0, r4, #0x0
	bl sub_810787C
_08107438:
	adds r5, #0x04
	subs r6, #0x01
	cmp r6, #0x00
	bgt _0810738C
	adds r6, r5, #0x0
	ldr r4, [r5, #0x00]
	cmp r4, #0x00
	beq _08107494
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08107494
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08107494
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08107482
	adds r0, r4, #0x0
	bl sub_8107A5C
	b _08107494
_08107482:
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08107494
	adds r0, r4, #0x0
	bl sub_8107BA4
_08107494:
	ldr r4, [r6, #0x04]
	cmp r4, #0x00
	beq _081074E6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081074E6
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081074E6
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081074D4
	adds r0, r4, #0x0
	bl sub_8107A5C
	b _081074E6
_081074D4:
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081074E6
	adds r0, r4, #0x0
	bl sub_8107BA4
_081074E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
