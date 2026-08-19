	.syntax unified
	.text

	thumb_func_start sub_8159974
sub_8159974:
	movs r1, #0xA5
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	movs r1, #0x01
	orrs r1, r2
	strh r1, [r0, #0x00]
	bx lr
