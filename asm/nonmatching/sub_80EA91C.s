	.syntax unified
	.text

	thumb_func_start sub_80EA91C
sub_80EA91C:
	adds r1, #0x98
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
