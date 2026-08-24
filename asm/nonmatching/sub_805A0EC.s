	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x0F
	adds r4, r0, #0x0
	adds r4, #0x36
	adds r4, r4, r1
	ldrh r4, [r4, #0x00]
	strh r4, [r2, #0x00]
	adds r0, #0x3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
