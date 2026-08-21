	.syntax unified
	.text

	thumb_func_start sub_8158450
sub_8158450:
	push {lr}
	ldr r2, _08158460 @ =0x08CDC5B0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158460: .4byte 0x08CDC5B0
