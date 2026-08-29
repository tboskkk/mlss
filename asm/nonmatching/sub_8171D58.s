	.syntax unified
	.text

	thumb_func_start sub_8171D58
sub_8171D58:
	push {lr}
	ldr r2, _08171D68 @ =0x08CDD2C8
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08171D68: .4byte 0x08CDD2C8
