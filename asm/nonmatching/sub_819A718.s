	.syntax unified
	.text

	thumb_func_start sub_819A718
sub_819A718:
	ldrh r2, [r0, #0x00]
	ldr r1, _0819A728 @ =0x0000F9FF
	ands r1, r2
	strh r1, [r0, #0x00]
	ldrb r1, [r0, #0x1A]
	strb r1, [r0, #0x1B]
	bx lr
	.byte 0x00, 0x00
_0819A728: .4byte 0x0000F9FF
