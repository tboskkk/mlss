	.syntax unified
	.text

	thumb_func_start sub_8199470
sub_8199470:
	ldr r1, _0819947C @ =0x04000006
	ldrh r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_0819947C: .4byte 0x04000006
