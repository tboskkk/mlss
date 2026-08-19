	.syntax unified
	.text

	thumb_func_start sub_8163A64
sub_8163A64:
	str r1, [r0, #0x18]
	str r2, [r0, #0x1C]
	str r3, [r0, #0x20]
	bx lr
