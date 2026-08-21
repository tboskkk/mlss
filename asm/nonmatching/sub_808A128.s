	.syntax unified
	.text

	thumb_func_start sub_808A128
sub_808A128:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808A15E
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0808A164 @ =0x0808A1B5
	str r0, [r4, #0x58]
	ldr r0, _0808A168 @ =0x0808A195
	str r0, [r4, #0x5C]
	ldr r0, _0808A16C @ =0x0808A175
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
	ldr r0, _0808A170 @ =0x08088BC1
	str r0, [r4, #0x50]
_0808A15E:
	pop {r4}
	pop {r0}
	bx r0
_0808A164: .4byte sub_808A1B4
_0808A168: .4byte sub_808A194
_0808A16C: .4byte sub_808A174
_0808A170: .4byte sub_8088BC0
