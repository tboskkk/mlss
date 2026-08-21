	.syntax unified
	.text

	thumb_func_start sub_808CB60
sub_808CB60:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _0808CBA0
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0808CB94
	ldr r0, _0808CB90 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x01
	b _0808CB9A
	.byte 0x00, 0x00
_0808CB90: .4byte 0x0300034C
_0808CB94:
	ldr r0, _0808CC00 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x02
_0808CB9A:
	ands r0, r1
	cmp r0, #0x00
	bne _0808CBFA
_0808CBA0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0808CC04 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r4, #0x28]
	adds r1, #0xEC
	movs r3, #0x00
	ldsh r0, [r1, r3]
	mvns r0, r0
	lsls r0, r0, #0x02
	movs r3, #0x99
	lsls r3, r3, #0x02
	adds r2, r2, r3
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x4C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	mvns r0, r0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r0, #0x00
	str r0, [r2, #0x00]
_0808CBFA:
	pop {r4}
	pop {r0}
	bx r0
_0808CC00: .4byte 0x0300034C
_0808CC04: .4byte 0x03000FD8
