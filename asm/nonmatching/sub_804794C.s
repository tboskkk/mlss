	.syntax unified
	.text

	thumb_func_start sub_804794C
sub_804794C:
	ldr r2, _08047954 @ =0x0000023E
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	bx lr
_08047954: .4byte 0x0000023E
