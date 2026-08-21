	.syntax unified
	.text

	thumb_func_start sub_80C40E0
sub_80C40E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C41FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C414A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C414A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C415A
	b _080C4694
_080C415A:
	mov r1, r12
	cmp r1, #0x00
	bge _080C4162
	movs r1, #0x00
_080C4162:
	ldr r0, _080C4200 @ =0x00007FFF
	cmp r1, r0
	ble _080C416A
	adds r1, r0, #0x0
_080C416A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C4180
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4182
_080C4180:
	movs r2, #0x00
_080C4182:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C4268
	ldr r2, _080C41FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C4204
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C41B6
	movs r1, #0x33
_080C41AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41AA
_080C41B6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C41CA
	movs r1, #0x33
_080C41BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41BE
_080C41CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C41DE
	movs r1, #0x33
_080C41D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C41D2
_080C41DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x03
_080C41E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C41F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C41F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C41E8
	b _080C4260
	.byte 0x00, 0x00
_080C41FC: .4byte 0x03000FD8
_080C4200: .4byte 0x00007FFF
_080C4204:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C421A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C420E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C420E
_080C421A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4230
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4224:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4224
_080C4230:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4246
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C423A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C423A
_080C4246:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4260
	movs r1, #0x10
_080C4250:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C425A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C425A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4250
_080C4260:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C4268:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C4272
	movs r1, #0x00
_080C4272:
	mov r0, r9
	cmp r0, #0x00
	bge _080C427A
	movs r2, #0x00
_080C427A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4284
	adds r1, r0, #0x0
_080C4284:
	ldr r0, _080C437C @ =0x00007FFF
	cmp r2, r0
	ble _080C428C
	adds r2, r0, #0x0
_080C428C:
	cmp r2, r1
	bge _080C4292
	adds r1, r2, #0x0
_080C4292:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C42AA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C42AC
_080C42AA:
	movs r1, #0x00
_080C42AC:
	cmp r1, #0x00
	bne _080C42B2
	b _080C43FC
_080C42B2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4380 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C42D0
	b _080C43FC
_080C42D0:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4384 @ =0x03000FD8
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
	bne _080C43EA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4388
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4332
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4326:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4326
_080C4332:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4348
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C433C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C433C
_080C4348:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C435E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4352:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4352
_080C435E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C4368:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4372
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4372:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4368
	b _080C43E6
	.byte 0x00, 0x00
_080C437C: .4byte 0x00007FFF
_080C4380: .4byte 0x0300034C
_080C4384: .4byte 0x03000FD8
_080C4388:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C43A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4394
_080C43A0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C43B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43AA
_080C43B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C43CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C43C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C43C0
_080C43CC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C43E6
	movs r1, #0x10
_080C43D6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C43E0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C43E0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C43D6
_080C43E6:
	bl sub_807F448
_080C43EA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C44D0 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C43FC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4408
	b _080C4694
_080C4408:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4410
	movs r1, #0x00
_080C4410:
	ldr r0, _080C44D4 @ =0x00007FFF
	cmp r1, r0
	ble _080C4418
	adds r1, r0, #0x0
_080C4418:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4430
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4432
_080C4430:
	movs r2, #0x00
_080C4432:
	cmp r2, #0x00
	bne _080C4438
	b _080C4544
_080C4438:
	ldr r3, _080C44D8 @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C44D0 @ =0x00000FFF
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
	beq _080C44DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4488
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C447C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C447C
_080C4488:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C449E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4492:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4492
_080C449E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C44B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44A8
_080C44B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C44BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C44C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C44C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C44BE
	b _080C4538
_080C44D0: .4byte 0x00000FFF
_080C44D4: .4byte 0x00007FFF
_080C44D8: .4byte 0x03000FD8
_080C44DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C44F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44E6
_080C44F2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4508
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C44FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C44FC
_080C4508:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C451E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4512:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4512
_080C451E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4538
	movs r1, #0x10
_080C4528:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4532
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4532:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4528
_080C4538:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4694
_080C4544:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4550
	b _080C4694
_080C4550:
	ldr r0, _080C4614 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4566
	b _080C4694
_080C4566:
	ldr r2, _080C4618 @ =0x03000FD8
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
	beq _080C4596
	b _080C4694
_080C4596:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C461C @ =0x00000FFF
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
	beq _080C4620
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C45CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45BE
_080C45CA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C45E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45D4
_080C45E0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C45F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C45EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C45EA
_080C45F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C4600:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C460A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C460A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4600
	b _080C467C
	.byte 0x00, 0x00
_080C4614: .4byte 0x0300034C
_080C4618: .4byte 0x03000FD8
_080C461C: .4byte 0x00000FFF
_080C4620:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4636
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C462A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C462A
_080C4636:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C464C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4640:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4640
_080C464C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4656
_080C4662:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C467C
	movs r1, #0x10
_080C466C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4676
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4676:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C466C
_080C467C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4694:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C46A0
	b _080C47B2
_080C46A0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C46AC
	movs r2, #0x00
_080C46AC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C46B6
	adds r1, r0, #0x0
_080C46B6:
	ldr r0, _080C46EC @ =0x00007FFF
	cmp r2, r0
	ble _080C46BE
	adds r2, r0, #0x0
_080C46BE:
	cmp r2, r1
	bge _080C46C4
	adds r1, r2, #0x0
_080C46C4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C46DE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C46E0
_080C46DE:
	movs r1, #0x00
_080C46E0:
	cmp r1, #0x00
	beq _080C47B2
	cmp r7, #0x01
	ble _080C46F4
	ldr r4, _080C46F0 @ =0x0403038B
	b _080C46F6
_080C46EC: .4byte 0x00007FFF
_080C46F0: .4byte 0x0403038B
_080C46F4:
	ldr r4, _080C473C @ =0x0403028B
_080C46F6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080C4740
	cmp r1, #0x01
	bne _080C4740
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C47F8
	.byte 0x00, 0x00
_080C473C: .4byte 0x0403028B
_080C4740:
	cmp r7, #0x01
	ble _080C4770
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C474C
	adds r1, #0xFF
_080C474C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4756
	adds r2, #0xFF
_080C4756:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4760
	adds r3, #0xFF
_080C4760:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C476C @ =0x00002E7A
	bl sub_80DF024
	b _080C479A
_080C476C: .4byte 0x00002E7A
_080C4770:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4778
	adds r0, #0xFF
_080C4778:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4784
	adds r2, #0xFF
_080C4784:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C478E
	adds r3, #0xFF
_080C478E:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4808 @ =0x000006F7
	bl sub_80DF024
_080C479A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C480C @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C47B2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C47F8
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C47D0
	cmp r1, #0x04
	bne _080C47E8
_080C47D0:
	ldr r2, _080C4810 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C47E8:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C480C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080C4814 @ =0x080C4819
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C47F8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4808: .4byte 0x000006F7
_080C480C: .4byte 0x00000FFF
_080C4810: .4byte 0x00002034
_080C4814: .4byte sub_80C4818
