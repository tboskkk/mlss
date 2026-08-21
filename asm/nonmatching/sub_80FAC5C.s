	.syntax unified
	.text

	thumb_func_start sub_80FAC5C
sub_80FAC5C:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	movs r1, #0xA8
	adds r3, r2, #0x0
	muls r3, r1
	ldr r1, [r0, #0x24]
	adds r1, r1, r3
	adds r3, r1, #0x0
	adds r3, #0xA8
	ldr r0, [r0, #0x14]
	movs r4, #0xAC
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	lsls r2, r2, #0x06
	adds r2, r2, r0
	ldr r2, [r2, #0x00]
	movs r0, #0xA4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x04]
	str r0, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
