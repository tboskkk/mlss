	.syntax unified
	.text

	thumb_func_start sub_816B3C4
sub_816B3C4:
	push {lr}
	ldr r2, _0816B3D4 @ =0x08CDD1B0
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816B3D4: .4byte dword_8CDD1B0 @ =0x08CDD1B0
