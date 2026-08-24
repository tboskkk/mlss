	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091728 @ =0x08091709
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809172C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080917FE
	.byte 0x00, 0x00
_08091728: .4byte sub_8091708
_0809172C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091794
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
	ldr r2, _08091784 @ =0x03001038
	ldr r0, _08091788 @ =0x0819832C
	ldr r1, _0809178C @ =0x08198220
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
	ldr r0, _08091790 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _080917FE
	.byte 0x00, 0x00
_08091784: .4byte 0x03001038
_08091788: .4byte 0x0819832C
_0809178C: .4byte 0x08198220
_08091790: .4byte sub_8091C44
_08091794:
	cmp r1, #0x05
	bgt _080917B4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080917EE
	ldr r2, _080917B0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080917EE
_080917B0: .4byte 0x00002054
_080917B4:
	cmp r1, #0x0B
	bgt _080917D4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080917EE
	ldr r2, _080917D0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080917EE
_080917D0: .4byte 0x00002054
_080917D4:
	cmp r1, #0x11
	bgt _080917EE
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080917EE
	ldr r2, _08091804 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080917EE:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_080917FE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091804: .4byte 0x00002054
