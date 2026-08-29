	.syntax unified
	.text

	thumb_func_start sub_8163298
sub_8163298:
	movs r2, #0x00
	strh r1, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x1C]
	str r2, [r0, #0x18]
	str r2, [r0, #0x14]
	str r2, [r0, #0x10]
	str r2, [r0, #0x0C]
	str r2, [r0, #0x08]
	str r2, [r0, #0x04]
	str r2, [r0, #0x00]
	str r2, [r0, #0x2C]
	str r2, [r0, #0x28]
	bx lr
