	.syntax unified
	.text

	thumb_func_start sub_8099028
sub_8099028:
	ldr r1, _08099030 @ =0x08099035
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_08099030: .4byte sub_8099034
