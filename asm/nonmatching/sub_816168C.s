	.syntax unified
	.text

	thumb_func_start sub_816168C
sub_816168C:
	ldr r1, _08161694 @ =0x08CDD0B8
	str r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08161694: .4byte 0x08CDD0B8
