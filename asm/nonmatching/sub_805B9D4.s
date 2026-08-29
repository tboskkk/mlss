	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r5, #0x00
	movs r0, #0xB0
	lsls r0, r0, #0x03
	adds r2, r7, r0
	movs r3, #0xFF
_0805B9E4:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B9E4
	ldr r1, _0805BA68 @ =0x0000057C
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805BA5E
	ldr r0, _0805BA6C @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805BA70 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _0805BA5E
	movs r5, #0x00
_0805BA12:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805BA4A
	ldr r3, _0805BA68 @ =0x0000057C
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805BA74 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r7, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805BA4A:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805BA12
_0805BA5E:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BA68: .4byte 0x0000057C
_0805BA6C: .4byte 0x03000DD0
_0805BA70: .4byte 0x083B79C4
_0805BA74: .4byte 0x0000FFFF
