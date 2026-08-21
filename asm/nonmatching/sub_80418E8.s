	.syntax unified
	.text

	thumb_func_start sub_80418E8
sub_80418E8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08041902
	b _08041A26
_08041902:
	ldr r1, _080419BC @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08041912
	b _08041A26
_08041912:
	adds r0, r3, #0x0
	adds r0, #0x29
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	adds r7, r0, #0x0
	cmp r2, r1
	bne _08041926
	b _08041A26
_08041926:
	ldr r2, _080419C0 @ =0x0000020D
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08041A26
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _08041A26
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r2, r0
	ldr r0, [r3, #0x3C]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	bgt _08041A26
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _08041A26
	movs r0, #0x00
	ldsb r0, [r7, r0]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
	adds r0, r4, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08041A26
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	ldr r2, [r3, #0x0C]
	adds r2, r2, r0
	str r2, [r3, #0x0C]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	subs r1, r1, r0
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r3, #0x14]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, _080419C4 @ =0x00000272
	adds r1, r3, r0
	ldrh r6, [r1, #0x00]
	adds r0, r4, r0
	ldrh r5, [r0, #0x00]
	lsrs r0, r6, #0x01
	subs r2, r2, r0
	lsrs r1, r5, #0x01
	ldr r0, [r4, #0x0C]
	subs r1, r0, r1
	cmp r1, r2
	bge _080419C8
	adds r0, r1, r5
	subs r0, r0, r2
	b _080419CC
	.byte 0x00, 0x00
_080419BC: .4byte 0x00000216
_080419C0: .4byte 0x0000020D
_080419C4: .4byte 0x00000272
_080419C8:
	adds r0, r2, r6
	subs r0, r0, r1
_080419CC:
	cmp r0, #0x00
	ble _08041A26
	ldr r0, _08041A00 @ =0x00000276
	adds r1, r3, r0
	ldrh r1, [r1, #0x00]
	mov r12, r1
	adds r0, r4, r0
	ldrh r5, [r0, #0x00]
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r2, [r0, r6]
	ldr r0, [r3, #0x10]
	adds r2, r0, r2
	adds r1, r4, r1
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x10]
	adds r1, r0, r1
	cmp r1, r2
	ble _08041A04
	subs r0, r1, r5
	subs r0, r2, r0
	b _08041A0A
	.byte 0x00, 0x00
_08041A00: .4byte 0x00000276
_08041A04:
	mov r4, r12
	subs r0, r2, r4
	subs r0, r1, r0
_08041A0A:
	cmp r0, #0x00
	ble _08041A26
	movs r1, #0x01
	ldsb r1, [r3, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08041A26
	ldrb r0, [r7, #0x00]
	strb r0, [r3, #0x01]
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r3, r6
	str r1, [r0, #0x00]
_08041A26:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
