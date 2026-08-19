	.syntax unified
	.text

	thumb_func_start sub_801B75C
sub_801B75C:
	movs r1, #0x00
	str r1, [r0, #0x00]
	strh r1, [r0, #0x04]
	str r1, [r0, #0x08]
	str r1, [r0, #0x0C]
	bx lr
