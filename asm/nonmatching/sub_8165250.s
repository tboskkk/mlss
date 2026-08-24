	push {r4, lr}
	ldr r4, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r0, [r0, #0x18]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	lsrs r3, r3, #0x0B
	orrs r2, r3
	lsrs r4, r4, #0x06
	orrs r2, r4
	strh r2, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
