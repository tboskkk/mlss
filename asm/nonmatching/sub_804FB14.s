	.syntax unified
	.text

	thumb_func_start sub_804FB14
sub_804FB14:
	ldr r1, [r0, #0x08]
	str r1, [r0, #0x18]
	ldr r1, [r0, #0x0C]
	str r1, [r0, #0x1C]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x24]
	bx lr
	.byte 0x00, 0x00
