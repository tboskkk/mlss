	.syntax unified
	.text

	thumb_func_start sub_819B0F8
sub_819B0F8:
	ldr r2, _0819B108 @ =0x03007FF0
	ldr r2, [r2, #0x00]
	lsls r0, r0, #0x02
	ldr r3, _0819B10C @ =0x000004A4
	adds r2, r2, r3
	adds r2, r2, r0
	str r1, [r2, #0x00]
	bx lr
_0819B108: .4byte 0x03007FF0
_0819B10C: .4byte 0x000004A4
