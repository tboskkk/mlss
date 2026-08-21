	.syntax unified
	.text

	thumb_func_start stop_sfx_80195A8
stop_sfx_80195A8: @ 080195A8
	push {lr}
	bl sub_819B9E8
	pop {r0}
	bx r0
	.byte 0x00, 0x00
