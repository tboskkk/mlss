	.syntax unified
	.text

	thumb_func_start script_enable_flag_2
script_enable_flag_2: @ 080F04EC
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	bx lr
