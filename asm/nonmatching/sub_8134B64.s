	.syntax unified
	.text

	thumb_func_start sub_8134B64
sub_8134B64:
	movs r1, #0x00
	strh r1, [r0, #0x00]
	strh r1, [r0, #0x02]
	movs r1, #0x10
	strh r1, [r0, #0x04]
	bx lr
