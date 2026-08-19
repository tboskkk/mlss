	.syntax unified
	.text

	thumb_func_start sub_804FB28
sub_804FB28:
	movs r2, #0x07
	ands r1, r2
	ldrb r3, [r0, #0x00]
	movs r2, #0x08
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
