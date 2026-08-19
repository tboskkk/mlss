	.syntax unified
	.text

	thumb_func_start sub_809EB58
sub_809EB58:
	adds r1, r0, #0x0
	adds r1, #0x80
	movs r2, #0x00
	str r2, [r1, #0x00]
	ldr r1, _0809EB6C @ =0x0809EA4D
	str r1, [r0, #0x4C]
	adds r0, #0xAC
	strh r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_0809EB6C: .4byte sub_809EA4C
