	.syntax unified
	.text

	thumb_func_start sub_815EA08
sub_815EA08:
	ldr r1, _0815EA14 @ =0x08CDCF50
	str r1, [r0, #0x04]
	movs r1, #0x00
	str r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_0815EA14: .4byte 0x08CDCF50
