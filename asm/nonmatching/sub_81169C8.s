	.syntax unified
	.text

	thumb_func_start sub_81169C8
sub_81169C8:
	ldrb r1, [r0, #0x1C]
	movs r2, #0x01
	eors r1, r2
	strb r1, [r0, #0x1C]
	bx lr
