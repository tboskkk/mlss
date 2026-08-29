	.syntax unified
	.text

	thumb_func_start sub_816D608
sub_816D608:
	push {lr}
	ldr r2, _0816D618 @ =0x08CDD238
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D618: .4byte 0x08CDD238
