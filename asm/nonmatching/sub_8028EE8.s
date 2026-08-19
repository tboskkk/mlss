	.syntax unified
	.text

	thumb_func_start sub_8028EE8
sub_8028EE8:
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
