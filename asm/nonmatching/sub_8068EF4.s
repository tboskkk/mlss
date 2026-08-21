	.syntax unified
	.text

	thumb_func_start sub_8068EF4
sub_8068EF4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08068F0C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068F0C: .4byte sub_808750C
