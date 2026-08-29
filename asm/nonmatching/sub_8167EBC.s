	.syntax unified
	.text

	thumb_func_start sub_8167EBC
sub_8167EBC:
	push {lr}
	ldr r2, _08167ECC @ =0x08CDD168
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08167ECC: .4byte 0x08CDD168
