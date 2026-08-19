	.syntax unified
	.text

	thumb_func_start sub_8167F30
sub_8167F30:
	adds r1, r0, #0x0
	adds r1, #0x6C
	movs r2, #0x00
	strh r2, [r1, #0x00]
	adds r0, #0x6E
	strh r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
