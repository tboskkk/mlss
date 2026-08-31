	.syntax unified
	.text

	thumb_func_start sub_81980C8
sub_81980C8:
	ldr r1, _081980D4 @ =0x0851F9E8
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_081980D4: .4byte 0x0851F9E8
