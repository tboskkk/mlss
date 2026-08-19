	.syntax unified
	.text

	thumb_func_start sub_80208E0
sub_80208E0:
	ldr r2, [r0, #0x48]
	movs r1, #0x01
	str r1, [r2, #0x00]
	ldr r1, [r0, #0x50]
	str r1, [r2, #0x04]
	ldr r0, [r0, #0x4C]
	str r0, [r2, #0x08]
	movs r0, #0x00
	str r0, [r2, #0x0C]
	bx lr
