	.syntax unified
	.text

	thumb_func_start script_cmd_end
script_cmd_end: @ 080EB23C
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x10]
	movs r0, #0x01
	bx lr
