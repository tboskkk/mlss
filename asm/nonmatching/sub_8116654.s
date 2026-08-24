	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r0, #0x2C]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r0, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x02
	bne _0811667A
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0811667A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
