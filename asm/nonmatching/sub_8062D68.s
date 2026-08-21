	.syntax unified
	.text

	thumb_func_start sub_8062D68
sub_8062D68:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062D80 @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08062D80: .4byte sub_808750C
