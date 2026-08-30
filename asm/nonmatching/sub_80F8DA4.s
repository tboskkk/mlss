	.syntax unified
	.text

	thumb_func_start sub_80F8DA4
sub_80F8DA4:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x2C]
	adds r0, r0, r1
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bx lr
