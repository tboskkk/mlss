	.syntax unified
	.text

	thumb_func_start sub_8158A50
sub_8158A50:
	push {lr}
	ldr r2, _08158A60 @ =0x08CDC830
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158A60: .4byte dword_8CDC830 @ =0x08CDC830
