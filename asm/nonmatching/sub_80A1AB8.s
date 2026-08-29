	.syntax unified
	.text

	thumb_func_start sub_80A1AB8
sub_80A1AB8:
	adds r2, r0, #0x0
	adds r2, #0xB2
	ldr r1, _080A1AC8 @ =0x0000FE4D
	strh r1, [r2, #0x00]
	ldr r1, _080A1ACC @ =0x080A19F9
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
_080A1AC8: .4byte 0x0000FE4D
_080A1ACC: .4byte sub_80A19F8
