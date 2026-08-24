	.syntax unified
	.text

	thumb_func_start sub_81589DC
sub_81589DC:
	push {lr}
	ldr r2, _081589EC @ =0x08CDC7F0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081589EC: .4byte dword_8CDC7F0 @ =0x08CDC7F0
