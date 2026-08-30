	.syntax unified
	.text

	thumb_func_start sub_813BC6C
sub_813BC6C:
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x08
	str r2, [r1, #0x00]
	ldr r0, [r0, #0x04]
	lsls r0, r0, #0x08
	str r0, [r1, #0x04]
	bx lr
