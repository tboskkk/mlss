	.syntax unified
	.text

	thumb_func_start sub_803C538
sub_803C538:
	push {lr}
	movs r2, #0x01
	bl sub_802FAE4
	pop {r0}
	bx r0
