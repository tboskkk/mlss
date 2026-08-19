	.syntax unified
	.text

	thumb_func_start sub_8163BB8
sub_8163BB8:
	ldr r1, _08163BC0 @ =0x0300102C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	bx lr
_08163BC0: .4byte 0x0300102C
