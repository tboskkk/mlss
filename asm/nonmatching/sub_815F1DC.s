	.syntax unified
	.text

	thumb_func_start sub_815F1DC
sub_815F1DC:
	push {lr}
	ldr r2, _0815F1EC @ =0x08CDCCD0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F1EC: .4byte dword_8CDCCD0 @ =0x08CDCCD0
