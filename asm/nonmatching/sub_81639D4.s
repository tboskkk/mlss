	.syntax unified
	.text

	thumb_func_start sub_81639D4
sub_81639D4:
	str r1, [r0, #0x44]
	adds r0, #0x48
	movs r1, #0x00
	strh r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
