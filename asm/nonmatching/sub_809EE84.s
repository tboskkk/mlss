	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809EF3A
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809EEA2
	adds r1, #0xFF
_0809EEA2:
	asrs r1, r1, #0x08
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r0, #0x00]
	adds r7, r1, r0
	ldr r1, [r5, #0x14]
	cmp r1, #0x00
	bge _0809EEB6
	adds r1, #0xFF
_0809EEB6:
	asrs r1, r1, #0x08
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r0, [r6, #0x00]
	adds r2, r1, r0
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809EEC8
	adds r3, #0xFF
_0809EEC8:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0x8C
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	ldr r0, _0809EF48 @ =0x0000263A
	adds r1, r7, #0x0
	bl sub_80DF024
	ldr r1, _0809EF4C @ =0x00004040
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	mov r1, r8
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x08
	ldr r1, [r0, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r2, [r6, #0x00]
	lsls r2, r2, #0x08
	ldr r1, [r0, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x08
	ldr r1, [r0, #0x18]
	adds r1, r1, r2
	str r1, [r0, #0x18]
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _0809EF50 @ =0x0809EF59
	str r1, [r0, #0x4C]
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809EF54 @ =0x0809F149
	str r0, [r5, #0x4C]
_0809EF3A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809EF48: .4byte 0x0000263A
_0809EF4C: .4byte 0x00004040
_0809EF50: .4byte sub_809EF58
_0809EF54: .4byte sub_809F148
