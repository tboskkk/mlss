	.syntax unified
	.text

	thumb_func_start sub_81638B0
sub_81638B0:
	movs r1, #0x00
	str r1, [r0, #0x04]
	str r1, [r0, #0x00]
	str r1, [r0, #0x08]
	ldr r1, _081638C0 @ =0x08CDD0E8
	str r1, [r0, #0x0C]
	bx lr
	.byte 0x00, 0x00
_081638C0: .4byte 0x08CDD0E8
