	.syntax unified
	.text

	thumb_func_start sub_808842C
sub_808842C:
	push {lr}
	adds r3, r0, #0x0
	adds r3, #0x92
	strh r2, [r3, #0x00]
	bl sub_8088164
	pop {r0}
	bx r0
