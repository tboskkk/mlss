	.syntax unified
	.text

	thumb_func_start sub_808ECDC
sub_808ECDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808ECF8
	adds r0, r4, #0x0
	bl sub_808EDA8
	b _0808ED06
_0808ECF8:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808ED06
	adds r0, r4, #0x0
	bl sub_808ED40
_0808ED06:
	ldr r0, _0808ED14 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808ED14: .4byte sub_8087540
