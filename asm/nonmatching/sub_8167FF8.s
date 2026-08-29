	.syntax unified
	.text

	thumb_func_start sub_8167FF8
sub_8167FF8:
	push {lr}
	ldr r2, _08168008 @ =0x08CDD188
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08168008: .4byte 0x08CDD188
