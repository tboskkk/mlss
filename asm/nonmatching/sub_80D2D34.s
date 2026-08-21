	.syntax unified
	.text

	thumb_func_start sub_80D2D34
sub_80D2D34:
	push {lr}
	ldr r0, _080D2D48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x38]
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2D48: .4byte 0x03000FD8
