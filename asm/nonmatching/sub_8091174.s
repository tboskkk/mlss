	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091194 @ =0x08091175
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091198
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809126A
	.byte 0x00, 0x00
_08091194: .4byte sub_8091174
_08091198:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091200
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
	ldr r2, _080911F0 @ =0x03001038
	ldr r0, _080911F4 @ =0x0819832C
	ldr r1, _080911F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0A
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
	ldr r0, _080911FC @ =0x08091C45
	str r0, [r4, #0x4C]
	b _0809126A
	.byte 0x00, 0x00
_080911F0: .4byte 0x03001038
_080911F4: .4byte 0x0819832C
_080911F8: .4byte 0x08198220
_080911FC: .4byte sub_8091C44
_08091200:
	cmp r1, #0x05
	bgt _08091220
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809125A
	ldr r2, _0809121C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809125A
_0809121C: .4byte 0x00002025
_08091220:
	cmp r1, #0x0B
	bgt _08091240
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0809125A
	ldr r2, _0809123C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0809125A
_0809123C: .4byte 0x00002025
_08091240:
	cmp r1, #0x11
	bgt _0809125A
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0809125A
	ldr r2, _08091270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0809125A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0809126A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091270: .4byte 0x00002025
