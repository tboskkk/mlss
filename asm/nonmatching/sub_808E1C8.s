	.syntax unified
	.text

	thumb_func_start sub_808E1C8
sub_808E1C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E1E8 @ =0x0808E1C9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _0808E1EC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E296
	.byte 0x00, 0x00
_0808E1E8: .4byte sub_808E1C8
_0808E1EC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808E206
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808E206:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _0808E21A
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808E21A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0A
	bne _0808E22E
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E22E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x0F
	bne _0808E242
	ldr r2, _0808E268 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808E242:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x14
	beq _0808E274
	ldr r0, _0808E26C @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808E286
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x02
	strh r0, [r5, #0x00]
	ldr r0, _0808E270 @ =0x0808E2A1
	str r0, [r4, #0x4C]
	b _0808E296
_0808E268: .4byte 0x00002025
_0808E26C: .4byte 0x0300034C
_0808E270: .4byte sub_808E2A0
_0808E274:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	strh r6, [r5, #0x00]
	ldr r0, _0808E29C @ =0x0808E391
	str r0, [r4, #0x4C]
_0808E286:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808E296:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808E29C: .4byte sub_808E390
