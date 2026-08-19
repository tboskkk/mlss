	.syntax unified
	.text

	thumb_func_start sub_8160EC4
sub_8160EC4:
	ldr r2, _08160ED4 @ =0x00000804
	adds r1, r0, r2
	movs r2, #0x00
	str r2, [r1, #0x00]
	ldr r3, _08160ED8 @ =0x0000080C
	adds r1, r0, r3
	str r2, [r1, #0x00]
	bx lr
_08160ED4: .4byte 0x00000804
_08160ED8: .4byte 0x0000080C
