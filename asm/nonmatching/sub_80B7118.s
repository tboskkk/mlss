	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080B7240 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x03
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080B7190
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7190:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B71A0
	b _080B76CA
_080B71A0:
	mov r1, r12
	cmp r1, #0x00
	bge _080B71A8
	movs r1, #0x00
_080B71A8:
	ldr r0, _080B7244 @ =0x00007FFF
	cmp r1, r0
	ble _080B71B0
	adds r1, r0, #0x0
_080B71B0:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B71C6
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B71C8
_080B71C6:
	movs r2, #0x00
_080B71C8:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080B72AC
	ldr r2, _080B7240 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7248
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B71FC
	movs r1, #0x33
_080B71F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B71F0
_080B71FC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7210
	movs r1, #0x33
_080B7204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7204
_080B7210:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7224
	movs r1, #0x33
_080B7218:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7218
_080B7224:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x03
_080B722E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7238
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7238:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B722E
	b _080B72A4
_080B7240: .4byte 0x03000FD8
_080B7244: .4byte 0x00007FFF
_080B7248:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B725E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7252:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7252
_080B725E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7274
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7268:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7268
_080B7274:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B728A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B727E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B727E
_080B728A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x10
_080B7294:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B729E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B729E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7294
_080B72A4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B72AC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080B72B6
	movs r1, #0x00
_080B72B6:
	mov r3, r9
	cmp r3, #0x00
	bge _080B72BE
	movs r2, #0x00
_080B72BE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B72C8
	adds r1, r0, #0x0
_080B72C8:
	ldr r0, _080B73BC @ =0x00007FFF
	cmp r2, r0
	ble _080B72D0
	adds r2, r0, #0x0
_080B72D0:
	cmp r2, r1
	bge _080B72D6
	adds r1, r2, #0x0
_080B72D6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B72EE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B72F0
_080B72EE:
	movs r1, #0x00
_080B72F0:
	cmp r1, #0x00
	bne _080B72F6
	b _080B743E
_080B72F6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B73C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B7314
	b _080B743E
_080B7314:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B73C4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B742A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B73C8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B7374
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7368:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7368
_080B7374:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B738A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B737E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B737E
_080B738A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B73A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7394
_080B73A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B73AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B73B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B73B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B73AA
	b _080B7426
_080B73BC: .4byte 0x00007FFF
_080B73C0: .4byte 0x0300034C
_080B73C4: .4byte 0x03000FD8
_080B73C8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B73E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73D4
_080B73E0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B73F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73EA
_080B73F6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B740C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7400:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7400
_080B740C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B7416:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7420
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7420:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7416
_080B7426:
	bl sub_807F448
_080B742A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B7514 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B743E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B744A
	b _080B76CA
_080B744A:
	mov r1, r9
	cmp r1, #0x00
	bge _080B7452
	movs r1, #0x00
_080B7452:
	ldr r0, _080B7518 @ =0x00007FFF
	cmp r1, r0
	ble _080B745A
	adds r1, r0, #0x0
_080B745A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7472
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7474
_080B7472:
	movs r2, #0x00
_080B7474:
	cmp r2, #0x00
	bne _080B747A
	b _080B7588
_080B747A:
	ldr r3, _080B751C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B7514 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B7520
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B74CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74BE
_080B74CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B74E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74D4
_080B74E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B74F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74EA
_080B74F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B7500:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B750A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B750A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7500
	b _080B757C
	.byte 0x00, 0x00
_080B7514: .4byte 0x00000FFF
_080B7518: .4byte 0x00007FFF
_080B751C: .4byte 0x03000FD8
_080B7520:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7536
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B752A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B752A
_080B7536:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B754C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7540
_080B754C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7556
_080B7562:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B756C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7576
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7576:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B756C
_080B757C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B76CA
_080B7588:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080B7594
	b _080B76CA
_080B7594:
	ldr r0, _080B764C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B75A2
	b _080B76CA
_080B75A2:
	ldr r2, _080B7650 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B76CA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B7654 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B7658
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B75F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B75F8
_080B7604:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B761A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B760E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B760E
_080B761A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7630
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7624:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7624
_080B7630:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B763A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7644
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7644:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B763A
	b _080B76B4
_080B764C: .4byte 0x0300034C
_080B7650: .4byte 0x03000FD8
_080B7654: .4byte 0x00000FFF
_080B7658:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B766E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7662:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7662
_080B766E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7684
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7678:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7678
_080B7684:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B769A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B768E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B768E
_080B769A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B76A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B76AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B76AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B76A4
_080B76B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B76CA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B7740
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080B76E0
	movs r1, #0x00
_080B76E0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B76EA
	adds r2, r0, #0x0
_080B76EA:
	ldr r0, _080B7734 @ =0x00007FFF
	cmp r1, r0
	ble _080B76F2
	adds r1, r0, #0x0
_080B76F2:
	cmp r1, r2
	bge _080B76F8
	adds r2, r1, #0x0
_080B76F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080B7712
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080B7714
_080B7712:
	movs r2, #0x00
_080B7714:
	cmp r2, #0x00
	beq _080B7740
	cmp r3, #0x01
	ble _080B7740
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080B7738 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080B773C @ =0x080B7C41
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B77DE
_080B7734: .4byte 0x00007FFF
_080B7738: .4byte 0x00000FFF
_080B773C: .4byte sub_80B7C40
_080B7740:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B775E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B7760
_080B775E:
	movs r1, #0x00
_080B7760:
	cmp r1, #0x00
	beq _080B77CA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7780
	cmp r1, #0x04
	bne _080B779C
_080B7780:
	ldr r2, _080B77F0 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B779C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B77AE
	cmp r1, #0x04
	bne _080B77CA
_080B77AE:
	ldr r2, _080B77F4 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B77CA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B77DE
	ldr r0, _080B77F8 @ =0x080B77FD
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080B77DE:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B77F0: .4byte 0x00002031
_080B77F4: .4byte 0x00002060
_080B77F8: .4byte sub_80B77FC
