	.syntax unified
	.text

	thumb_func_start sub_80197E0
sub_80197E0:
	ldr r1, _080197F8 @ =0x03000C28
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r1, _080197FC @ =0x03000C6C
	ldr r0, _08019800 @ =0x080000F4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08019804 @ =0x03000C78
	movs r0, #0x00
	str r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_080197F8: .4byte 0x03000C28
_080197FC: .4byte 0x03000C6C
_08019800: .4byte 0x080000F4
_08019804: .4byte 0x03000C78
