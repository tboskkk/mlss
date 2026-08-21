	.syntax unified
	.text

	thumb_func_start sub_8029878
sub_8029878:
	push {lr}
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	pop {r0}
	bx r0
