	.syntax unified
	.text

	thumb_func_start sub_81251DC
sub_81251DC:
	ldr r0, _081251E8 @ =0x03000FFC
	ldr r0, [r0, #0x00]
	ldr r1, _081251EC @ =0x00001FF8
	adds r0, r0, r1
	bx lr
	.byte 0x00, 0x00
_081251E8: .4byte 0x03000FFC
_081251EC: .4byte 0x00001FF8
