	.syntax unified
	.text

	thumb_func_start sub_80D41DC
sub_80D41DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D4334 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	ldr r7, [r1, #0x2C]
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r10, r2
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	mov r3, r8
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080D422C
	b _080D48A8
_080D422C:
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r3, r0, r3
	str r3, [sp, #0x00C]
	str r3, [sp, #0x008]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080D4270
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D4270:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080D4280
	b _080D47FC
_080D4280:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	mov r8, r3
	cmp r0, #0x00
	bne _080D4292
	b _080D43A0
_080D4292:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D429A
	movs r1, #0x00
_080D429A:
	ldr r0, _080D4338 @ =0x00007FFF
	cmp r1, r0
	ble _080D42A2
	adds r1, r0, #0x0
_080D42A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D42BA
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D42BC
_080D42BA:
	movs r2, #0x00
_080D42BC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080D43A0
	ldr r2, _080D4334 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D433C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D42F0
	movs r1, #0x4C
_080D42E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42E4
_080D42F0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4304
	movs r1, #0x4C
_080D42F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42F8
_080D4304:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4318
	movs r1, #0x4C
_080D430C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D430C
_080D4318:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x04
_080D4322:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D432C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D432C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4322
	b _080D4398
_080D4334: .4byte 0x03000FD8
_080D4338: .4byte 0x00007FFF
_080D433C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4352
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4346:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4346
_080D4352:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4368
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D435C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D435C
_080D4368:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D437E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4372:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4372
_080D437E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x10
_080D4388:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4392
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4392:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4388
_080D4398:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D43A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080D43AA
	movs r1, #0x00
_080D43AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080D43B2
	movs r2, #0x00
_080D43B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D43BC
	adds r1, r0, #0x0
_080D43BC:
	ldr r0, _080D440C @ =0x00007FFF
	cmp r2, r0
	ble _080D43C4
	adds r2, r0, #0x0
_080D43C4:
	cmp r2, r1
	bge _080D43CA
	adds r1, r2, #0x0
_080D43CA:
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D43E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D43E4
_080D43E2:
	movs r1, #0x00
_080D43E4:
	cmp r1, #0x00
	bne _080D43EA
	b _080D4562
_080D43EA:
	ldr r0, _080D4410 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080D4414
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	b _080D442C
_080D440C: .4byte 0x00007FFF
_080D4410: .4byte 0x03000FD8
_080D4414:
	cmp r1, #0x40
	bne _080D442C
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_807E680
_080D442C:
	ldr r0, _080D44E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D443A
	b _080D4562
_080D443A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D44E8 @ =0x03000FD8
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
	bne _080D454E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D44EC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D449C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4490:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4490
_080D449C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D44B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44A6
_080D44B2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D44C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44BC
_080D44C8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D44D2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D44DC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D44DC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D44D2
	b _080D454A
_080D44E4: .4byte 0x0300034C
_080D44E8: .4byte 0x03000FD8
_080D44EC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4504
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44F8
_080D4504:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D451A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D450E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D450E
_080D451A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4530
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4524:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4524
_080D4530:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D453A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4544
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4544:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D453A
_080D454A:
	bl sub_807F448
_080D454E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4638 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080D4562:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D456E
	b _080D47FC
_080D456E:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4576
	movs r1, #0x00
_080D4576:
	ldr r0, _080D463C @ =0x00007FFF
	cmp r1, r0
	ble _080D457E
	adds r1, r0, #0x0
_080D457E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4596
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4598
_080D4596:
	movs r2, #0x00
_080D4598:
	cmp r2, #0x00
	bne _080D459E
	b _080D46AC
_080D459E:
	ldr r3, _080D4640 @ =0x03000FD8
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
	ldr r0, _080D4638 @ =0x00000FFF
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
	beq _080D4644
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D45EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45E2
_080D45EE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45F8
_080D4604:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D461A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D460E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D460E
_080D461A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4624:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D462E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D462E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4624
	b _080D46A0
	.byte 0x00, 0x00
_080D4638: .4byte 0x00000FFF
_080D463C: .4byte 0x00007FFF
_080D4640: .4byte 0x03000FD8
_080D4644:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D465A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D464E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D464E
_080D465A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4670
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4664:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4664
_080D4670:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D4686
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D467A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D467A
_080D4686:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4690:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D469A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D469A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4690
_080D46A0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D47FC
_080D46AC:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080D46B8
	b _080D47FC
_080D46B8:
	ldr r0, _080D477C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	b _080D47FC
_080D46CE:
	ldr r2, _080D4780 @ =0x03000FD8
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
	beq _080D46FE
	b _080D47FC
_080D46FE:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4784 @ =0x00000FFF
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
	beq _080D4788
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4732
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4726:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4726
_080D4732:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4748
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D473C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D473C
_080D4748:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D475E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4752:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4752
_080D475E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D4768:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4772
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4772:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4768
	b _080D47E4
	.byte 0x00, 0x00
_080D477C: .4byte 0x0300034C
_080D4780: .4byte 0x03000FD8
_080D4784: .4byte 0x00000FFF
_080D4788:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D479E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4792
_080D479E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D47B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47A8
_080D47B4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D47CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47BE
_080D47CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D47D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D47DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D47DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D47D4
_080D47E4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080D47FC:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4878
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080D4810
	movs r1, #0x00
_080D4810:
	mov r4, r10
	cmp r4, #0x00
	bge _080D4818
	movs r2, #0x00
_080D4818:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4822
	adds r1, r0, #0x0
_080D4822:
	ldr r0, _080D486C @ =0x00007FFF
	cmp r2, r0
	ble _080D482A
	adds r2, r0, #0x0
_080D482A:
	cmp r2, r1
	bge _080D4830
	adds r1, r2, #0x0
_080D4830:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D484A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D484C
_080D484A:
	movs r1, #0x00
_080D484C:
	cmp r1, #0x00
	beq _080D4878
	cmp r3, #0x01
	ble _080D4878
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080D4870 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D4874 @ =0x080D68B5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D48BA
_080D486C: .4byte 0x00007FFF
_080D4870: .4byte 0x00000FFF
_080D4874: .4byte sub_80D68B4
_080D4878:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4880
	movs r1, #0x00
_080D4880:
	ldr r0, _080D48CC @ =0x00007FFF
	cmp r1, r0
	ble _080D4888
	adds r1, r0, #0x0
_080D4888:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D48A2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D48A4
_080D48A2:
	movs r2, #0x00
_080D48A4:
	cmp r2, #0x00
	beq _080D48BA
_080D48A8:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D48D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D48D4 @ =0x080D48D9
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D48BA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D48CC: .4byte 0x00007FFF
_080D48D0: .4byte 0x00000FFF
_080D48D4: .4byte sub_80D48D8
