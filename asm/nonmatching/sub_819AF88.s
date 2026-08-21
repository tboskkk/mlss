	.syntax unified
	.text

	thumb_func_start sub_819AF88
sub_819AF88:
	push {lr}
	movs r0, #0x00
	bl sub_819AC84
	movs r0, #0x01
	bl sub_819AC84
	bl sub_819AF18
	movs r0, #0x03
	bl sub_819AC84
	pop {r0}
	bx r0
