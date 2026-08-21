	.syntax unified
	.text

	thumb_func_start sub_808C348
sub_808C348:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808C370
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	bl sub_80873B8
_0808C370:
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0808C38C
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	bl sub_80873B8
_0808C38C:
	ldr r0, _0808C398 @ =0x0808AEE5
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808C398: .4byte sub_808AEE4
