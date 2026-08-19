	.syntax unified
	.text

	thumb_func_start sub_8159904
sub_8159904:
	ldr r2, _0815990C @ =0x0000052C
	adds r0, r0, r2
	str r1, [r0, #0x00]
	bx lr
_0815990C: .4byte 0x0000052C
