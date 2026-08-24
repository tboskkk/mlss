	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r4, _080CF2EC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	bl sub_8087CE4
	mov r0, r9
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r2, #0xB4
	adds r2, r2, r5
	mov r12, r2
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x82
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080CF218
	b _080CF818
_080CF218:
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r4, r0, #0x01
	lsls r1, r0, #0x02
	str r1, [sp, #0x008]
	str r1, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r1
	bge _080CF240
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CF240:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080CF250
	b _080CF784
_080CF250:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080CF258
	movs r1, #0x00
_080CF258:
	ldr r0, _080CF2F0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF260
	adds r1, r0, #0x0
_080CF260:
	mov r4, r12
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, r1
	bgt _080CF274
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF276
_080CF274:
	movs r2, #0x00
_080CF276:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r10, r3
	adds r5, r6, #0x0
	adds r5, #0xAE
	cmp r2, #0x00
	beq _080CF358
	ldr r2, _080CF2EC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF2F4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF2A8
	movs r1, #0x4C
_080CF29C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF29C
_080CF2A8:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF2BC
	movs r1, #0x4C
_080CF2B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2B0
_080CF2BC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF2D0
	movs r1, #0x4C
_080CF2C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2C4
_080CF2D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x04
_080CF2DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF2E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF2E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF2DA
	b _080CF350
_080CF2EC: .4byte 0x03000FD8
_080CF2F0: .4byte 0x00007FFF
_080CF2F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF30A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF2FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2FE
_080CF30A:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF320
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF314:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF314
_080CF320:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF32A
_080CF336:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x10
_080CF340:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF34A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF34A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF340
_080CF350:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CF358:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF362
	movs r1, #0x00
_080CF362:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF36A
	movs r2, #0x00
_080CF36A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CF374
	adds r1, r0, #0x0
_080CF374:
	ldr r0, _080CF46C @ =0x00007FFF
	cmp r2, r0
	ble _080CF37C
	adds r2, r0, #0x0
_080CF37C:
	cmp r2, r1
	bge _080CF382
	adds r1, r2, #0x0
_080CF382:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080CF39A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CF39C
_080CF39A:
	movs r1, #0x00
_080CF39C:
	cmp r1, #0x00
	bne _080CF3A2
	b _080CF4EE
_080CF3A2:
	ldr r1, _080CF470 @ =0xFF000001
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080CF474 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CF3C2
	b _080CF4EE
_080CF3C2:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CF478 @ =0x03000FD8
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
	bne _080CF4DE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF47C
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF424
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF418:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF418
_080CF424:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF43A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF42E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF42E
_080CF43A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF450
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF444:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF444
_080CF450:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF45A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF464
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF464:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF45A
	b _080CF4DA
_080CF46C: .4byte 0x00007FFF
_080CF470: .4byte 0xFF000001
_080CF474: .4byte 0x0300034C
_080CF478: .4byte 0x03000FD8
_080CF47C:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF488
_080CF494:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF49E
_080CF4AA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF4C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF4B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF4B4
_080CF4C0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF4CA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF4D4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF4D4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF4CA
_080CF4DA:
	bl sub_807F448
_080CF4DE:
	ldrh r0, [r5, #0x00]
	ldr r1, _080CF5BC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080CF4EE:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CF4F8
	b _080CF784
_080CF4F8:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF500
	movs r1, #0x00
_080CF500:
	ldr r0, _080CF5C0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF508
	adds r1, r0, #0x0
_080CF508:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CF520
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF522
_080CF520:
	movs r2, #0x00
_080CF522:
	cmp r2, #0x00
	bne _080CF528
	b _080CF630
_080CF528:
	ldr r3, _080CF5C4 @ =0x03000FD8
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080CF5BC @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF5C8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF574
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF568:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF568
_080CF574:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF58A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF57E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF57E
_080CF58A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF5A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF594:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF594
_080CF5A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF5AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF5B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF5B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF5AA
	b _080CF624
_080CF5BC: .4byte 0x00000FFF
_080CF5C0: .4byte 0x00007FFF
_080CF5C4: .4byte 0x03000FD8
_080CF5C8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF5DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5D2
_080CF5DE:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF5F4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5E8
_080CF5F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF60A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5FE
_080CF60A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF614:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF61E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF61E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF614
_080CF624:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CF784
_080CF630:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080CF63E
	b _080CF784
_080CF63E:
	ldr r0, _080CF6FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080CF700 @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080CF654
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080CF654
	b _080CF784
_080CF654:
	ldr r2, _080CF704 @ =0x03000FD8
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
	ldr r1, _080CF708 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF682
	b _080CF784
_080CF682:
	ldrh r1, [r5, #0x00]
	ldr r0, _080CF70C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF710
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF6B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6A6
_080CF6B2:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF6C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6BC
_080CF6C8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF6DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6D2
_080CF6DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF6E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF6F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF6F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF6E8
	b _080CF76C
	.byte 0x00, 0x00
_080CF6FC: .4byte 0x0300034C
_080CF700: .4byte 0xFF000001
_080CF704: .4byte 0x03000FD8
_080CF708: .4byte 0x00FFFFFE
_080CF70C: .4byte 0x00000FFF
_080CF710:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF726
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF71A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF71A
_080CF726:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF73C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF730:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF730
_080CF73C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF752
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF746:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF746
_080CF752:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF75C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF766
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF766:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF75C
_080CF76C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080CF784:
	ldrh r0, [r5, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080CF818
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080CF796
	movs r2, #0x00
_080CF796:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF79E
	movs r3, #0x00
_080CF79E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080CF7A8
	adds r2, r0, #0x0
_080CF7A8:
	ldr r0, _080CF80C @ =0x00007FFF
	cmp r3, r0
	ble _080CF7B0
	adds r3, r0, #0x0
_080CF7B0:
	cmp r3, r2
	bge _080CF7B6
	adds r2, r3, #0x0
_080CF7B6:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r2
	blt _080CF7D0
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080CF7D2
_080CF7D0:
	movs r2, #0x00
_080CF7D2:
	cmp r2, #0x00
	beq _080CF818
	cmp r1, #0x02
	bne _080CF818
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF7EC
	cmp r1, #0x04
	bne _080CF7F2
_080CF7EC:
	ldr r0, _080CF810 @ =0x080D2DA5
	mov r3, r9
	str r0, [r3, #0x4C]
_080CF7F2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF806
	cmp r1, #0x04
	beq _080CF806
	b _080CFB24
_080CF806:
	ldr r0, _080CF814 @ =0x080CFCCD
	str r0, [r6, #0x4C]
	b _080CFB24
_080CF80C: .4byte 0x00007FFF
_080CF810: .4byte sub_80D2DA4
_080CF814: .4byte sub_80CFCCC
_080CF818:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	ble _080CF878
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF82C
	movs r1, #0x00
_080CF82C:
	ldr r0, _080CF9D8 @ =0x00007FFF
	cmp r1, r0
	ble _080CF834
	adds r1, r0, #0x0
_080CF834:
	mov r0, r9
	adds r0, #0xAC
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	bgt _080CF84E
	mov r0, r9
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF850
_080CF84E:
	movs r2, #0x00
_080CF850:
	cmp r2, #0x00
	beq _080CF878
	mov r1, r9
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080CF878
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF874
	cmp r1, #0x04
	bne _080CF878
_080CF874:
	ldr r0, _080CF9DC @ =0x080CE1B5
	str r0, [r6, #0x4C]
_080CF878:
	mov r0, r9
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CF888
	b _080CFB24
_080CF888:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	mov r2, r9
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CF9E0 @ =0x0413428C
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	mov r3, r9
	ldrh r0, [r3, #0x24]
	adds r0, #0x01
	strh r0, [r3, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bgt _080CF8E2
	ldr r2, _080CF9E4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CF918
_080CF8E2:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CF8EA
	adds r1, #0xFF
_080CF8EA:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CF900
	adds r2, #0xFF
_080CF900:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080CF918:
	mov r0, r9
	bl sub_807C298
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080CF926
	b _080CFB24
_080CF926:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	ble _080CF92E
	b _080CFB24
_080CF92E:
	ldr r0, [r7, #0x28]
	ldr r3, _080CF9E4 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080CF950
	adds r0, r7, #0x0
	bl sub_8086700
_080CF950:
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CF964
	cmp r2, #0x04
	bne _080CF9A8
_080CF964:
	mov r5, r8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF974
	adds r0, #0xFF
_080CF974:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF982
	adds r0, #0xFF
_080CF982:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF990
	adds r0, #0xFF
_080CF990:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_80880C4
_080CF9A8:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF9B6
	cmp r1, #0x04
	bne _080CFA2C
_080CF9B6:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CF9EC
	ldr r2, _080CF9E8 @ =0x00002002
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CF9F8
	.byte 0x00, 0x00
_080CF9D8: .4byte 0x00007FFF
_080CF9DC: .4byte sub_80CE1B4
_080CF9E0: .4byte 0x0413428C
_080CF9E4: .4byte 0x00000111
_080CF9E8: .4byte 0x00002002
_080CF9EC:
	ldr r2, _080CFAC8 @ =0x0000204F
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CF9F8:
	mov r5, r8
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	mov r0, r8
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFA10
	movs r2, #0x01
_080CFA10:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFA2C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFA3A
	cmp r2, #0x04
	bne _080CFA46
_080CFA3A:
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	mov r0, r8
	bl sub_808863C
_080CFA46:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CFA5A
	cmp r2, #0x04
	bne _080CFA9C
_080CFA5A:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA68
	adds r0, #0xFF
_080CFA68:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA76
	adds r0, #0xFF
_080CFA76:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA84
	adds r0, #0xFF
_080CFA84:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080CFA9C:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFAAA
	cmp r1, #0x04
	bne _080CFB0C
_080CFAAA:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CFAD0
	ldr r2, _080CFACC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CFADC
_080CFAC8: .4byte 0x0000204F
_080CFACC: .4byte 0x00002002
_080CFAD0:
	ldr r2, _080CFB34 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CFADC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFAF2
	movs r2, #0x01
_080CFAF2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFB0C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFB1A
	cmp r2, #0x04
	bne _080CFB24
_080CFB1A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CFB24:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CFB34: .4byte 0x0000204F
