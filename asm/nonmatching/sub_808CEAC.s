	.syntax unified
	.text

	thumb_func_start sub_808CEAC
sub_808CEAC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808CF4C @ =0x0808CEAD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CCD4
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _0808CF8A
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808CEDA
	ldr r2, _0808CF50 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808CEDA:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _0808CEEE
	ldr r2, _0808CF50 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808CEEE:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _0808CF02
	ldr r2, _0808CF50 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808CF02:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0808CF16
	ldr r2, _0808CF50 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808CF16:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x07
	bne _0808CF26
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_0808CF26:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	beq _0808CF5C
	ldr r0, _0808CF54 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808CF7A
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _0808CF58 @ =0x0808CF95
	str r0, [r4, #0x4C]
	b _0808CF8A
_0808CF4C: .4byte sub_808CEAC
_0808CF50: .4byte 0x00002025
_0808CF54: .4byte 0x0300034C
_0808CF58: .4byte sub_808CF94
_0808CF5C:
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
	ldr r0, _0808CF90 @ =0x0808D085
	str r0, [r4, #0x4C]
_0808CF7A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808CF8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808CF90: .4byte sub_808D084
