	.syntax unified
	.text

	thumb_func_start sub_808CF94
sub_808CF94:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808CFFC @ =0x0808CF95
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CCD4
	cmp r0, #0x00
	bne _0808D07A
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _0808D010
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
	ldr r2, _0808D000 @ =0x03001038
	ldr r0, _0808D004 @ =0x0819832C
	ldr r1, _0808D008 @ =0x08198220
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
	ldr r0, _0808D00C @ =0x0808CD51
	str r0, [r4, #0x4C]
	b _0808D07A
_0808CFFC: .4byte sub_808CF94
_0808D000: .4byte 0x03001038
_0808D004: .4byte 0x0819832C
_0808D008: .4byte 0x08198220
_0808D00C: .4byte sub_808CD50
_0808D010:
	cmp r1, #0x03
	bgt _0808D030
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808D06A
	ldr r2, _0808D02C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808D06A
_0808D02C: .4byte 0x00002025
_0808D030:
	cmp r1, #0x07
	bgt _0808D050
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0808D06A
	ldr r2, _0808D04C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0808D06A
_0808D04C: .4byte 0x00002025
_0808D050:
	cmp r1, #0x0B
	bgt _0808D06A
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0808D06A
	ldr r2, _0808D080 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0808D06A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_0808D07A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0808D080: .4byte 0x00002025
