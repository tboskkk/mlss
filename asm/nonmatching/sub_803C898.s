	.syntax unified
	.text

	thumb_func_start sub_803C898
sub_803C898:
	push {lr}
	movs r2, #0x01
	bl sub_8029A0C
	pop {r0}
	bx r0
