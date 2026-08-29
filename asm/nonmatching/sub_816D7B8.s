	.syntax unified
	.text

	thumb_func_start sub_816D7B8
sub_816D7B8:
	push {lr}
	ldr r2, _0816D7C8 @ =0x08CDD268
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D7C8: .4byte 0x08CDD268
