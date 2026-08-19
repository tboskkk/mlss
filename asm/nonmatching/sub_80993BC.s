	.syntax unified
	.text

	thumb_func_start sub_80993BC
sub_80993BC:
	ldr r1, _080993C4 @ =0x080993C9
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_080993C4: .4byte sub_80993C8
