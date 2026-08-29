	.syntax unified
	.text

	thumb_func_start sub_801B0AC
sub_801B0AC:
	ldr r1, _0801B0B4 @ =0x03000D3C
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_0801B0B4: .4byte 0x03000D3C
