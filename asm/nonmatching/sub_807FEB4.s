	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FEE6
	adds r0, r5, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FEE6
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FEE6:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x79
	cmp r0, #0x00
	beq _0807FF08
	adds r0, r5, #0x0
	bl sub_80877C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF08
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FF08:
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF18
	str r0, [r6, #0x04]
_0807FF18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
