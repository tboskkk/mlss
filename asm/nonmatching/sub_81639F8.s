	.syntax unified
	.text

	thumb_func_start sub_81639F8
sub_81639F8:
	str r1, [r0, #0x44]
	adds r2, r0, #0x0
	adds r2, #0x48
	movs r1, #0x00
	strh r1, [r2, #0x00]
	str r1, [r0, #0x40]
	bx lr
	.byte 0x00, 0x00
