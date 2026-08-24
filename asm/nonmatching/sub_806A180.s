	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806A196
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
_0806A196:
	pop {r4}
	pop {r1}
	bx r1
