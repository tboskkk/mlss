	.syntax unified
	.text

	thumb_func_start sub_80FB7E0
sub_80FB7E0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r1, _080FB7EC @ =0x083D7458
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bx lr
_080FB7EC: .4byte 0x083D7458
