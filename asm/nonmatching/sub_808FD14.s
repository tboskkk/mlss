	.syntax unified
	.text

	thumb_func_start sub_808FD14
sub_808FD14:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808FD30
	adds r0, r2, #0x0
	bl sub_808F100
	b _0808FD36
_0808FD30:
	adds r0, r2, #0x0
	bl sub_808F658
_0808FD36:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
