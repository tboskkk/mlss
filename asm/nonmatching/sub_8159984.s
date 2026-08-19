	.syntax unified
	.text

	thumb_func_start sub_8159984
sub_8159984:
	movs r2, #0xA3
	lsls r2, r2, #0x03
	adds r3, r0, r2
	movs r2, #0x01
	strh r2, [r3, #0x00]
	ldr r2, _08159998 @ =0x00000514
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08159998: .4byte 0x00000514
