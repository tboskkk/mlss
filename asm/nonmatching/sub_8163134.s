	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08163168 @ =0x03000FC0
	lsrs r2, r0, #0x15
	lsls r2, r2, #0x02
	adds r2, #0x20
	ldr r4, [r3, #0x00]
	adds r4, r4, r2
	movs r3, #0xF8
	lsls r3, r3, #0x0D
	ands r3, r0
	lsrs r3, r3, #0x10
	movs r5, #0x01
	adds r0, r5, #0x0
	lsls r0, r3
	ldr r2, [r4, #0x00]
	bics r2, r0
	ands r1, r5
	lsls r1, r3
	orrs r2, r1
	str r2, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08163168: .4byte 0x03000FC0
