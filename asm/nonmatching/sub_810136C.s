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
