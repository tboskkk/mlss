	.syntax unified
	.text

	thumb_func_start sub_816AFDC
sub_816AFDC:
	movs r1, #0x92
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x09
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
