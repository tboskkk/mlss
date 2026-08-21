	.syntax unified
	.text

	thumb_func_start sub_80C5468
sub_80C5468:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
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
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C54DE
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C54DE:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C54EE
	b _080C5A2C
_080C54EE:
	mov r1, r12
	cmp r1, #0x00
	bge _080C54F6
	movs r1, #0x00
_080C54F6:
	ldr r0, _080C5594 @ =0x00007FFF
	cmp r1, r0
	ble _080C54FE
	adds r1, r0, #0x0
_080C54FE:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5514
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5516
_080C5514:
	movs r2, #0x00
_080C5516:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C55FC
	ldr r2, _080C5590 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5598
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C554A
	movs r1, #0x33
_080C553E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C553E
_080C554A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C555E
	movs r1, #0x33
_080C5552:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5552
_080C555E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5572
	movs r1, #0x33
_080C5566:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5566
_080C5572:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x03
_080C557C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5586
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5586:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C557C
	b _080C55F4
	.byte 0x00, 0x00
_080C5590: .4byte 0x03000FD8
_080C5594: .4byte 0x00007FFF
_080C5598:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C55AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55A2
_080C55AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C55C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55B8
_080C55C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C55DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C55CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C55CE
_080C55DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C55F4
	movs r1, #0x10
_080C55E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C55EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C55EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C55E4
_080C55F4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C55FC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5606
	movs r1, #0x00
_080C5606:
	mov r3, r9
	cmp r3, #0x00
	bge _080C560E
	movs r2, #0x00
_080C560E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5618
	adds r1, r0, #0x0
_080C5618:
	ldr r0, _080C5710 @ =0x00007FFF
	cmp r2, r0
	ble _080C5620
	adds r2, r0, #0x0
_080C5620:
	cmp r2, r1
	bge _080C5626
	adds r1, r2, #0x0
_080C5626:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C563E
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5640
_080C563E:
	movs r1, #0x00
_080C5640:
	cmp r1, #0x00
	bne _080C5646
	b _080C5792
_080C5646:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5714 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5664
	b _080C5792
_080C5664:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5718 @ =0x03000FD8
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
	bne _080C577E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C571C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C56C6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56BA
_080C56C6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C56DC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56D0
_080C56DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C56F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C56E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C56E6
_080C56F2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C56FC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5706
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5706:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C56FC
	b _080C577A
	.byte 0x00, 0x00
_080C5710: .4byte 0x00007FFF
_080C5714: .4byte 0x0300034C
_080C5718: .4byte 0x03000FD8
_080C571C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5734
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5728:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5728
_080C5734:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C574A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C573E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C573E
_080C574A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5760
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5754:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5754
_080C5760:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C577A
	movs r1, #0x10
_080C576A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5774
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5774:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C576A
_080C577A:
	bl sub_807F448
_080C577E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5868 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5792:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C579E
	b _080C5A2C
_080C579E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C57A6
	movs r1, #0x00
_080C57A6:
	ldr r0, _080C586C @ =0x00007FFF
	cmp r1, r0
	ble _080C57AE
	adds r1, r0, #0x0
_080C57AE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C57C6
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C57C8
_080C57C6:
	movs r2, #0x00
_080C57C8:
	cmp r2, #0x00
	bne _080C57CE
	b _080C58DC
_080C57CE:
	ldr r3, _080C5870 @ =0x03000FD8
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
	ldr r0, _080C5868 @ =0x00000FFF
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
	beq _080C5874
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C581E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5812:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5812
_080C581E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5834
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5828:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5828
_080C5834:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C584A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C583E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C583E
_080C584A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C5854:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C585E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C585E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5854
	b _080C58D0
	.byte 0x00, 0x00
_080C5868: .4byte 0x00000FFF
_080C586C: .4byte 0x00007FFF
_080C5870: .4byte 0x03000FD8
_080C5874:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C588A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C587E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C587E
_080C588A:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C58A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5894:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5894
_080C58A0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C58B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C58AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C58AA
_080C58B6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C58D0
	movs r1, #0x10
_080C58C0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C58CA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C58CA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C58C0
_080C58D0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C5A2C
_080C58DC:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C58E8
	b _080C5A2C
_080C58E8:
	ldr r0, _080C59AC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C58FE
	b _080C5A2C
_080C58FE:
	ldr r2, _080C59B0 @ =0x03000FD8
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
	beq _080C592E
	b _080C5A2C
_080C592E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C59B4 @ =0x00000FFF
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
	beq _080C59B8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5962
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5956:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5956
_080C5962:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C5978
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C596C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C596C
_080C5978:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C598E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5982:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5982
_080C598E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5998:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C59A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C59A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5998
	b _080C5A14
	.byte 0x00, 0x00
_080C59AC: .4byte 0x0300034C
_080C59B0: .4byte 0x03000FD8
_080C59B4: .4byte 0x00000FFF
_080C59B8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C59CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59C2
_080C59CE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C59E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59D8
_080C59E4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C59FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C59EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C59EE
_080C59FA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5A14
	movs r1, #0x10
_080C5A04:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5A0E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5A0E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5A04
_080C5A14:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C5A2C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C5AA4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C5A42
	movs r1, #0x00
_080C5A42:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C5A4C
	adds r2, r0, #0x0
_080C5A4C:
	ldr r0, _080C5A98 @ =0x00007FFF
	cmp r1, r0
	ble _080C5A54
	adds r1, r0, #0x0
_080C5A54:
	cmp r1, r2
	bge _080C5A5A
	adds r2, r1, #0x0
_080C5A5A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C5A74
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C5A76
_080C5A74:
	movs r2, #0x00
_080C5A76:
	cmp r2, #0x00
	beq _080C5AA4
	cmp r3, #0x01
	ble _080C5AA4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C5A9C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C5AA0 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C5AEC
	.byte 0x00, 0x00
_080C5A98: .4byte 0x00007FFF
_080C5A9C: .4byte 0x00000FFF
_080C5AA0: .4byte sub_80C65BC
_080C5AA4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5AEC
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C5AC2
	cmp r1, #0x04
	bne _080C5ADA
_080C5AC2:
	ldr r2, _080C5AFC @ =0x00002034
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
_080C5ADA:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5B00 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C5B04 @ =0x080C5B09
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C5AEC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C5AFC: .4byte 0x00002034
_080C5B00: .4byte 0x00000FFF
_080C5B04: .4byte sub_80C5B08
