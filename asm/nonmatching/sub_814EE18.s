	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	mov r8, r1
	ldr r0, [r1, #0x0C]
	mov r10, r0
	ldr r6, [r1, #0x10]
	ldr r1, [r4, #0x0C]
	str r1, [sp, #0x018]
	ldr r0, [r4, #0x10]
	mov r9, r0
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EEC4 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814EE6A
	b _0814F058
_0814EE6A:
	mov r1, r10
	ldr r0, [sp, #0x018]
	subs r5, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EE78
	negs r1, r5
_0814EE78:
	mov r0, r9
	subs r7, r6, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _0814EE84
	negs r0, r7
_0814EE84:
	cmp r1, r0
	blt _0814EF44
	adds r3, r5, #0x0
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _0814EE92
	negs r1, r3
_0814EE92:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EEEC
	cmp r3, #0x00
	bge _0814EEC8
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x02
	beq _0814EEBC
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0814EF88
_0814EEBC:
	cmp r6, r9
	blt _0814EEC2
	b _0814EFC8
_0814EEC2:
	b _0814EF8C
_0814EEC4: .4byte 0x00007FFF
_0814EEC8:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x06
	beq _0814EEE6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x06
	beq _0814EF88
_0814EEE6:
	cmp r6, r9
	bge _0814EFBC
	b _0814EF7E
_0814EEEC:
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r3, r1, r0
	cmp r3, #0x00
	bge _0814EEFA
	negs r3, r3
_0814EEFA:
	ldr r0, _0814EF2C @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	subs r0, r6, r0
	subs r6, r0, r3
	mov r1, r9
	subs r6, r1, r6
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r2, r0, r3
	mov r0, r9
	subs r2, r2, r0
	cmp r5, #0x00
	bge _0814EF30
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x02
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814EF2C: .4byte 0x00000276
_0814EF30:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x05
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x06
	bl sub_8150388
	b _0814F05A
_0814EF44:
	adds r3, r7, #0x0
	adds r1, r7, #0x0
	cmp r7, #0x00
	bge _0814EF4E
	negs r1, r7
_0814EF4E:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EFD4
	cmp r7, #0x00
	bge _0814EF98
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x04
	beq _0814EF78
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0814EF88
_0814EF78:
	ldr r1, [sp, #0x018]
	cmp r10, r1
	blt _0814EF8C
_0814EF7E:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _0814F058
_0814EF88:
	movs r0, #0x01
	b _0814F05A
_0814EF8C:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _0814F058
	b _0814EF88
_0814EF98:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x00
	beq _0814EFB6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814EF88
_0814EFB6:
	ldr r0, [sp, #0x018]
	cmp r10, r0
	blt _0814EFC8
_0814EFBC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x07
	bne _0814F058
	b _0814EF88
_0814EFC8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _0814F058
	b _0814EF88
_0814EFD4:
	cmp r7, #0x00
	bge _0814EFDA
	negs r3, r7
_0814EFDA:
	ldr r1, _0814F034 @ =0x03001038
	mov r9, r1
	ldr r4, _0814F038 @ =0x0819832C
	ldr r0, _0814F03C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r5, _0814F040 @ =0x00000272
	add r5, r8
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	str r3, [sp, #0x01C]
	bl _call_via_r2
	mov r1, r10
	subs r0, r1, r0
	ldr r3, [sp, #0x01C]
	subs r6, r0, r3
	ldr r0, [sp, #0x018]
	subs r6, r0, r6
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	add r0, r10
	ldr r3, [sp, #0x01C]
	adds r2, r0, r3
	ldr r0, [sp, #0x018]
	subs r2, r2, r0
	cmp r7, #0x00
	bge _0814F044
	movs r0, #0x05
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x04
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814F034: .4byte 0x03001038
_0814F038: .4byte 0x0819832C
_0814F03C: .4byte 0x08198220
_0814F040: .4byte 0x00000272
_0814F044:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_8150388
	b _0814F05A
_0814F058:
	movs r0, #0x00
_0814F05A:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
