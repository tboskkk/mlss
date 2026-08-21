	.syntax unified
	.text

	thumb_func_start sub_80DBC84
sub_80DBC84:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBC9E
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_8087540
_080DBC9E:
	pop {r4}
	pop {r0}
	bx r0
