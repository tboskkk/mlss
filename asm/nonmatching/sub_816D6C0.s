	.syntax unified
	.text

	thumb_func_start sub_816D6C0
sub_816D6C0:
	push {lr}
	ldr r2, _0816D6D0 @ =0x08CDD248
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D6D0: .4byte dword_8CDD248 @ =0x08CDD248
