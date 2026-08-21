	.syntax unified
	.text

	thumb_func_start sub_808F730
sub_808F730:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0808F750 @ =0x0808F731
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _0808F754
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808F7F6
	.byte 0x00, 0x00
_0808F750: .4byte sub_808F730
_0808F754:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0808F76E
	ldr r2, _0808F7C8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808F76E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _0808F782
	ldr r2, _0808F7C8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0808F782:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _0808F796
	ldr r2, _0808F7C8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808F796:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0808F7AA
	ldr r2, _0808F7C8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0808F7AA:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	beq _0808F7D4
	ldr r0, _0808F7CC @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0808F7E6
	ldr r0, _0808F7D0 @ =0x0808F801
	str r0, [r4, #0x4C]
	b _0808F7F6
_0808F7C8: .4byte 0x00002054
_0808F7CC: .4byte 0x0300034C
_0808F7D0: .4byte sub_808F800
_0808F7D4:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	strh r6, [r5, #0x00]
	ldr r0, _0808F7FC @ =0x0808F8F1
	str r0, [r4, #0x4C]
_0808F7E6:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0808F7F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0808F7FC: .4byte sub_808F8F0
