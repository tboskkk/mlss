	.syntax unified
	.text

	thumb_func_start sub_810D4C4
sub_810D4C4:
	ldr r0, _0810D4D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0810D4DC @ =0x00000241
	strh r0, [r1, #0x18]
	bx lr
	.byte 0x00, 0x00
_0810D4D8: .4byte 0x03000FD8
_0810D4DC: .4byte 0x00000241
