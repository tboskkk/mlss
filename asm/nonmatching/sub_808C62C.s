	.syntax unified
	.text

	thumb_func_start sub_808C62C
sub_808C62C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x07
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
	movs r0, #0x2D
	strh r0, [r1, #0x00]
	ldr r0, _0808C658 @ =0x0808C7B9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808C658: .4byte sub_808C7B8
