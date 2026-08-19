	.syntax unified
	.text

	thumb_func_start sub_816544C
sub_816544C:
	str r1, [r0, #0x24]
	str r2, [r0, #0x28]
	bx lr
	.byte 0x00, 0x00
