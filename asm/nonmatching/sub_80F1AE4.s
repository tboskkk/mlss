	.syntax unified
	.text

	thumb_func_start sub_80F1AE4
sub_80F1AE4:
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x01
	bx lr
