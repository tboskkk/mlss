	.syntax unified
	.text

	thumb_func_start sub_805B074
sub_805B074:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0805B110 @ =0x0000076C
	adds r2, r6, r0
	movs r3, #0xFF
_0805B082:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B082
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B108
	ldr r2, _0805B114 @ =0x083AFC5C
	ldrh r1, [r6, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x05]
	ldr r1, _0805B118 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0805B108
	movs r5, #0x00
_0805B0BC:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805B0F4
	movs r3, #0xED
	lsls r3, r3, #0x03
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805B11C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	ldr r2, _0805B110 @ =0x0000076C
	adds r1, r6, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805B0F4:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B0BC
_0805B108:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B110: .4byte 0x0000076C
_0805B114: .4byte dword_83AFC5C @ =0x083AFC5C
_0805B118: .4byte dword_83B79C4 @ =0x083B79C4
_0805B11C: .4byte 0x0000FFFF
