	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81218D4
sub_81218D4:
	push {lr}
	ldr r0, [r0, #0x30]
	bl sprite_show_8020CBC
	pop {r0}
	bx r0
