	.syntax unified
	.text

	thumb_func_start sub_8082D60
sub_8082D60:
	push {lr}
	ldr r2, _08082D70 @ =0x08CDC2A8
	str r2, [r0, #0x18]
	bl sub_805A99C
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082D70: .4byte 0x08CDC2A8
