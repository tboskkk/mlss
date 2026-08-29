	.syntax unified
	.text

	thumb_func_start sub_816B2E0
sub_816B2E0:
	push {lr}
	ldr r2, _0816B2F0 @ =0x08CDD1E8
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816B2F0: .4byte 0x08CDD1E8
