	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D015C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r8, r1
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r1, r0, #0x03
	mov r4, r8
	subs r4, r4, r1
	mov r12, r4
	lsls r0, r0, #0x02
	subs r0, r0, r2
	lsls r0, r0, #0x01
	mov r1, r8
	subs r1, r1, r0
	mov r10, r1
	mov r9, r10
	lsls r0, r2, #0x03
	adds r0, r0, r2
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	bge _080D00B2
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D00B2:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D00C2
	b _080D0614
_080D00C2:
	mov r1, r12
	cmp r1, #0x00
	bge _080D00CA
	movs r1, #0x00
_080D00CA:
	ldr r0, _080D0160 @ =0x00007FFF
	cmp r1, r0
	ble _080D00D2
	adds r1, r0, #0x0
_080D00D2:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D00EC
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D00EE
_080D00EC:
	movs r2, #0x00
_080D00EE:
	cmp r2, #0x00
	beq _080D01C8
	ldr r2, _080D015C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D0164
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0116
	movs r1, #0x80
_080D010A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D010A
_080D0116:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D012A
	movs r1, #0x80
_080D011E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D011E
_080D012A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D013E
	movs r1, #0x80
_080D0132:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0132
_080D013E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x08
_080D0148:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0152
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0152:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0148
	b _080D01C0
	.byte 0x00, 0x00
_080D015C: .4byte 0x03000FD8
_080D0160: .4byte 0x00007FFF
_080D0164:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D017A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D016E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D016E
_080D017A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0190
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0184:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0184
_080D0190:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D01A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D019A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D019A
_080D01A6:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x10
_080D01B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D01BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D01BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D01B0
_080D01C0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D01C8:
	ldr r3, [r5, #0x30]
	mov r1, r9
	mov r2, r8
	cmp r1, #0x00
	bge _080D01D4
	movs r1, #0x00
_080D01D4:
	mov r0, r8
	cmp r0, #0x00
	bge _080D01DC
	movs r2, #0x00
_080D01DC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D01E6
	adds r1, r0, #0x0
_080D01E6:
	ldr r0, _080D02E0 @ =0x00007FFF
	cmp r2, r0
	ble _080D01EE
	adds r2, r0, #0x0
_080D01EE:
	cmp r2, r1
	bge _080D01F4
	adds r1, r2, #0x0
_080D01F4:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D020E
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0210
_080D020E:
	movs r1, #0x00
_080D0210:
	cmp r1, #0x00
	bne _080D0216
	b _080D0368
_080D0216:
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080D02E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D0238
	b _080D0368
_080D0238:
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D02E8 @ =0x03000FD8
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
	bne _080D034C
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D02EC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0296
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D028A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D028A
_080D0296:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D02AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02A0
_080D02AC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D02C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02B6
_080D02C2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D02CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D02D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D02D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D02CC
	b _080D0348
	.byte 0x00, 0x00
_080D02E0: .4byte 0x00007FFF
_080D02E4: .4byte 0x0300034C
_080D02E8: .4byte 0x03000FD8
_080D02EC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0302
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02F6
_080D0302:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0318
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D030C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D030C
_080D0318:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D032E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0322:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0322
_080D032E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D0338:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0342
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0342:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0338
_080D0348:
	bl sub_807F448
_080D034C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D044C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
_080D0368:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D0378
	b _080D0614
_080D0378:
	mov r1, r8
	cmp r1, #0x00
	bge _080D0380
	movs r1, #0x00
_080D0380:
	ldr r0, _080D0450 @ =0x00007FFF
	cmp r1, r0
	ble _080D0388
	adds r1, r0, #0x0
_080D0388:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D03A2
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D03A4
_080D03A2:
	movs r2, #0x00
_080D03A4:
	cmp r2, #0x00
	bne _080D03AA
	b _080D04C0
_080D03AA:
	ldr r4, _080D0454 @ =0x03000FD8
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
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D044C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D0458
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0402
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D03F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D03F6
_080D0402:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0418
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D040C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D040C
_080D0418:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D042E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0422:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0422
_080D042E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D0438:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0442
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0442:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0438
	b _080D04B4
	.byte 0x00, 0x00
_080D044C: .4byte 0x00000FFF
_080D0450: .4byte 0x00007FFF
_080D0454: .4byte 0x03000FD8
_080D0458:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D046E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0462:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0462
_080D046E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0484
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0478:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0478
_080D0484:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D049A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D048E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D048E
_080D049A:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D04A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D04AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D04AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D04A4
_080D04B4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D0614
_080D04C0:
	ldr r0, [r5, #0x30]
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	ble _080D04CE
	b _080D0614
_080D04CE:
	ldr r0, _080D0594 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D04DC
	b _080D0614
_080D04DC:
	ldr r2, _080D0598 @ =0x03000FD8
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
	ldr r3, [r2, #0x00]
	ldrb r0, [r3, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D050C
	b _080D0614
_080D050C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D059C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	mov r9, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	mov r2, r9
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D05A0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D054C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0540
_080D054C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0556
_080D0562:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D0578
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D056C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D056C
_080D0578:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D0582:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D058C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D058C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0582
	b _080D05FC
_080D0594: .4byte 0x0300034C
_080D0598: .4byte 0x03000FD8
_080D059C: .4byte 0x00000FFF
_080D05A0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D05B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05AA
_080D05B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D05CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05C0
_080D05CC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D05E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05D6
_080D05E2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D05EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D05F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D05F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D05EC
_080D05FC:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D0614:
	ldr r1, [r5, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x0C
	adds r3, r1, #0x0
	cmp r4, #0x00
	beq _080D06C4
	mov r1, r10
	mov r2, r8
	cmp r1, #0x00
	bge _080D062E
	movs r1, #0x00
_080D062E:
	cmp r2, #0x00
	bge _080D0634
	movs r2, #0x00
_080D0634:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D063E
	adds r1, r0, #0x0
_080D063E:
	ldr r0, _080D0690 @ =0x00007FFF
	cmp r2, r0
	ble _080D0646
	adds r2, r0, #0x0
_080D0646:
	cmp r2, r1
	bge _080D064C
	adds r1, r2, #0x0
_080D064C:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r1
	blt _080D0666
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0668
_080D0666:
	movs r1, #0x00
_080D0668:
	cmp r1, #0x00
	beq _080D06C4
	cmp r4, #0x02
	bne _080D06C4
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bgt _080D0694
	adds r0, #0x01
	str r0, [r1, #0x00]
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	b _080D06A2
	.byte 0x00, 0x00
_080D0690: .4byte 0x00007FFF
_080D0694:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D06A2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D06BA
	cmp r1, #0x04
	bne _080D0774
_080D06BA:
	ldr r0, _080D06C0 @ =0x080D0C85
	b _080D0772
	.byte 0x00, 0x00
_080D06C0: .4byte sub_80D0C84
_080D06C4:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0774
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0726
	cmp r1, #0x04
	bne _080D0740
_080D0726:
	ldr r2, _080D0784 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D0740:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0752
	cmp r1, #0x04
	bne _080D076E
_080D0752:
	ldr r2, _080D0788 @ =0x00002065
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
_080D076E:
	ldr r0, _080D078C @ =0x080D0791
	ldr r2, [sp, #0x004]
_080D0772:
	str r0, [r2, #0x4C]
_080D0774:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0784: .4byte 0x00002036
_080D0788: .4byte 0x00002065
_080D078C: .4byte sub_80D0790
