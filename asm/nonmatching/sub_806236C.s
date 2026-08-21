	.syntax unified
	.text

	thumb_func_start sub_806236C
sub_806236C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08062390 @ =0x0808750D
	str r0, [r5, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08062390: .4byte sub_808750C
