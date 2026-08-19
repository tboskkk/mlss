	.syntax unified
	.text

	thumb_func_start sub_8070C84
sub_8070C84:
	movs r1, #0x00
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
