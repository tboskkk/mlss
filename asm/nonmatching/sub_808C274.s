	.syntax unified
	.text

	thumb_func_start sub_808C274
sub_808C274:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808C294
	cmp r0, #0x01
	bgt _0808C28C
	cmp r0, #0x00
	beq _0808C294
	b _0808C296
_0808C28C:
	cmp r0, #0x02
	beq _0808C294
	cmp r0, #0x03
	bne _0808C296
_0808C294:
	movs r1, #0x08
_0808C296:
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808C2B6
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x08
	bl sub_80873B8
_0808C2B6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808C2D0
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x08
	bl sub_80873B8
_0808C2D0:
	ldr r0, _0808C2DC @ =0x0808B7D1
	str r0, [r4, #0x50]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808C2DC: .4byte sub_808B7D0
