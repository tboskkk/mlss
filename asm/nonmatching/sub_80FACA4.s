	ldr r0, [r0, #0x14]
	ldr r1, [r2, #0x00]
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r2, #0x04]
	adds r1, #0x3C
	movs r0, #0x01
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x03
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
