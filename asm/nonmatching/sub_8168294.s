	.syntax unified
	.text

	thumb_func_start sub_8168294
sub_8168294:
	push {lr}
	ldr r2, _081682A4 @ =0x08CDD140
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081682A4: .4byte 0x08CDD140
