	.syntax unified
	.text

	thumb_func_start sub_8158654
sub_8158654:
	push {lr}
	ldr r2, _08158664 @ =0x08CDC6B0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158664: .4byte dword_8CDC6B0 @ =0x08CDC6B0
