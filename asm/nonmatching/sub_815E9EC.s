	.syntax unified
	.text

	thumb_func_start sub_815E9EC
sub_815E9EC:
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r1, _0815EA04 @ =0x08CDCAD0
	str r1, [r0, #0x04]
	str r2, [r0, #0x08]
	str r2, [r0, #0x0C]
	movs r1, #0xFC
	lsls r1, r1, #0x07
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.byte 0x00, 0x00
_0815EA04: .4byte 0x08CDCAD0
