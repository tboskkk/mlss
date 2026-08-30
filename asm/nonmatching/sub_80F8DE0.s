	.syntax unified
	.text

	thumb_func_start sub_80F8DE0
sub_80F8DE0:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r0, #0x2C]
	movs r2, #0xBC
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r1, [r0, #0x00]
	bx lr
