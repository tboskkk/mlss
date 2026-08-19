	.syntax unified
	.text

	thumb_func_start sub_819A694
sub_819A694:
	ldrh r2, [r0, #0x00]
	ldr r1, _0819A6A4 @ =0x0000CFFF
	ands r1, r2
	strh r1, [r0, #0x00]
	ldrb r1, [r0, #0x16]
	strb r1, [r0, #0x17]
	bx lr
	.byte 0x00, 0x00
_0819A6A4: .4byte 0x0000CFFF
