	.syntax unified
	.text

	thumb_func_start sub_808862C
sub_808862C:
	ldr r1, [r0, #0x4C]
	str r1, [r0, #0x50]
	ldr r1, _08088638 @ =0x080886BD
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
_08088638: .4byte sub_80886BC
