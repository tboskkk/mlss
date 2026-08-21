	.syntax unified
	.text

	thumb_func_start sub_808F2A8
sub_808F2A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808F2C8 @ =0x0808F2A9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808F2CC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808F38E
	.byte 0x00, 0x00
_0808F2C8: .4byte sub_808F2A8
_0808F2CC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808F324
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808F314 @ =0x03001038
	ldr r0, _0808F318 @ =0x0819832C
	ldr r1, _0808F31C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x04
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
	ldr r0, _0808F320 @ =0x0808FC55
	str r0, [r4, #0x4C]
	b _0808F38E
	.byte 0x00, 0x00
_0808F314: .4byte 0x03001038
_0808F318: .4byte 0x0819832C
_0808F31C: .4byte 0x08198220
_0808F320: .4byte sub_808FC54
_0808F324:
	cmp r1, #0x00
	bgt _0808F344
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808F37E
	ldr r2, _0808F340 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808F37E
_0808F340: .4byte 0x00002025
_0808F344:
	cmp r1, #0x01
	bgt _0808F364
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808F37E
	ldr r2, _0808F360 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808F37E
_0808F360: .4byte 0x00002025
_0808F364:
	cmp r1, #0x02
	bgt _0808F37E
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808F37E
	ldr r2, _0808F394 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808F37E:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
_0808F38E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808F394: .4byte 0x00002025
