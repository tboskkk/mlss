	.syntax unified
	.text

	thumb_func_start sub_8093350
sub_8093350:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093370 @ =0x08093351
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093374
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093446
	.byte 0x00, 0x00
_08093370: .4byte sub_8093350
_08093374:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _080933DC
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
	ldr r2, _080933CC @ =0x03001038
	ldr r0, _080933D0 @ =0x0819832C
	ldr r1, _080933D4 @ =0x08198220
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
	ldr r0, _080933D8 @ =0x08093E21
	str r0, [r4, #0x4C]
	b _08093446
	.byte 0x00, 0x00
_080933CC: .4byte 0x03001038
_080933D0: .4byte 0x0819832C
_080933D4: .4byte 0x08198220
_080933D8: .4byte sub_8093E20
_080933DC:
	cmp r1, #0x03
	bgt _080933FC
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08093436
	ldr r2, _080933F8 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08093436
_080933F8: .4byte 0x00002025
_080933FC:
	cmp r1, #0x07
	bgt _0809341C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08093436
	ldr r2, _08093418 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _08093436
_08093418: .4byte 0x00002025
_0809341C:
	cmp r1, #0x0B
	bgt _08093436
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _08093436
	ldr r2, _0809344C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08093436:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_08093446:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809344C: .4byte 0x00002025
