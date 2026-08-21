	.syntax unified
	.text

	thumb_func_start sub_808D4E0
sub_808D4E0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808D584 @ =0x0808D4E1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CCD4
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _0808D5C2
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808D50E
	ldr r2, _0808D588 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808D50E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _0808D522
	ldr r2, _0808D588 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808D522:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x06
	bne _0808D536
	ldr r2, _0808D588 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808D536:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _0808D54A
	ldr r2, _0808D588 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808D54A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0B
	bne _0808D55A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_0808D55A:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x0C
	beq _0808D594
	ldr r0, _0808D58C @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808D5B2
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _0808D590 @ =0x0808D5CD
	str r0, [r4, #0x4C]
	b _0808D5C2
	.byte 0x00, 0x00
_0808D584: .4byte sub_808D4E0
_0808D588: .4byte 0x00002054
_0808D58C: .4byte 0x0300034C
_0808D590: .4byte sub_808D5CC
_0808D594:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	strh r6, [r5, #0x00]
	ldr r0, _0808D5C8 @ =0x0808D6BD
	str r0, [r4, #0x4C]
_0808D5B2:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808D5C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808D5C8: .4byte sub_808D6BC
