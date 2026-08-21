	.syntax unified
	.text

	thumb_func_start sub_814DB34
sub_814DB34:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	movs r2, #0x00
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	str r2, [sp, #0x000]
	movs r2, #0x05
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x00]
	adds r1, #0x20
	ldrb r0, [r1, #0x00]
	negs r0, r0
	strb r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
