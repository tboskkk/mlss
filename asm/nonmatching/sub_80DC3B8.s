	.syntax unified
	.text

	thumb_func_start sub_80DC3B8
sub_80DC3B8:
	push {r4, lr}
	bl sub_810DD7C
	adds r4, r0, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
