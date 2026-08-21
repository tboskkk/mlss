	.syntax unified
	.text

	thumb_func_start sub_80652B0
sub_80652B0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080652CA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080652D0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080652CA:
	pop {r4}
	pop {r0}
	bx r0
_080652D0: .4byte sub_808750C
