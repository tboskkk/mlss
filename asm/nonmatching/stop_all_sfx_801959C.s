	.syntax unified
	.text

	thumb_func_start stop_all_sfx_801959C
stop_all_sfx_801959C: @ 0801959C
	push {lr}
	bl sub_819BA00
	pop {r0}
	bx r0
	.byte 0x00, 0x00
