	.syntax unified
	.text

	thumb_func_start sub_8163264
sub_8163264:
	str r1, [r0, #0x10]
	str r1, [r0, #0x08]
	str r1, [r0, #0x00]
	str r2, [r0, #0x14]
	str r2, [r0, #0x0C]
	str r2, [r0, #0x04]
	asrs r1, r1, #0x08
	str r1, [r0, #0x18]
	asrs r2, r2, #0x08
	str r2, [r0, #0x1C]
	movs r1, #0x00
	str r1, [r0, #0x24]
	bx lr
	.byte 0x00, 0x00
