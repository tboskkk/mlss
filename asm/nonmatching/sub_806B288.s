	.syntax unified
	.text

	thumb_func_start sub_806B288
sub_806B288:
	push {lr}
	ldr r1, [r0, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
