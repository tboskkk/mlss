	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	ldr r1, _080B4520 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r2, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x2C]
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x004]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080B446E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B446E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B447E
	b _080B49B4
_080B447E:
	mov r1, r12
	cmp r1, #0x00
	bge _080B4486
	movs r1, #0x00
_080B4486:
	ldr r0, _080B4524 @ =0x00007FFF
	cmp r1, r0
	ble _080B448E
	adds r1, r0, #0x0
_080B448E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B44A4
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B44A6
_080B44A4:
	movs r2, #0x00
_080B44A6:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080B458C
	ldr r2, _080B4520 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B4528
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B44DA
	movs r1, #0x4C
_080B44CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44CE
_080B44DA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B44EE
	movs r1, #0x4C
_080B44E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44E2
_080B44EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4502
	movs r1, #0x4C
_080B44F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44F6
_080B4502:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4584
	movs r1, #0x04
_080B450C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4516
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4516:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B450C
	b _080B4584
	.byte 0x00, 0x00
_080B4520: .4byte 0x03000FD8
_080B4524: .4byte 0x00007FFF
_080B4528:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B453E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4532:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4532
_080B453E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4554
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4548:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4548
_080B4554:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B456A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B455E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B455E
_080B456A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4584
	movs r1, #0x10
_080B4574:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B457E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B457E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4574
_080B4584:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B458C:
	ldr r1, [sp, #0x004]
	mov r2, r9
	cmp r1, #0x00
	bge _080B4596
	movs r1, #0x00
_080B4596:
	mov r3, r9
	cmp r3, #0x00
	bge _080B459E
	movs r2, #0x00
_080B459E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B45A8
	adds r1, r0, #0x0
_080B45A8:
	ldr r0, _080B46A0 @ =0x00007FFF
	cmp r2, r0
	ble _080B45B0
	adds r2, r0, #0x0
_080B45B0:
	cmp r2, r1
	bge _080B45B6
	adds r1, r2, #0x0
_080B45B6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B45CE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B45D0
_080B45CE:
	movs r1, #0x00
_080B45D0:
	cmp r1, #0x00
	bne _080B45D6
	b _080B4722
_080B45D6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B46A4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B45F4
	b _080B4722
_080B45F4:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B46A8 @ =0x03000FD8
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
	bne _080B470E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B46AC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B4656
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B464A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B464A
_080B4656:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B466C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4660:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4660
_080B466C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4682
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4676:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4676
_080B4682:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B470A
	movs r1, #0x10
_080B468C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4696
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4696:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B468C
	b _080B470A
	.byte 0x00, 0x00
_080B46A0: .4byte 0x00007FFF
_080B46A4: .4byte 0x0300034C
_080B46A8: .4byte 0x03000FD8
_080B46AC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B46C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46B8
_080B46C4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B46DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46CE
_080B46DA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B46F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46E4
_080B46F0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B470A
	movs r1, #0x10
_080B46FA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4704
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4704:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B46FA
_080B470A:
	bl sub_807F448
_080B470E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B47F8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B4722:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B472E
	b _080B49B4
_080B472E:
	mov r1, r9
	cmp r1, #0x00
	bge _080B4736
	movs r1, #0x00
_080B4736:
	ldr r0, _080B47FC @ =0x00007FFF
	cmp r1, r0
	ble _080B473E
	adds r1, r0, #0x0
_080B473E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B4756
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B4758
_080B4756:
	movs r2, #0x00
_080B4758:
	cmp r2, #0x00
	bne _080B475E
	b _080B486C
_080B475E:
	ldr r3, _080B4800 @ =0x03000FD8
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
	ldr r0, _080B47F8 @ =0x00000FFF
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
	beq _080B4804
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B47AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47A2
_080B47AE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B47C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47B8
_080B47C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B47DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47CE
_080B47DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4860
	movs r1, #0x10
_080B47E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B47EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B47EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B47E4
	b _080B4860
	.byte 0x00, 0x00
_080B47F8: .4byte 0x00000FFF
_080B47FC: .4byte 0x00007FFF
_080B4800: .4byte 0x03000FD8
_080B4804:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B481A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B480E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B480E
_080B481A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4830
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4824:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4824
_080B4830:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4846
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B483A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B483A
_080B4846:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4860
	movs r1, #0x10
_080B4850:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B485A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B485A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4850
_080B4860:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B49B4
_080B486C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080B4878
	b _080B49B4
_080B4878:
	ldr r0, _080B4934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B4886
	b _080B49B4
_080B4886:
	ldr r2, _080B4938 @ =0x03000FD8
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
	beq _080B48B6
	b _080B49B4
_080B48B6:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B493C @ =0x00000FFF
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
	beq _080B4940
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B48EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B48DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B48DE
_080B48EA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4900
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B48F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B48F4
_080B4900:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4916
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B490A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B490A
_080B4916:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B499C
	movs r1, #0x10
_080B4920:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B492A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B492A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4920
	b _080B499C
	.byte 0x00, 0x00
_080B4934: .4byte 0x0300034C
_080B4938: .4byte 0x03000FD8
_080B493C: .4byte 0x00000FFF
_080B4940:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B4956
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B494A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B494A
_080B4956:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B496C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4960:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4960
_080B496C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4982
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4976:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4976
_080B4982:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B499C
	movs r1, #0x10
_080B498C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4996
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4996:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B498C
_080B499C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B49B4:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B49C0
	b _080B4AD0
_080B49C0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080B49CC
	movs r2, #0x00
_080B49CC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B49D6
	adds r1, r0, #0x0
_080B49D6:
	ldr r0, _080B4A10 @ =0x00007FFF
	cmp r2, r0
	ble _080B49DE
	adds r2, r0, #0x0
_080B49DE:
	cmp r2, r1
	bge _080B49E4
	adds r1, r2, #0x0
_080B49E4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B49FE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B4A00
_080B49FE:
	movs r1, #0x00
_080B4A00:
	cmp r1, #0x00
	beq _080B4AD0
	cmp r4, #0x01
	ble _080B4A18
	ldr r2, _080B4A14 @ =0x040A1189
	mov r9, r2
	b _080B4A1C
	.byte 0x00, 0x00
_080B4A10: .4byte 0x00007FFF
_080B4A14: .4byte 0x040A1189
_080B4A18:
	ldr r3, _080B4A60 @ =0x040A1089
	mov r9, r3
_080B4A1C:
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
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B4A64
	cmp r1, #0x01
	bne _080B4A64
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B4D62
	.byte 0x00, 0x00
_080B4A60: .4byte 0x040A1089
_080B4A64:
	cmp r4, #0x01
	ble _080B4A94
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B4A70
	adds r1, #0xFF
_080B4A70:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B4A7A
	adds r2, #0xFF
_080B4A7A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B4A84
	adds r3, #0xFF
_080B4A84:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B4A90 @ =0x00002E10
	bl sub_80DF024
	b _080B4ABA
_080B4A90: .4byte 0x00002E10
_080B4A94:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B4A9C
	adds r1, #0xFF
_080B4A9C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B4AA6
	adds r2, #0xFF
_080B4AA6:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B4AB0
	adds r3, #0xFF
_080B4AB0:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B4B64 @ =0x000006E3
	bl sub_80DF024
_080B4ABA:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4B68 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B4AD0:
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B4AF2
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r2, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B4AF2
	strh r1, [r2, #0x06]
_080B4AF2:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B4B6C @ =0x03001038
	ldr r2, _080B4B70 @ =0x0819832C
	ldr r3, _080B4B74 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B4B2C
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4B2E
_080B4B2C:
	movs r1, #0x00
_080B4B2E:
	cmp r1, #0x00
	beq _080B4B94
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4B44
	cmp r1, #0x04
	bne _080B4B94
_080B4B44:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4B78
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4B84
_080B4B64: .4byte 0x000006E3
_080B4B68: .4byte 0x00000FFF
_080B4B6C: .4byte 0x03001038
_080B4B70: .4byte 0x0819832C
_080B4B74: .4byte 0x08198220
_080B4B78:
	ldr r2, _080B4C7C @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4B84:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4B94:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	bgt _080B4BAE
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4BB0
_080B4BAE:
	movs r1, #0x00
_080B4BB0:
	cmp r1, #0x00
	beq _080B4BE8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4BD0
	cmp r1, #0x04
	bne _080B4BE8
_080B4BD0:
	ldr r2, _080B4C80 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B4BE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B4BF8
	b _080B4D62
_080B4BF8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B4C0C
	cmp r2, #0x04
	bne _080B4C4E
_080B4C0C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C1A
	adds r0, #0xFF
_080B4C1A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C28
	adds r0, #0xFF
_080B4C28:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C36
	adds r0, #0xFF
_080B4C36:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B4C4E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4C5C
	cmp r1, #0x04
	bne _080B4CC4
_080B4C5C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4C88
	ldr r2, _080B4C84 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4C94
	.byte 0x00, 0x00
_080B4C7C: .4byte 0x0000204D
_080B4C80: .4byte 0x00002060
_080B4C84: .4byte 0x00002002
_080B4C88:
	ldr r2, _080B4D74 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B4C94:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B4CAA
	movs r2, #0x01
_080B4CAA:
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
_080B4CC4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4CD2
	cmp r2, #0x04
	bne _080B4CDC
_080B4CD2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B4CDC:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B4CFC
	cmp r2, #0x04
	bne _080B4D4A
_080B4CFC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D0A
	adds r0, #0xFF
_080B4D0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D18
	adds r0, #0xFF
_080B4D18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D26
	adds r0, #0xFF
_080B4D26:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B4D38
	adds r0, #0xFF
_080B4D38:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B4D78 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B4D4A:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4D58
	cmp r2, #0x04
	bne _080B4D62
_080B4D58:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B4D62:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4D74: .4byte 0x0000204F
_080B4D78: .4byte 0x000007CC
