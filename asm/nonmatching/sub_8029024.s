	.syntax unified
	.text

	thumb_func_start sub_8029024
sub_8029024:
	ldr r2, _0802902C @ =0x0000012B
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	bx lr
_0802902C: .4byte 0x0000012B
