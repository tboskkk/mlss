	.syntax unified
	.text

	thumb_func_start sub_80EB048
sub_80EB048:
	ldr r0, _080EB058 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, #0x32
	strb r1, [r0, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080EB058: .4byte 0x03000FB8
