	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x33
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x8C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	adds r4, r0, r1
	str r4, [r6, #0x00]
	ldr r0, _080A05CC @ =0x00004FFF
	cmp r4, r0
	bgt _080A05E4
	ldr r2, _080A05D0 @ =0x03001038
	ldr r0, _080A05D4 @ =0x0819832C
	ldr r1, _080A05D8 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x07
	subs r0, r0, r4
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r4, #0x00
	ldsh r2, [r1, r4]
	movs r1, #0x50
	subs r1, r1, r2
	bl _call_via_r3
	ldr r1, [r5, #0x08]
	cmp r0, #0x04
	bge _080A0544
	movs r0, #0x04
_080A0544:
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	adds r2, r5, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r3, _080A05DC @ =0x08198584
	cmp r1, #0x00
	bge _080A0560
	adds r1, #0xFF
_080A0560:
	asrs r0, r1, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080A0574
	adds r0, #0x3F
_080A0574:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A0580
	adds r0, #0xFF
_080A0580:
	asrs r1, r0, #0x08
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	cmp r0, #0x00
	bge _080A058E
	adds r0, #0xFF
_080A058E:
	asrs r1, r0, #0x08
	movs r0, #0xBC
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r1, _080A05E0 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080A05A2
	adds r0, #0xFF
_080A05A2:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080A05B4
	adds r0, #0x3F
_080A05B4:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A05C0
	adds r0, #0xFF
_080A05C0:
	asrs r1, r0, #0x08
	movs r0, #0xD8
	lsls r0, r0, #0x07
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _080A05F8
_080A05CC: .4byte 0x00004FFF
_080A05D0: .4byte 0x03001038
_080A05D4: .4byte 0x0819832C
_080A05D8: .4byte 0x08198220
_080A05DC: .4byte 0x08198584
_080A05E0: .4byte 0x08198504
_080A05E4:
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
_080A05F8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
