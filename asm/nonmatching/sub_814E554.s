	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x58
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r4, r5, r3
	cmp r1, #0x00
	bne _0814E5AA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r2, r5, r1
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r1, r5, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x18]
	str r0, [r1, #0x00]
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x20]
	b _0814E5C0
_0814E5AA:
	cmp r1, #0x01
	bne _0814E5C0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x00]
_0814E5C0:
	movs r4, #0xB3
	lsls r4, r4, #0x01
	adds r0, r6, r4
	movs r1, #0x00
	ldsh r6, [r0, r1]
	cmp r6, #0x00
	beq _0814E5D4
	cmp r6, #0x01
	beq _0814E660
	b _0814E698
_0814E5D4:
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0814E628
	ldr r1, [r4, #0x0C]
	ldr r0, _0814E620 @ =0xFFFFEC00
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	negs r1, r7
	ldr r2, _0814E624 @ =0x00000242
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	strh r6, [r0, #0x00]
	b _0814E698
_0814E620: .4byte 0xFFFFEC00
_0814E624: .4byte 0x00000242
_0814E628:
	ldr r1, [r4, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r0, #0xB0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E65C @ =0x00000242
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	b _0814E698
	.byte 0x00, 0x00
_0814E65C: .4byte 0x00000242
_0814E660:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r2, r2, r4
	ldr r3, [r0, #0x14]
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	str r6, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E6D4 @ =0x00000242
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r7, [r0, #0x00]
_0814E698:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E6D4: .4byte 0x00000242
