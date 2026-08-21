	.syntax unified
	.text

	thumb_func_start sub_808CAC4
sub_808CAC4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	ldr r2, _0808CB00 @ =0x0000012D
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1C
	bne _0808CB14
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r2, #0x01
	negs r2, r2
	cmp r0, r2
	bne _0808CB08
	ldr r0, _0808CB04 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0808CB14
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	b _0808CB26
	.byte 0x00, 0x00
_0808CB00: .4byte 0x0000012D
_0808CB04: .4byte 0x0300034C
_0808CB08:
	ldr r0, _0808CB18 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0808CB1C
_0808CB14:
	movs r0, #0x00
	b _0808CB50
_0808CB18: .4byte 0x0300034C
_0808CB1C:
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
_0808CB26:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	ldr r0, _0808CB58 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r0, r0
	lsls r0, r0, #0x02
	movs r2, #0x99
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r4, #0x4C]
	str r0, [r1, #0x00]
	ldr r0, _0808CB5C @ =0x0808CB61
	str r0, [r4, #0x4C]
	movs r0, #0x01
_0808CB50:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0808CB58: .4byte 0x03000FD8
_0808CB5C: .4byte sub_808CB60
