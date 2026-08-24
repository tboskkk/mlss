	.syntax unified
	.text

	thumb_func_start sub_816156C
sub_816156C:
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r1, _08161578 @ =0x08CDD060
	str r1, [r0, #0x04]
	bx lr
	.byte 0x00, 0x00
_08161578: .4byte dword_8CDD060 @ =0x08CDD060
	.byte 0x70, 0x47, 0x00, 0x00
