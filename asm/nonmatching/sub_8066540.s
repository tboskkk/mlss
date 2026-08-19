	.syntax unified
	.text

	thumb_func_start sub_8066540
sub_8066540:
	mov r12, r0
	adds r0, #0x84
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r3, [r0, #0x00]
	bx lr
