	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r2, _080FB7DC @ =0x083D6C58
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r3, [r0, #0x00]
	movs r2, #0x3F
	ands r2, r3
	strb r2, [r1, #0x00]
	ldrb r1, [r0, #0x03]
	lsls r1, r1, #0x08
	ldrb r2, [r0, #0x02]
	orrs r1, r2
	subs r0, r0, r1
	bx lr
	.byte 0x00, 0x00
_080FB7DC: .4byte 0x083D6C58
