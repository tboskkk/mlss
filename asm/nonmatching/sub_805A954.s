	.syntax unified
	.text

	thumb_func_start sub_805A954
sub_805A954:
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	bx lr
	.byte 0x00, 0x00
