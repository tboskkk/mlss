	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805D40A:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805D42C
	cmp r0, #0x10
	bgt _0805D426
	b _0805D5A2
_0805D426:
	cmp r0, #0x20
	beq _0805D44A
	b _0805D5A2
_0805D42C:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805D43E
	b _0805D5A2
_0805D43E:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805D5A2
_0805D44A:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805D4B8
	cmp r2, #0x01
	bgt _0805D468
	cmp r2, #0x00
	beq _0805D46E
	b _0805D5A2
_0805D468:
	cmp r2, #0x02
	beq _0805D54A
	b _0805D5A2
_0805D46E:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D48E
	mov r0, r12
	strb r0, [r4, #0x00]
_0805D48E:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805D53A
_0805D4B8:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805D4E0
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805D504
_0805D4E0:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805D504:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805D53A:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
	b _0805D5A2
_0805D54A:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D56C
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805D5A2
_0805D56C:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
_0805D5A2:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x1F
	bhi _0805D5B2
	b _0805D40A
_0805D5B2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
