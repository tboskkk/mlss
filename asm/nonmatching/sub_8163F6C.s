	.syntax unified
	.text

	thumb_func_start sub_8163F6C
sub_8163F6C:
	ldr r2, [r0, #0x00]
	ldr r3, [r1, #0x00]
	adds r2, r2, r3
	str r2, [r0, #0x00]
	ldr r2, [r0, #0x04]
	ldr r3, [r1, #0x04]
	adds r2, r2, r3
	str r2, [r0, #0x04]
	ldr r2, [r0, #0x08]
	ldr r1, [r1, #0x08]
	adds r2, r2, r1
	str r2, [r0, #0x08]
	bx lr
