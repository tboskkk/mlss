	.syntax unified
	.text

	thumb_func_start sub_808A0DC
sub_808A0DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808A112
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0808A118 @ =0x0808A1B5
	str r0, [r4, #0x58]
	ldr r0, _0808A11C @ =0x0808A195
	str r0, [r4, #0x5C]
	ldr r0, _0808A120 @ =0x0808A175
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _0808A124 @ =0x0808A205
	str r0, [r4, #0x50]
_0808A112:
	pop {r4}
	pop {r0}
	bx r0
_0808A118: .4byte sub_808A1B4
_0808A11C: .4byte sub_808A194
_0808A120: .4byte sub_808A174
_0808A124: .4byte sub_808A204
