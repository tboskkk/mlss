	.syntax unified
	.text

	thumb_func_start sub_80A0304
sub_80A0304:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x88
	ldr r0, [r2, #0x00]
	lsls r1, r0, #0x05
	subs r1, r1, r0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x07
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080A0326
	adds r0, #0xFF
_080A0326:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r2, #0x00
	ldsh r5, [r1, r2]
	lsls r2, r5, #0x08
	ldr r3, [r0, #0x00]
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	cmp r3, r2
	beq _080A038E
	lsls r0, r3, #0x05
	subs r0, r0, r3
	lsls r0, r0, #0x03
	lsls r1, r5, #0x0B
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080A0352
	adds r0, #0xFF
_080A0352:
	asrs r0, r0, #0x08
	str r0, [r6, #0x00]
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	subs r0, r0, r1
	cmp r0, #0xFF
	bgt _080A0364
	str r1, [r6, #0x00]
_080A0364:
	movs r5, #0x00
	ldsh r0, [r7, r5]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bne _080A038E
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, [r4, #0x30]
	bl sub_807F4FC
	ldr r1, [r4, #0x30]
	ldr r0, _080A045C @ =0x080A0741
	str r0, [r1, #0x58]
	str r0, [r4, #0x58]
	ldr r0, _080A0460 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080A038E:
	ldr r2, _080A0464 @ =0x03001038
	ldr r0, _080A0468 @ =0x0819832C
	ldr r1, _080A046C @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r1, [r6, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x07
	subs r0, r0, r1
	movs r1, #0x00
	ldsh r2, [r7, r1]
	movs r1, #0x50
	subs r1, r1, r2
	bl _call_via_r3
	ldr r1, [r4, #0x08]
	cmp r0, #0x04
	bge _080A03B6
	movs r0, #0x04
_080A03B6:
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r3, _080A0470 @ =0x08198584
	cmp r1, #0x00
	bge _080A03D2
	adds r1, #0xFF
_080A03D2:
	asrs r0, r1, #0x08
	movs r5, #0xFF
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _080A03E6
	adds r0, #0x3F
_080A03E6:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A03F2
	adds r0, #0xFF
_080A03F2:
	asrs r1, r0, #0x08
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	cmp r0, #0x00
	bge _080A0400
	adds r0, #0xFF
_080A0400:
	asrs r1, r0, #0x08
	movs r0, #0xBC
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _080A0474 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _080A0414
	adds r0, #0xFF
_080A0414:
	asrs r0, r0, #0x08
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _080A0426
	adds r0, #0x3F
_080A0426:
	asrs r1, r0, #0x06
	ldr r0, [r6, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080A0432
	adds r0, #0xFF
_080A0432:
	asrs r1, r0, #0x08
	movs r0, #0xD8
	lsls r0, r0, #0x07
	subs r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r3, r0, #0x0
	cmp r1, #0x00
	bge _080A0478
	subs r0, #0x02
	movs r5, #0x00
	ldsh r1, [r0, r5]
	lsls r1, r1, #0x08
	ldr r2, [r2, #0x00]
	adds r5, r0, #0x0
	cmp r1, r2
	blt _080A04EA
	b _080A048A
_080A045C: .4byte sub_80A0740
_080A0460: .4byte 0x0000010F
_080A0464: .4byte 0x03001038
_080A0468: .4byte 0x0819832C
_080A046C: .4byte 0x08198220
_080A0470: .4byte 0x08198584
_080A0474: .4byte 0x08198504
_080A0478:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r5, #0x00
	ldsh r1, [r0, r5]
	lsls r1, r1, #0x08
	ldr r2, [r2, #0x00]
	adds r5, r0, #0x0
	cmp r2, r1
	blt _080A04EA
_080A048A:
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bne _080A04AC
	ldr r0, _080A04C4 @ =0x083B89C7
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0x00]
	adds r1, #0x01
	str r1, [r2, #0x00]
_080A04AC:
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	ble _080A04C8
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	ldrh r1, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	b _080A04EA
	.byte 0x00, 0x00
_080A04C4: .4byte 0x083B89C7
_080A04C8:
	cmp r0, #0x00
	bge _080A04DC
	ldr r2, _080A04D8 @ =0xFFFFFF00
	adds r0, r2, #0x0
	ldrh r3, [r5, #0x00]
	adds r0, r0, r3
	strh r0, [r5, #0x00]
	b _080A04EA
_080A04D8: .4byte 0xFFFFFF00
_080A04DC:
	ldr r0, _080A04F0 @ =0x0000010F
	bl stop_sfx_80195A8
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _080A04F4 @ =0x080A04F9
	str r0, [r4, #0x4C]
_080A04EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A04F0: .4byte 0x0000010F
_080A04F4: .4byte sub_80A04F8
