	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808E2C0 @ =0x0808E2A1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808E2C4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808E386
	.byte 0x00, 0x00
_0808E2C0: .4byte sub_808E2A0
_0808E2C4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808E31C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808E30C @ =0x03001038
	ldr r0, _0808E310 @ =0x0819832C
	ldr r1, _0808E314 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
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
	ldr r0, _0808E318 @ =0x0808EC59
	str r0, [r4, #0x4C]
	b _0808E386
	.byte 0x00, 0x00
_0808E30C: .4byte 0x03001038
_0808E310: .4byte 0x0819832C
_0808E314: .4byte 0x08198220
_0808E318: .4byte sub_808EC58
_0808E31C:
	cmp r1, #0x13
	bgt _0808E33C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808E376
	ldr r2, _0808E338 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808E376
_0808E338: .4byte 0x00002025
_0808E33C:
	cmp r1, #0x27
	bgt _0808E35C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808E376
	ldr r2, _0808E358 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808E376
_0808E358: .4byte 0x00002025
_0808E35C:
	cmp r1, #0x3B
	bgt _0808E376
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808E376
	ldr r2, _0808E38C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808E376:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x05
	strh r0, [r5, #0x00]
_0808E386:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808E38C: .4byte 0x00002025
