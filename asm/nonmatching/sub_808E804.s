	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E824 @ =0x0808E805
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E828
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E8EA
	.byte 0x00, 0x00
_0808E824: .4byte sub_808E804
_0808E828:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808E880
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808E870 @ =0x03001038
	ldr r0, _0808E874 @ =0x0819832C
	ldr r1, _0808E878 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808E87C @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808E8EA
	.byte 0x00, 0x00
_0808E870: .4byte 0x03001038
_0808E874: .4byte 0x0819832C
_0808E878: .4byte 0x08198220
_0808E87C: .4byte sub_808EC58
_0808E880:
	cmp r1, #0x2F
	bgt _0808E8A0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808E8DA
	ldr r2, _0808E89C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808E8DA
_0808E89C: .4byte 0x00002054
_0808E8A0:
	cmp r1, #0x5F
	bgt _0808E8C0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808E8DA
	ldr r2, _0808E8BC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808E8DA
_0808E8BC: .4byte 0x00002054
_0808E8C0:
	cmp r1, #0x8F
	bgt _0808E8DA
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808E8DA
	ldr r2, _0808E8F0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E8DA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x08
	strh r0, [r5, #0x00]
_0808E8EA:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808E8F0: .4byte 0x00002054
