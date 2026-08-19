	.syntax unified
	.text

	thumb_func_start sub_8163320
sub_8163320:
	movs r2, #0x00
	movs r1, #0x10
	strh r1, [r0, #0x00]
	strh r2, [r0, #0x02]
	bx lr
	.byte 0x00, 0x00
