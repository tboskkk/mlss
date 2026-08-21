	.syntax unified
	.text

	thumb_func_start sub_808C7B8
sub_808C7B8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808C7DA
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808C7E0 @ =0x0808AA61
	str r0, [r4, #0x4C]
_0808C7DA:
	pop {r4}
	pop {r0}
	bx r0
_0808C7E0: .4byte sub_808AA60
