	.syntax unified
	.text

	thumb_func_start sub_8116610
sub_8116610:
	ldrh r3, [r0, #0x34]
	adds r1, r0, #0x0
	adds r1, #0x44
	movs r2, #0x00
	strh r3, [r1, #0x00]
	strh r2, [r0, #0x34]
	bx lr
	.byte 0x00, 0x00
