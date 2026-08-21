	.syntax unified
	.text

	thumb_func_start sub_806C8C0
sub_806C8C0:
	push {lr}
	adds r3, r0, #0x0
	adds r3, #0x9C
	movs r2, #0x01
	str r2, [r3, #0x00]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
