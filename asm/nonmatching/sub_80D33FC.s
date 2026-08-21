	.syntax unified
	.text

	thumb_func_start sub_80D33FC
sub_80D33FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D3520 @ =0x03000FD8
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
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D3470
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3470:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D3480
	b _080D39AC
_080D3480:
	mov r1, r12
	cmp r1, #0x00
	bge _080D3488
	movs r1, #0x00
_080D3488:
	ldr r0, _080D3524 @ =0x00007FFF
	cmp r1, r0
	ble _080D3490
	adds r1, r0, #0x0
_080D3490:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D34A6
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D34A8
_080D34A6:
	movs r2, #0x00
_080D34A8:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080D358C
	ldr r2, _080D3520 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D3528
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D34DC
	movs r1, #0x80
_080D34D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34D0
_080D34DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D34F0
	movs r1, #0x80
_080D34E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34E4
_080D34F0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D3504
	movs r1, #0x80
_080D34F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34F8
_080D3504:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x08
_080D350E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3518
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3518:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D350E
	b _080D3584
_080D3520: .4byte 0x03000FD8
_080D3524: .4byte 0x00007FFF
_080D3528:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D353E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3532:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3532
_080D353E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3554
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3548:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3548
_080D3554:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D356A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D355E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D355E
_080D356A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x10
_080D3574:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D357E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D357E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3574
_080D3584:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D358C:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D3598
	movs r1, #0x00
_080D3598:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D35A2
	adds r1, r0, #0x0
_080D35A2:
	ldr r0, _080D369C @ =0x00007FFF
	cmp r2, r0
	ble _080D35AA
	adds r2, r0, #0x0
_080D35AA:
	cmp r2, r1
	bge _080D35B0
	adds r1, r2, #0x0
_080D35B0:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D35C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D35CA
_080D35C8:
	movs r1, #0x00
_080D35CA:
	cmp r1, #0x00
	bne _080D35D0
	b _080D371C
_080D35D0:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080D36A0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D35F0
	b _080D371C
_080D35F0:
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D36A4 @ =0x03000FD8
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
	bne _080D370A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D36A8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D3652
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3646:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3646
_080D3652:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3668
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D365C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D365C
_080D3668:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D367E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3672:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3672
_080D367E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D3688:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3692
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3692:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3688
	b _080D3706
	.byte 0x00, 0x00
_080D369C: .4byte 0x00007FFF
_080D36A0: .4byte 0x0300034C
_080D36A4: .4byte 0x03000FD8
_080D36A8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D36C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36B4
_080D36C0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D36D6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36CA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36CA
_080D36D6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D36EC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36E0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36E0
_080D36EC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D36F6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3700
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3700:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D36F6
_080D3706:
	bl sub_807F448
_080D370A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D37EC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D371C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D3728
	b _080D39AC
_080D3728:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D37F0 @ =0x00007FFF
	cmp r1, r0
	ble _080D3734
	adds r1, r0, #0x0
_080D3734:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D374C
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D374E
_080D374C:
	movs r2, #0x00
_080D374E:
	cmp r2, #0x00
	bne _080D3754
	b _080D3860
_080D3754:
	ldr r3, _080D37F4 @ =0x03000FD8
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
	ldr r0, _080D37EC @ =0x00000FFF
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
	beq _080D37F8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D37A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3798:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3798
_080D37A4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D37BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37AE
_080D37BA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D37D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37C4
_080D37D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D37DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D37E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D37E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D37DA
	b _080D3854
_080D37EC: .4byte 0x00000FFF
_080D37F0: .4byte 0x00007FFF
_080D37F4: .4byte 0x03000FD8
_080D37F8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D380E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3802:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3802
_080D380E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3824
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3818:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3818
_080D3824:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D383A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D382E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D382E
_080D383A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D3844:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D384E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D384E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3844
_080D3854:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D39AC
_080D3860:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D3870
	b _080D39AC
_080D3870:
	ldr r0, _080D392C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D387E
	b _080D39AC
_080D387E:
	ldr r2, _080D3930 @ =0x03000FD8
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
	beq _080D38AE
	b _080D39AC
_080D38AE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D3934 @ =0x00000FFF
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
	beq _080D3938
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D38E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38D6
_080D38E2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D38F8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38EC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38EC
_080D38F8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D390E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3902:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3902
_080D390E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3918:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3922
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3922:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3918
	b _080D3994
	.byte 0x00, 0x00
_080D392C: .4byte 0x0300034C
_080D3930: .4byte 0x03000FD8
_080D3934: .4byte 0x00000FFF
_080D3938:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D394E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3942:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3942
_080D394E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3964
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3958:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3958
_080D3964:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D397A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D396E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D396E
_080D397A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3984:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D398E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D398E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3984
_080D3994:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D39AC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D3A24
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D39C2
	movs r1, #0x00
_080D39C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D39CC
	adds r1, r0, #0x0
_080D39CC:
	ldr r0, _080D3A18 @ =0x00007FFF
	cmp r2, r0
	ble _080D39D4
	adds r2, r0, #0x0
_080D39D4:
	cmp r2, r1
	bge _080D39DA
	adds r1, r2, #0x0
_080D39DA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D39F4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D39F6
_080D39F4:
	movs r1, #0x00
_080D39F6:
	cmp r1, #0x00
	beq _080D3A24
	cmp r3, #0x01
	ble _080D3A24
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D3A1C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D3A20 @ =0x080D3FD5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D3B56
	.byte 0x00, 0x00
_080D3A18: .4byte 0x00007FFF
_080D3A1C: .4byte 0x00000FFF
_080D3A20: .4byte sub_80D3FD4
_080D3A24:
	mov r1, r10
	cmp r1, #0x00
	bge _080D3A2C
	movs r1, #0x00
_080D3A2C:
	ldr r0, _080D3B68 @ =0x00007FFF
	cmp r1, r0
	ble _080D3A34
	adds r1, r0, #0x0
_080D3A34:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D3A4E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D3A50
_080D3A4E:
	movs r2, #0x00
_080D3A50:
	cmp r2, #0x00
	beq _080D3A92
	movs r0, #0xAB
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3A74
	cmp r1, #0x04
	bne _080D3A92
_080D3A74:
	ldr r2, _080D3B6C @ =0x0000208B
	adds r0, r3, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D3A92:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	adds r2, r5, #0x0
	adds r2, #0x79
	cmp r0, #0x01
	bne _080D3AA8
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080D3AA8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3B56
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3ADE
	cmp r2, #0x04
	bne _080D3AFA
_080D3ADE:
	ldr r2, _080D3B70 @ =0x00002055
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
_080D3AFA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3B08
	cmp r2, #0x04
	bne _080D3B50
_080D3B08:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D3B10
	adds r0, #0xFF
_080D3B10:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x14
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D3B2A
	adds r2, #0xFF
_080D3B2A:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D3B50:
	ldr r0, _080D3B74 @ =0x080D3B79
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080D3B56:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3B68: .4byte 0x00007FFF
_080D3B6C: .4byte 0x0000208B
_080D3B70: .4byte 0x00002055
_080D3B74: .4byte sub_80D3B78
