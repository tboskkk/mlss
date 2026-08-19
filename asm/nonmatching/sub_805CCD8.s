	.syntax unified
	.text

	thumb_func_start sub_805CCD8
sub_805CCD8:
	movs r1, #0x00
	strb r1, [r0, #0x0A]
	bx lr
	.byte 0x00, 0x00
