	.syntax unified
	.text

	thumb_func_start sub_808C724
sub_808C724:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	ldr r0, _0808C750 @ =0x0808C8E1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808C750: .4byte sub_808C8E0
