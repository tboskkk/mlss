	.syntax unified
	.text

	thumb_func_start sub_808F1D8
sub_808F1D8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808F1F8 @ =0x0808F1D9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _0808F1FC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808F29E
	.byte 0x00, 0x00
_0808F1F8: .4byte sub_808F1D8
_0808F1FC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808F216
	ldr r2, _0808F270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808F216:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x01
	bne _0808F22A
	ldr r2, _0808F270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808F22A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x02
	bne _0808F23E
	ldr r2, _0808F270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808F23E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _0808F252
	ldr r2, _0808F270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808F252:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	beq _0808F27C
	ldr r0, _0808F274 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808F28E
	ldr r0, _0808F278 @ =0x0808F2A9
	str r0, [r4, #0x4C]
	b _0808F29E
_0808F270: .4byte 0x00002025
_0808F274: .4byte 0x0300034C
_0808F278: .4byte sub_808F2A8
_0808F27C:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	strh r6, [r5, #0x00]
	ldr r0, _0808F2A4 @ =0x0808F399
	str r0, [r4, #0x4C]
_0808F28E:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808F29E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808F2A4: .4byte sub_808F398
