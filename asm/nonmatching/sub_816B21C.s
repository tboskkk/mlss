	.syntax unified
	.text

	thumb_func_start sub_816B21C
sub_816B21C:
	push {lr}
	ldr r2, _0816B22C @ =0x08CDD1D8
	str r2, [r0, #0x0C]
	bl sub_8163B60
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816B22C: .4byte 0x08CDD1D8
