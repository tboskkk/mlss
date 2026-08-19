	.syntax unified
	.text

	thumb_func_start sub_815EC3C
sub_815EC3C:
	ldr r3, [r0, #0x0C]
	ldrb r1, [r3, #0x12]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r3, #0x12]
	movs r1, #0x00
	strb r1, [r0, #0x1A]
	bx lr
