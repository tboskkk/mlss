	.syntax unified
	.text

	thumb_func_start sub_80EA928
sub_80EA928:
	adds r3, r1, #0x0
	adds r3, #0xA6
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x58]
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
