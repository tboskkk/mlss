	.syntax unified
	.text

	thumb_func_start sub_80A2C80
sub_80A2C80:
	adds r2, r0, #0x0
	adds r2, #0xB2
	ldr r1, _080A2C90 @ =0x0000FE4D
	strh r1, [r2, #0x00]
	ldr r1, _080A2C94 @ =0x080A2BC1
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
_080A2C90: .4byte 0x0000FE4D
_080A2C94: .4byte sub_80A2BC0
