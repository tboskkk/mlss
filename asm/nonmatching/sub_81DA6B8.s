	.syntax unified
	.text

	thumb_func_start sub_81DA6B8
sub_81DA6B8:
	movs r0, #0x01
	swi #25
	bx lr
	.byte 0x00, 0x00
