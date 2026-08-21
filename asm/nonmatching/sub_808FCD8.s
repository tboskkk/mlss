	.syntax unified
	.text

	thumb_func_start sub_808FCD8
sub_808FCD8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808FCF4
	adds r0, r4, #0x0
	bl sub_808FDA4
	b _0808FD02
_0808FCF4:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808FD02
	adds r0, r4, #0x0
	bl sub_808FD3C
_0808FD02:
	ldr r0, _0808FD10 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808FD10: .4byte sub_8087540
