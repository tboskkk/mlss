	.syntax unified
	.text

	thumb_func_start sub_804B25C
sub_804B25C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0804B350
	ldr r2, _0804B2DC @ =0x00000216
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0804B350
	adds r0, r2, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0804B350
	movs r1, #0x01
	ldsb r1, [r5, r1]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _0804B350
	ldr r3, _0804B2E0 @ =0x00000272
	adds r0, r5, r3
	ldrh r6, [r0, #0x00]
	ldr r2, _0804B2E4 @ =0x00000276
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	adds r3, r4, r3
	ldrh r3, [r3, #0x00]
	adds r2, r4, r2
	ldrh r7, [r2, #0x00]
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	mov r8, r1
	lsrs r1, r3, #0x01
	ldr r0, [r4, #0x0C]
	subs r2, r0, r1
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bge _0804B2E8
	adds r0, r2, r3
	subs r0, r0, r1
	b _0804B2EC
_0804B2DC: .4byte 0x00000216
_0804B2E0: .4byte 0x00000272
_0804B2E4: .4byte 0x00000276
_0804B2E8:
	adds r0, r1, r6
	subs r0, r0, r2
_0804B2EC:
	cmp r0, #0x00
	ble _0804B350
	movs r2, #0x9C
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r2, r0, r1
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	ble _0804B310
	subs r0, r2, r7
	subs r0, r1, r0
	b _0804B316
_0804B310:
	mov r3, r12
	subs r0, r1, r3
	subs r0, r2, r0
_0804B316:
	cmp r0, #0x00
	ble _0804B350
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bgt _0804B32C
	cmp r1, #0x00
	bge _0804B32E
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0804B32E
_0804B32C:
	adds r2, r2, r1
_0804B32E:
	movs r1, #0xA3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	cmp r2, r1
	bgt _0804B342
	mov r3, r8
	adds r0, r2, r3
	subs r0, r0, r1
	b _0804B348
_0804B342:
	mov r3, r9
	adds r0, r1, r3
	subs r0, r0, r2
_0804B348:
	cmp r0, #0x00
	ble _0804B350
	movs r0, #0x01
	b _0804B352
_0804B350:
	movs r0, #0x00
_0804B352:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
