	.syntax unified
	.text

	thumb_func_start sub_8138FD4
sub_8138FD4:
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	asrs r1, r1, #0x0F
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	adds r3, #0x24
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
