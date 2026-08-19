	.syntax unified
	.text

	thumb_func_start sub_8163FA8
sub_8163FA8:
	ldr r2, [r1, #0x00]
	str r2, [r0, #0x00]
	ldr r2, [r1, #0x04]
	str r2, [r0, #0x04]
	ldr r1, [r1, #0x08]
	str r1, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00
