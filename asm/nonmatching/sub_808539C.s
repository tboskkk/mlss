	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x10
	adds r5, r6, #0x5
	movs r0, #0x0B
	mov r8, r0
_080853AE:
	ldrb r0, [r5, #0x00]
	movs r7, #0x7F
	adds r1, r7, #0x0
	ands r1, r0
	strb r1, [r5, #0x00]
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _080853D6
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r0, r6, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x00]
_080853D6:
	ldrb r0, [r5, #0x14]
	adds r1, r7, #0x0
	ands r1, r0
	strb r1, [r5, #0x14]
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	beq _080853FC
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r0, r6, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x14]
_080853FC:
	adds r1, r5, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	adds r2, r7, #0x0
	ands r2, r0
	strb r2, [r1, #0x00]
	ldr r3, [r4, #0x28]
	cmp r3, #0x00
	beq _08085426
	lsrs r1, r2, #0x06
	lsls r1, r1, #0x02
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r3, #0x0
	bl sub_80E9384
	movs r0, #0x00
	str r0, [r4, #0x28]
_08085426:
	adds r4, #0x3C
	adds r5, #0x3C
	movs r3, #0x03
	negs r3, r3
	add r8, r3
	mov r0, r8
	cmp r0, #0x00
	bge _080853AE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
