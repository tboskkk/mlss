	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r2, #0x0
	ldr r2, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r1, #0x02
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r0, r0, r4
	lsls r3, r3, #0x05
	ldr r1, [r0, #0x0C]
	adds r1, r1, r3
	lsls r2, r2, #0x05
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
