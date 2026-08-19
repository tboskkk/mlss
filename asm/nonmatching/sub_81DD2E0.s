	.syntax unified
	.text

	thumb_func_start sub_81DD2E0
sub_81DD2E0:
	ldr r0, _081DD2E8 @ =0x08CDBD64
	ldr r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_081DD2E8: .4byte 0x08CDBD64
