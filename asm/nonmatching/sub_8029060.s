	.syntax unified
	.text

	thumb_func_start sub_8029060
sub_8029060:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
	bx lr
