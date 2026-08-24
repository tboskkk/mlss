	push {r4, r5, lr}
	adds r3, r0, #0x0
	mov r12, r1
	adds r5, r2, #0x0
	movs r4, #0xEA
	lsls r4, r4, #0x01
	add r4, r12
	ldrh r0, [r4, #0x00]
	cmp r0, #0x01
	beq _0814F2D6
	cmp r0, #0x01
	bgt _0814F2B6
	cmp r0, #0x00
	beq _0814F2BC
	b _0814F342
_0814F2B6:
	cmp r0, #0x02
	beq _0814F2FC
	b _0814F342
_0814F2BC:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814F342
	adds r0, r3, #0x0
	mov r1, r12
	movs r2, #0x01
	b _0814F2EE
_0814F2D6:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814F342
	adds r0, r3, #0x0
	mov r1, r12
	movs r2, #0x02
_0814F2EE:
	movs r3, #0x01
	bl sub_814FDEC
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	b _0814F342
_0814F2FC:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	movs r1, #0x2C
	ldsh r0, [r0, r1]
	cmp r0, #0x5F
	ble _0814F342
	ldr r4, _0814F348 @ =0x0000020D
	mov r0, r12
	adds r3, r0, r4
	ldrb r2, [r3, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	strb r1, [r0, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814F34C @ =0x0814F351
	str r0, [r5, #0x00]
_0814F342:
	pop {r4, r5}
	pop {r0}
	bx r0
_0814F348: .4byte 0x0000020D
_0814F34C: .4byte sub_814F350
