	.syntax unified
	.text

	thumb_func_start sub_804776C
sub_804776C:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r2, #0x01
	ands r1, r2
	ldrb r3, [r0, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
