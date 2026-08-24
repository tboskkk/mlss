	.syntax unified
	.text

	thumb_func_start sub_8158994
sub_8158994:
	push {lr}
	ldr r2, _081589A4 @ =0x08CDC7B0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081589A4: .4byte dword_8CDC7B0 @ =0x08CDC7B0
