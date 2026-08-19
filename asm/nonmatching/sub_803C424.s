	.syntax unified
	.text

	thumb_func_start sub_803C424
sub_803C424:
	adds r1, r0, #0x0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r1, [r0, #0x00]
	movs r0, #0xB2
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	bx lr
	.byte 0x00, 0x00
