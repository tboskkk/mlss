	.syntax unified
	.text

	thumb_func_start sub_8161954
sub_8161954:
	adds r1, r0, #0x0
	movs r0, #0x00
	adds r2, r1, #0x0
	adds r2, #0x08
	str r0, [r1, #0x08]
	str r0, [r2, #0x08]
	adds r2, #0x04
	str r0, [r1, #0x0C]
	str r0, [r2, #0x08]
	strh r0, [r1, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	adds r0, r1, #0x0
	bx lr
	.byte 0x00, 0x00
