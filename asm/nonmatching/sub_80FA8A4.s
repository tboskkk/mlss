	.syntax unified
	.text

	thumb_func_start sub_80FA8A4
sub_80FA8A4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x14]
	ldr r3, [r4, #0x00]
	ldrb r1, [r4, #0x00]
	movs r5, #0xAC
	lsls r5, r5, #0x01
	adds r2, r0, r5
	ldr r2, [r2, #0x00]
	lsls r3, r3, #0x06
	adds r3, r3, r2
	ldr r2, [r3, #0x00]
	adds r2, #0x24
	ldrb r2, [r2, #0x00]
	ldr r3, [r4, #0x04]
	bl sub_81218E4
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r1, [r4, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r5
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
