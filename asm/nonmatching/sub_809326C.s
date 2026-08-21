	.syntax unified
	.text

	thumb_func_start sub_809326C
sub_809326C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809328C @ =0x0809326D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08093290
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093346
	.byte 0x00, 0x00
_0809328C: .4byte sub_809326C
_08093290:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080932AA
	ldr r2, _0809330C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080932AA:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _080932BE
	ldr r2, _0809330C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_080932BE:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _080932D2
	ldr r2, _0809330C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080932D2:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _080932E6
	ldr r2, _0809330C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_080932E6:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x08
	beq _08093318
	ldr r0, _08093310 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _08093336
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _08093314 @ =0x08093351
	str r0, [r4, #0x4C]
	b _08093346
_0809330C: .4byte 0x00002025
_08093310: .4byte 0x0300034C
_08093314: .4byte sub_8093350
_08093318:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	strh r6, [r5, #0x00]
	ldr r0, _0809334C @ =0x08093451
	str r0, [r4, #0x4C]
_08093336:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08093346:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809334C: .4byte sub_8093450
