	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r3, r1, #0x0
	cmp r2, #0x0F
	bls _081DCD78
	adds r0, r3, #0x0
	orrs r0, r5
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DCD78
	adds r1, r5, #0x0
_081DCD52:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0x0F
	bhi _081DCD52
	cmp r2, #0x03
	bls _081DCD76
_081DCD6C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x04
	cmp r2, #0x03
	bhi _081DCD6C
_081DCD76:
	adds r4, r1, #0x0
_081DCD78:
	subs r2, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _081DCD92
	adds r1, r0, #0x0
_081DCD84:
	ldrb r0, [r3, #0x00]
	strb r0, [r4, #0x00]
	adds r3, #0x01
	adds r4, #0x01
	subs r2, #0x01
	cmp r2, r1
	bne _081DCD84
_081DCD92:
	adds r0, r5, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
