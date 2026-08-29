	.syntax unified
	.text

	thumb_func_start sub_8135F40
sub_8135F40:
	movs r2, #0x80
	lsls r2, r2, #0x01
	str r2, [r0, #0x00]
	movs r1, #0x00
	str r1, [r0, #0x04]
	str r1, [r0, #0x08]
	str r1, [r0, #0x0C]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1C]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r2, [r0, #0x28]
	str r1, [r0, #0x2C]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	str r2, [r0, #0x3C]
	bx lr
