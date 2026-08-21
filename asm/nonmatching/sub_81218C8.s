	.syntax unified
	.text

	thumb_func_start sub_81218C8
sub_81218C8:
	push {lr}
	ldr r0, [r0, #0x30]
	bl sprite_hide_8021F20
	pop {r0}
	bx r0
