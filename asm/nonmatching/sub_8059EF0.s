	.syntax unified
	.text

	thumb_func_start sub_8059EF0
sub_8059EF0:
	lsls r0, r0, #0x10
	ldr r1, _08059EFC @ =0x083AF418
	lsrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bx lr
_08059EFC: .4byte dword_83AF418 @ =0x083AF418
