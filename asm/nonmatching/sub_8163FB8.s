	.syntax unified
	.text

	thumb_func_start sub_8163FB8
sub_8163FB8:
	str r1, [r0, #0x00]
	str r2, [r0, #0x04]
	str r3, [r0, #0x08]
	bx lr
