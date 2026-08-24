	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r3, r5, #0x0
	cmp r2, #0x03
	bls _081DCDDE
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x00
	bne _081DCDDE
	adds r1, r5, #0x0
	movs r0, #0xFF
	ands r4, r0
	lsls r3, r4, #0x08
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0x0F
	bls _081DCDD2
_081DCDBE:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0x0F
	bhi _081DCDBE
	b _081DCDD2
_081DCDCE:
	stm r1!, {r3}
	subs r2, #0x04
_081DCDD2:
	cmp r2, #0x03
	bhi _081DCDCE
	adds r3, r1, #0x0
	b _081DCDDE
_081DCDDA:
	strb r4, [r3, #0x00]
	adds r3, #0x01
_081DCDDE:
	adds r0, r2, #0x0
	subs r2, #0x01
	cmp r0, #0x00
	bne _081DCDDA
	adds r0, r5, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
