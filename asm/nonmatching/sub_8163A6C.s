	.syntax unified
	.text

	thumb_func_start sub_8163A6C
sub_8163A6C:
	adds r2, r0, #0x0
	adds r0, #0x52
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	bx lr
