	.syntax unified
	.text

	thumb_func_start sub_815FACC
sub_815FACC:
	ldr r3, [r0, #0x04]
	ldr r1, [r0, #0x0C]
	subs r1, r3, r1
	strh r1, [r0, #0x14]
	ldr r2, [r0, #0x08]
	ldr r1, [r0, #0x10]
	subs r1, r2, r1
	strh r1, [r0, #0x18]
	str r3, [r0, #0x0C]
	str r2, [r0, #0x10]
	bx lr
	.byte 0x00, 0x00
