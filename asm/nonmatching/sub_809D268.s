	.syntax unified
	.text

	thumb_func_start sub_809D268
sub_809D268:
	ldr r1, _0809D270 @ =0x0809D2A9
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_0809D270: .4byte sub_809D2A8
