	.syntax unified
	.text

	thumb_func_start sub_8160E4C
sub_8160E4C:
	ldr r1, _08160E64 @ =0x040000D4
	str r0, [r1, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x04]
	ldr r0, _08160E68 @ =0x84000200
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	bx lr
	.byte 0x00, 0x00
_08160E64: .4byte 0x040000D4
_08160E68: .4byte 0x84000200
