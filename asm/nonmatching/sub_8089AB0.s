	.syntax unified
	.text

	thumb_func_start sub_8089AB0
sub_8089AB0:
	adds r1, r0, #0x0
	adds r1, #0x80
	movs r2, #0x00
	str r2, [r1, #0x00]
	ldr r1, _08089AC4 @ =0x0808942D
	str r1, [r0, #0x4C]
	adds r0, #0xAC
	strh r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08089AC4: .4byte sub_808942C
