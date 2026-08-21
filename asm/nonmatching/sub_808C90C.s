	.syntax unified
	.text

	thumb_func_start sub_808C90C
sub_808C90C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808C92E
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808C934 @ =0x0808A3C5
	str r0, [r4, #0x4C]
_0808C92E:
	pop {r4}
	pop {r0}
	bx r0
_0808C934: .4byte sub_808A3C4
