	.syntax unified
	.text

	thumb_func_start sub_808F800
sub_808F800:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808F820 @ =0x0808F801
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808F824
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0808F8E6
	.byte 0x00, 0x00
_0808F820: .4byte sub_808F800
_0808F824:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808F87C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0808F86C @ =0x03001038
	ldr r0, _0808F870 @ =0x0819832C
	ldr r1, _0808F874 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x06
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
	ldr r0, _0808F878 @ =0x0808FC55
	str r0, [r4, #0x4C]
	b _0808F8E6
	.byte 0x00, 0x00
_0808F86C: .4byte 0x03001038
_0808F870: .4byte 0x0819832C
_0808F874: .4byte 0x08198220
_0808F878: .4byte sub_808FC54
_0808F87C:
	cmp r1, #0x01
	bgt _0808F89C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808F8D6
	ldr r2, _0808F898 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808F8D6
_0808F898: .4byte 0x00002054
_0808F89C:
	cmp r1, #0x03
	bgt _0808F8BC
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808F8D6
	ldr r2, _0808F8B8 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808F8D6
_0808F8B8: .4byte 0x00002054
_0808F8BC:
	cmp r1, #0x05
	bgt _0808F8D6
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808F8D6
	ldr r2, _0808F8EC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808F8D6:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_0808F8E6:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808F8EC: .4byte 0x00002054
