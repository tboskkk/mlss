	.syntax unified
	.text

	thumb_func_start sub_8199D48
sub_8199D48:
	ldr r2, _08199D58 @ =0x03001070
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x04]
	movs r0, #0x00
	bx lr
_08199D58: .4byte 0x03001070
