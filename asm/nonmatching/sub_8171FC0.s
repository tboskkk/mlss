	.syntax unified
	.text

	thumb_func_start sub_8171FC0
sub_8171FC0:
	push {lr}
	ldr r2, _08171FD0 @ =0x08CDD290
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08171FD0: .4byte 0x08CDD290
