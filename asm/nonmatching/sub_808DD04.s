	.syntax unified
	.text

	thumb_func_start sub_808DD04
sub_808DD04:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808DD20
	adds r0, r2, #0x0
	bl sub_808CDD4
	b _0808DD26
_0808DD20:
	adds r0, r2, #0x0
	bl sub_808D408
_0808DD26:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
