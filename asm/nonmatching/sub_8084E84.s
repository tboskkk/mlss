	.syntax unified
	.text

	thumb_func_start sub_8084E84
sub_8084E84:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r0, #0x0C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
