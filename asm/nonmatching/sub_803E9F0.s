	.syntax unified
	.text

	thumb_func_start sub_803E9F0
sub_803E9F0:
	ldr r1, _0803E9FC @ =0x00000291
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	bx lr
_0803E9FC: .4byte 0x00000291
