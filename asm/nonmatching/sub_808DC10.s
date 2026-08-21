	.syntax unified
	.text

	thumb_func_start sub_808DC10
sub_808DC10:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r3, r4, #0x0
	adds r3, #0x94
	ldr r1, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _0808DC54 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0808DC58
	ldr r2, [r3, #0x00]
	movs r1, #0x7A
	negs r1, r1
	subs r1, r1, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	cmp r0, #0x00
	bge _0808DC4E
	adds r0, #0xFF
_0808DC4E:
	asrs r0, r0, #0x08
	adds r0, r2, r0
	b _0808DC5C
_0808DC54: .4byte 0x0300034C
_0808DC58:
	movs r0, #0x7A
	negs r0, r0
_0808DC5C:
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r1, [r4, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0808DCA0
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _0808DCA8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
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
	ldr r0, _0808DCAC @ =0x0808DCB1
	str r0, [r4, #0x4C]
_0808DCA0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808DCA8: .4byte 0x0000204D
_0808DCAC: .4byte sub_808DCB0
