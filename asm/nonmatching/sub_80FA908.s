	.syntax unified
	.text

	thumb_func_start sub_80FA908
sub_80FA908:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	bl sub_81218E4
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	movs r6, #0xAC
	lsls r6, r6, #0x01
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
