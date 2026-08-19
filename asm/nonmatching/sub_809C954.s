	.syntax unified
	.text

	thumb_func_start sub_809C954
sub_809C954:
	ldr r1, _0809C95C @ =0x0809CA25
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
_0809C95C: .4byte sub_809CA24
