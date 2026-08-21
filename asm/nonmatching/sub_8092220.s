	.syntax unified
	.text

	thumb_func_start sub_8092220
sub_8092220:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08092240 @ =0x08092221
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08092244
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080922FA
	.byte 0x00, 0x00
_08092240: .4byte sub_8092220
_08092244:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0809225E
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809225E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _08092272
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_08092272:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _08092286
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08092286:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0809229A
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809229A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x08
	beq _080922CC
	ldr r0, _080922C4 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080922EA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _080922C8 @ =0x08092305
	str r0, [r4, #0x4C]
	b _080922FA
_080922C0: .4byte 0x00002025
_080922C4: .4byte 0x0300034C
_080922C8: .4byte sub_8092304
_080922CC:
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
	ldr r0, _08092300 @ =0x08092405
	str r0, [r4, #0x4C]
_080922EA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080922FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08092300: .4byte sub_8092404
