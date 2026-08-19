	.syntax unified
	.text

	thumb_func_start sub_8150E38
sub_8150E38:
	ldrh r2, [r0, #0x2C]
	movs r1, #0x01
	orrs r1, r2
	strh r1, [r0, #0x2C]
	bx lr
	.byte 0x00, 0x00
