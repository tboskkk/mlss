	.syntax unified
	.text

	thumb_func_start sub_80913A4
sub_80913A4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080913BC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091540
_080913BC:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _08091448 @ =0x03001038
	ldr r1, _0809144C @ =0x0819832C
	ldr r2, _08091450 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08091454 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08091406
	adds r0, #0x3F
_08091406:
	asrs r0, r0, #0x06
	movs r2, #0x16
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r7, #0xB0
	lsls r7, r7, #0x05
	adds r1, r0, r7
	ldr r0, _08091458 @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0809142A
	adds r0, #0x3F
_0809142A:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0809145C
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _08091462
_08091448: .4byte 0x03001038
_0809144C: .4byte 0x0819832C
_08091450: .4byte 0x08198220
_08091454: .4byte 0x08198584
_08091458: .4byte 0x08198504
_0809145C:
	ldr r0, [r5, #0x00]
	ldr r1, _08091520 @ =0xFFFFF400
	adds r0, r0, r1
_08091462:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _0809147C
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0809147C:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _08091490
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08091490:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _080914A4
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_080914A4:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _080914B8
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_080914B8:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _080914CC
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_080914CC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08091530
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _08091528 @ =0x08091B91
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08091540
	ldr r3, _0809152C @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08091540
_08091520: .4byte 0xFFFFF400
_08091524: .4byte 0x00002025
_08091528: .4byte sub_8091B90
_0809152C: .4byte 0x00000111
_08091530:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08091540:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
