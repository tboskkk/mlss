	.syntax unified
	.text

	thumb_func_start sub_808863C
sub_808863C:
	ldr r1, [r0, #0x4C]
	str r1, [r0, #0x50]
	ldr r1, _08088648 @ =0x080886E1
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
_08088648: .4byte sub_80886E0
