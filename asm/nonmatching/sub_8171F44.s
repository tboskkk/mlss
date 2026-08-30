	.syntax unified
	.text

	thumb_func_start sub_8171F44
sub_8171F44:
	movs r1, #0xB4
	str r1, [r0, #0x6C]
	movs r1, #0x00
	str r1, [r0, #0x70]
	bx lr
