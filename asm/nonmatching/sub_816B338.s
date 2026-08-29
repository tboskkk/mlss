	.syntax unified
	.text

	thumb_func_start sub_816B338
sub_816B338:
	push {lr}
	ldr r2, _0816B348 @ =0x08CDD1F8
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816B348: .4byte 0x08CDD1F8
