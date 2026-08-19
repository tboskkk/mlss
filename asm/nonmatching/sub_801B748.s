	.syntax unified
	.text

	thumb_func_start sub_801B748
sub_801B748:
	str r1, [r0, #0x00]
	strh r2, [r0, #0x04]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [r0, #0x08]
	ldr r1, _0801B758 @ =0xFFFF0000
	str r1, [r0, #0x0C]
	bx lr
_0801B758: .4byte 0xFFFF0000
