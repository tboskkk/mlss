	.syntax unified
	.text

	thumb_func_start sub_808D5CC
sub_808D5CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808D634 @ =0x0808D5CD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CCD4
	cmp r0, #0x00
	bne _0808D6B2
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808D648
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _0808D638 @ =0x03001038
	ldr r0, _0808D63C @ =0x0819832C
	ldr r1, _0808D640 @ =0x08198220
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
	ldr r0, _0808D644 @ =0x0808CD51
	str r0, [r4, #0x4C]
	b _0808D6B2
_0808D634: .4byte sub_808D5CC
_0808D638: .4byte 0x03001038
_0808D63C: .4byte 0x0819832C
_0808D640: .4byte 0x08198220
_0808D644: .4byte sub_808CD50
_0808D648:
	cmp r1, #0x08
	bgt _0808D668
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808D6A2
	ldr r2, _0808D664 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808D6A2
_0808D664: .4byte 0x00002054
_0808D668:
	cmp r1, #0x11
	bgt _0808D688
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808D6A2
	ldr r2, _0808D684 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808D6A2
_0808D684: .4byte 0x00002054
_0808D688:
	cmp r1, #0x1A
	bgt _0808D6A2
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808D6A2
	ldr r2, _0808D6B8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808D6A2:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0808D6B2:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808D6B8: .4byte 0x00002054
