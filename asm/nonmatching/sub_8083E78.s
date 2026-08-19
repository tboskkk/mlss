	.syntax unified
	.text

	thumb_func_start sub_8083E78
sub_8083E78:
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x06]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
