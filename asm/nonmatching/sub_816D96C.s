	.syntax unified
	.text

	thumb_func_start sub_816D96C
sub_816D96C:
	push {lr}
	ldr r2, _0816D97C @ =0x08CDD220
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D97C: .4byte 0x08CDD220
