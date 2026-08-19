	.syntax unified
	.text

	thumb_func_start sub_80290CC
sub_80290CC:
	movs r2, #0x96
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsls r1, r1, #0x02
	ldrb r3, [r0, #0x00]
	movs r2, #0x03
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
