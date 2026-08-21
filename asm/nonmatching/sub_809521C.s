	.syntax unified
	.text

	thumb_func_start sub_809521C
sub_809521C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080952B0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r7, [r6, #0x2C]
	adds r0, r6, #0x0
	bl sub_8088020
	ldrh r0, [r6, #0x20]
	subs r0, #0x01
	strh r0, [r6, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08095276
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _08095254
	adds r1, #0xFF
_08095254:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _0809525E
	adds r2, #0xFF
_0809525E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _08095268
	adds r3, #0xFF
_08095268:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080952B4 @ =0x00001CF0
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r6, #0x20]
_08095276:
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r6, #0x0
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0x00
	ble _0809529C
	adds r0, r6, #0x0
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0xEF
	ble _080952B8
_0809529C:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	ldr r0, _080952B0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	b _080953C0
_080952B0: .4byte 0x03000FD8
_080952B4: .4byte 0x00001CF0
_080952B8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	cmp r0, #0x00
	beq _080953C0
	adds r4, r6, #0x0
	adds r4, #0xC8
	ldrh r5, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x01
	adds r2, #0x06
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_807F3AC
	strh r5, [r4, #0x00]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080952E6
	adds r1, #0xFF
_080952E6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080952F0
	adds r2, #0xFF
_080952F0:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080952FA
	adds r3, #0xFF
_080952FA:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xE8
	lsls r0, r0, #0x05
	bl sub_80DF024
	movs r1, #0x1E
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08095320
	mov r0, r8
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095332
	movs r0, #0x01
	b _08095330
_08095320:
	mov r0, r9
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095332
	movs r0, #0x00
_08095330:
	strh r0, [r6, #0x1E]
_08095332:
	movs r2, #0x1E
	ldsh r0, [r6, r2]
	mov r7, r8
	cmp r0, #0x00
	bne _0809533E
	mov r7, r9
_0809533E:
	str r7, [r6, #0x2C]
	cmp r7, #0x00
	beq _0809536A
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0809534C
	adds r1, #0xFF
_0809534C:
	asrs r3, r1, #0x08
	ldr r1, [r7, #0x3C]
	cmp r1, #0x00
	bge _08095356
	adds r1, #0xFF
_08095356:
	asrs r2, r1, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	b _08095390
_0809536A:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08095372
	adds r0, #0xFF
_08095372:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x64
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08095380
	adds r2, #0xFF
_08095380:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
_08095390:
	movs r0, #0x1C
	ldsh r1, [r6, r0]
	adds r0, r6, #0x0
	bl sub_80880C4
	ldrh r0, [r6, #0x1C]
	adds r0, #0x4C
	strh r0, [r6, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xE0
	lsls r1, r1, #0x02
	cmp r0, r1
	ble _080953AE
	strh r1, [r6, #0x1C]
_080953AE:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x0A
	strh r0, [r6, #0x20]
	ldr r0, _080953D0 @ =0x080953D5
	str r0, [r6, #0x4C]
_080953C0:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080953D0: .4byte sub_80953D4
