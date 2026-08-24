	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x004]
	ldr r0, _080A72E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x74]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	ldr r3, [sp, #0x00C]
	subs r0, r3, r0
	str r0, [sp, #0x008]
	lsls r0, r1, #0x02
	subs r3, r3, r0
	str r3, [sp, #0x00C]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080A7216
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A7216:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r2, r4, #0x0
	adds r2, #0xB4
	str r2, [sp, #0x014]
	mov r9, r1
	adds r7, #0xCD
	str r7, [sp, #0x018]
	adds r4, #0x81
	str r4, [sp, #0x010]
	cmp r0, #0x00
	beq _080A7234
	b _080A776A
_080A7234:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080A723C
	movs r1, #0x00
_080A723C:
	ldr r0, _080A72E8 @ =0x00007FFF
	cmp r1, r0
	ble _080A7244
	adds r1, r0, #0x0
_080A7244:
	ldr r4, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080A7258
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A725A
_080A7258:
	movs r2, #0x00
_080A725A:
	adds r7, r5, #0x0
	adds r7, #0x7E
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x014]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	adds r3, r6, #0x0
	adds r3, #0xC5
	str r3, [sp, #0x018]
	adds r4, r5, #0x0
	adds r4, #0x79
	str r4, [sp, #0x010]
	cmp r2, #0x00
	beq _080A7350
	ldr r2, _080A72E4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A72EC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A729E
	movs r1, #0x33
_080A7292:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7292
_080A729E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A72B2
	movs r1, #0x33
_080A72A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72A6
_080A72B2:
	mov r2, r8
	cmp r2, #0x00
	beq _080A72C6
	movs r1, #0x33
_080A72BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72BA
_080A72C6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7348
	movs r1, #0x03
_080A72D0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A72DA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A72DA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A72D0
	b _080A7348
	.byte 0x00, 0x00
_080A72E4: .4byte 0x03000FD8
_080A72E8: .4byte 0x00007FFF
_080A72EC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7302
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A72F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A72F6
_080A7302:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7318
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A730C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A730C
_080A7318:
	mov r2, r8
	cmp r2, #0x00
	beq _080A732E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7322:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7322
_080A732E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7348
	movs r1, #0x10
_080A7338:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7342
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7342:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7338
_080A7348:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A7350:
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080A735A
	movs r1, #0x00
_080A735A:
	mov r0, r10
	cmp r0, #0x00
	bge _080A7362
	movs r2, #0x00
_080A7362:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A736C
	adds r1, r0, #0x0
_080A736C:
	ldr r0, _080A745C @ =0x00007FFF
	cmp r2, r0
	ble _080A7374
	adds r2, r0, #0x0
_080A7374:
	cmp r2, r1
	bge _080A737A
	adds r1, r2, #0x0
_080A737A:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080A738E
	ldr r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A7390
_080A738E:
	movs r1, #0x00
_080A7390:
	cmp r1, #0x00
	bne _080A7396
	b _080A74DC
_080A7396:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080A7460 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A73B4
	b _080A74DC
_080A73B4:
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A7464 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
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
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A74CA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7468
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7414
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7408:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7408
_080A7414:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A742A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A741E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A741E
_080A742A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A7440
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7434:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7434
_080A7440:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A74C6
	movs r1, #0x10
_080A744A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7454
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7454:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A744A
	b _080A74C6
_080A745C: .4byte 0x00007FFF
_080A7460: .4byte 0x0300034C
_080A7464: .4byte 0x03000FD8
_080A7468:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7480
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7474:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7474
_080A7480:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7496
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A748A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A748A
_080A7496:
	mov r2, r8
	cmp r2, #0x00
	beq _080A74AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A74A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A74A0
_080A74AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A74C6
	movs r1, #0x10
_080A74B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A74C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A74C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A74B6
_080A74C6:
	bl sub_807F448
_080A74CA:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A75AC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080A74DC:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A74E8
	b _080A776A
_080A74E8:
	mov r1, r10
	cmp r1, #0x00
	bge _080A74F0
	movs r1, #0x00
_080A74F0:
	ldr r0, _080A75B0 @ =0x00007FFF
	cmp r1, r0
	ble _080A74F8
	adds r1, r0, #0x0
_080A74F8:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A750C
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A750E
_080A750C:
	movs r2, #0x00
_080A750E:
	cmp r2, #0x00
	bne _080A7514
	b _080A7620
_080A7514:
	ldr r3, _080A75B4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A75AC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A75B8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7564
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7558:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7558
_080A7564:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A757A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A756E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A756E
_080A757A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A7590
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7584:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7584
_080A7590:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7614
	movs r1, #0x10
_080A759A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A75A4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A75A4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A759A
	b _080A7614
_080A75AC: .4byte 0x00000FFF
_080A75B0: .4byte 0x00007FFF
_080A75B4: .4byte 0x03000FD8
_080A75B8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A75CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75C2
_080A75CE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A75E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75D8
_080A75E4:
	mov r2, r8
	cmp r2, #0x00
	beq _080A75FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A75EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A75EE
_080A75FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7614
	movs r1, #0x10
_080A7604:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A760E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A760E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7604
_080A7614:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A776A
_080A7620:
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, r10
	ble _080A762A
	b _080A776A
_080A762A:
	ldr r0, _080A76EC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7640
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A7640
	b _080A776A
_080A7640:
	ldr r2, _080A76F0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
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
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080A776A
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080A76F4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A76F8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A76A2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7696:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7696
_080A76A2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A76B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A76AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A76AC
_080A76B8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A76CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A76C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A76C2
_080A76CE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7754
	movs r1, #0x10
_080A76D8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A76E2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A76E2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A76D8
	b _080A7754
	.byte 0x00, 0x00
_080A76EC: .4byte 0x0300034C
_080A76F0: .4byte 0x03000FD8
_080A76F4: .4byte 0x00000FFF
_080A76F8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A770E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7702:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7702
_080A770E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7724
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7718:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7718
_080A7724:
	mov r2, r8
	cmp r2, #0x00
	beq _080A773A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A772E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A772E
_080A773A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7754
	movs r1, #0x10
_080A7744:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A774E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A774E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7744
_080A7754:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080A776A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080A77F0
	movs r3, #0x80
	lsls r3, r3, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080A7780
	movs r2, #0x00
_080A7780:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r3, r0
	ble _080A778A
	adds r3, r0, #0x0
_080A778A:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r2, r0
	ble _080A7792
	adds r2, r0, #0x0
_080A7792:
	cmp r2, r3
	bge _080A7798
	adds r3, r2, #0x0
_080A7798:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r3
	blt _080A77B0
	ldr r3, [sp, #0x014]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r3, #0x01
	cmp r0, r2
	ble _080A77B2
_080A77B0:
	movs r3, #0x00
_080A77B2:
	cmp r3, #0x00
	beq _080A77F0
	cmp r1, #0x02
	bne _080A77F0
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080A77EC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A77CE
	adds r1, #0xFF
_080A77CE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A77D8
	adds r2, #0xFF
_080A77D8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A77E2
	adds r3, #0xFF
_080A77E2:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080A78F8 @ =0x00002F7D
	bl sub_80DF024
_080A77EC:
	movs r0, #0x01
	str r0, [r4, #0x00]
_080A77F0:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080A77F8
	movs r1, #0x00
_080A77F8:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7800
	adds r1, r0, #0x0
_080A7800:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A7818
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A781A
_080A7818:
	movs r2, #0x00
_080A781A:
	cmp r2, #0x00
	beq _080A7826
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A7826:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080A782E
	movs r1, #0x00
_080A782E:
	ldr r0, _080A78F4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7836
	adds r1, r0, #0x0
_080A7836:
	ldr r2, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080A784E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7850
_080A784E:
	movs r2, #0x00
_080A7850:
	cmp r2, #0x00
	beq _080A785C
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A785C:
	movs r2, #0x80
	lsls r2, r2, #0x07
	ldr r1, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, r2
	bgt _080A7878
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A787A
_080A7878:
	movs r1, #0x00
_080A787A:
	cmp r1, #0x00
	beq _080A789E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r2, _080A78FC @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A789E:
	ldr r1, [sp, #0x018]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	adds r4, r0, #0x0
	subs r4, #0x09
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080A78D2
	lsls r1, r4, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	cmp r3, r0
	bge _080A78D2
	ldr r2, _080A7900 @ =0x03001038
	ldr r0, _080A7904 @ =0x0819832C
	ldr r1, _080A7908 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080A78D2:
	ldr r2, [sp, #0x010]
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A78E4
	ldr r0, _080A790C @ =0x080A7911
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080A78E4:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A78F4: .4byte 0x00007FFF
_080A78F8: .4byte 0x00002F7D
_080A78FC: .4byte 0x00002030
_080A7900: .4byte 0x03001038
_080A7904: .4byte 0x0819832C
_080A7908: .4byte 0x08198220
_080A790C: .4byte sub_80A7910
