	.syntax unified
	.text

	thumb_func_start sub_807FF98
sub_807FF98:
	adds r3, r0, #0x0
	ldr r0, _0807FFB4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x44]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r1, #0x00
	strh r1, [r0, #0x10]
	str r0, [r2, #0x44]
	bx lr
	.byte 0x00, 0x00
_0807FFB4: .4byte 0x03000FD8
