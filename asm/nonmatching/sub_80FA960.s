	.syntax unified
	.text

	thumb_func_start sub_80FA960
sub_80FA960:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	movs r3, #0x00
	bl sub_81218E4
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldr r1, [r4, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r5, #0x1C
	ldrb r3, [r4, #0x0C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
