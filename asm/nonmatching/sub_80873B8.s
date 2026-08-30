	.syntax unified
	.text

	thumb_func_start sub_80873B8
sub_80873B8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r5, [r6, #0x08]
	cmp r4, #0x00
	beq _08087414
	ldr r2, _08087408 @ =0x03001038
	ldr r0, _0808740C @ =0x0819832C
	ldr r1, _08087410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r4, #0x04
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r3, #0x00
	ldsh r1, [r1, r3]
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	bgt _080873EE
	movs r4, #0x01
_080873EE:
	cmp r4, #0x7E
	ble _080873F4
	movs r4, #0x7F
_080873F4:
	adds r0, r5, #0x0
	adds r0, #0x20
	strb r4, [r0, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	b _0808741C
_08087408: .4byte 0x03001038
_0808740C: .4byte 0x0819832C
_08087410: .4byte 0x08198220
_08087414:
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
_0808741C:
	strb r0, [r5, #0x12]
	ldr r0, _08087428 @ =0x08087BA5
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08087428: .4byte sub_8087BA4
