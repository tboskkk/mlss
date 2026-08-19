	.syntax unified
	.text

	thumb_func_start isatty
isatty: @ 0x081DC7EC
	movs r0, #0x01
	bx lr
