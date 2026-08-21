	.syntax unified
	.text

	thumb_func_start sub_81333D8
sub_81333D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _081333F2
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081333F8 @ =0x0808750D
	str r0, [r4, #0x4C]
_081333F2:
	pop {r4}
	pop {r0}
	bx r0
_081333F8: .4byte sub_808750C
