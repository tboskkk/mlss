	.syntax unified
	.text

	thumb_func_start sub_808A0B0
sub_808A0B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808A0D2
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _0808A0D8 @ =0x080894B9
	str r0, [r4, #0x50]
_0808A0D2:
	pop {r4}
	pop {r0}
	bx r0
_0808A0D8: .4byte sub_80894B8
