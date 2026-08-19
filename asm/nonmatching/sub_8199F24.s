	.syntax unified
	.text

	thumb_func_start sub_8199F24
sub_8199F24:
	ldr r1, _08199F2C @ =0x03001074
	str r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08199F2C: .4byte 0x03001074
