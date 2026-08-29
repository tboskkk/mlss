	.syntax unified
	.text

	thumb_func_start sub_8158198
sub_8158198:
	ldr r1, _081581A4 @ =0x08CDCA30
	str r1, [r0, #0x04]
	movs r1, #0x00
	str r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_081581A4: .4byte 0x08CDCA30
