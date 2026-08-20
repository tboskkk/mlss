	.syntax unified
	.text

	thumb_func_start sub_80F8A08
sub_80F8A08:
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x2C]
	adds r0, r0, r1
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r2, r0, r1
	adds r1, #0xA0
	adds r0, r0, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	str r0, [r2, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
