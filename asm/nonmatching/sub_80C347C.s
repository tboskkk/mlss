	.syntax unified
	.text

	thumb_func_start sub_80C347C
sub_80C347C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C3594 @ =0x03000FD8
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
	bl sub_80884AC
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
	lsls r0, r1, #0x03
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C34E4
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C34E4:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C34F4
	b _080C3A28
_080C34F4:
	mov r1, r12
	cmp r1, #0x00
	bge _080C34FC
	movs r1, #0x00
_080C34FC:
	ldr r0, _080C3598 @ =0x00007FFF
	cmp r1, r0
	ble _080C3504
	adds r1, r0, #0x0
_080C3504:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C351A
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C351C
_080C351A:
	movs r2, #0x00
_080C351C:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C3600
	ldr r2, _080C3594 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C359C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C3550
	movs r1, #0x33
_080C3544:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3544
_080C3550:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3564
	movs r1, #0x33
_080C3558:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3558
_080C3564:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C3578
	movs r1, #0x33
_080C356C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C356C
_080C3578:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C35F8
	movs r1, #0x03
_080C3582:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C358C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C358C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3582
	b _080C35F8
_080C3594: .4byte 0x03000FD8
_080C3598: .4byte 0x00007FFF
_080C359C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C35B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35A6
_080C35B2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C35C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35BC
_080C35C8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C35DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C35D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C35D2
_080C35DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C35F8
	movs r1, #0x10
_080C35E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C35F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C35F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C35E8
_080C35F8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C3600:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C360A
	movs r1, #0x00
_080C360A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C3612
	movs r2, #0x00
_080C3612:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C361C
	adds r1, r0, #0x0
_080C361C:
	ldr r0, _080C3714 @ =0x00007FFF
	cmp r2, r0
	ble _080C3624
	adds r2, r0, #0x0
_080C3624:
	cmp r2, r1
	bge _080C362A
	adds r1, r2, #0x0
_080C362A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C3642
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C3644
_080C3642:
	movs r1, #0x00
_080C3644:
	cmp r1, #0x00
	bne _080C364A
	b _080C3796
_080C364A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C3718 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C3668
	b _080C3796
_080C3668:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080C371C @ =0x03000FD8
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
	bne _080C3782
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C3720
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C36CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36BE
_080C36CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C36E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36D4
_080C36E0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C36F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C36EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C36EA
_080C36F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C377E
	movs r1, #0x10
_080C3700:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C370A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C370A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3700
	b _080C377E
	.byte 0x00, 0x00
_080C3714: .4byte 0x00007FFF
_080C3718: .4byte 0x0300034C
_080C371C: .4byte 0x03000FD8
_080C3720:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C3738
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C372C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C372C
_080C3738:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C374E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3742:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3742
_080C374E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C3764
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3758:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3758
_080C3764:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C377E
	movs r1, #0x10
_080C376E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3778
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3778:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C376E
_080C377E:
	bl sub_807F448
_080C3782:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C386C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C3796:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C37A2
	b _080C3A28
_080C37A2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C37AA
	movs r1, #0x00
_080C37AA:
	ldr r0, _080C3870 @ =0x00007FFF
	cmp r1, r0
	ble _080C37B2
	adds r1, r0, #0x0
_080C37B2:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C37CA
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C37CC
_080C37CA:
	movs r2, #0x00
_080C37CC:
	cmp r2, #0x00
	bne _080C37D2
	b _080C38E0
_080C37D2:
	ldr r3, _080C3874 @ =0x03000FD8
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
	ldr r0, _080C386C @ =0x00000FFF
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
	beq _080C3878
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C3822
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3816:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3816
_080C3822:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3838
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C382C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C382C
_080C3838:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C384E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3842:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3842
_080C384E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C38D4
	movs r1, #0x10
_080C3858:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3862
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3862:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3858
	b _080C38D4
	.byte 0x00, 0x00
_080C386C: .4byte 0x00000FFF
_080C3870: .4byte 0x00007FFF
_080C3874: .4byte 0x03000FD8
_080C3878:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C388E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3882:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3882
_080C388E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C38A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3898:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3898
_080C38A4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C38BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C38AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C38AE
_080C38BA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C38D4
	movs r1, #0x10
_080C38C4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C38CE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C38CE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C38C4
_080C38D4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080C3A28
_080C38E0:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C38EC
	b _080C3A28
_080C38EC:
	ldr r0, _080C39A8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C38FA
	b _080C3A28
_080C38FA:
	ldr r2, _080C39AC @ =0x03000FD8
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
	beq _080C392A
	b _080C3A28
_080C392A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C39B0 @ =0x00000FFF
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
	beq _080C39B4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C395E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3952:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3952
_080C395E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C3974
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C3968:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C3968
_080C3974:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C398A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C397E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C397E
_080C398A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C3A10
	movs r1, #0x10
_080C3994:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C399E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C399E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3994
	b _080C3A10
	.byte 0x00, 0x00
_080C39A8: .4byte 0x0300034C
_080C39AC: .4byte 0x03000FD8
_080C39B0: .4byte 0x00000FFF
_080C39B4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C39CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39BE
_080C39CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C39E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39D4
_080C39E0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C39F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C39EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C39EA
_080C39F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C3A10
	movs r1, #0x10
_080C3A00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C3A0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C3A0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C3A00
_080C3A10:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C3A28:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C3AA0
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C3A3E
	movs r1, #0x00
_080C3A3E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C3A48
	adds r2, r0, #0x0
_080C3A48:
	ldr r0, _080C3A94 @ =0x00007FFF
	cmp r1, r0
	ble _080C3A50
	adds r1, r0, #0x0
_080C3A50:
	cmp r1, r2
	bge _080C3A56
	adds r2, r1, #0x0
_080C3A56:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C3A70
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C3A72
_080C3A70:
	movs r2, #0x00
_080C3A72:
	cmp r2, #0x00
	beq _080C3AA0
	cmp r3, #0x01
	ble _080C3AA0
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C3A98 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C3A9C @ =0x080C5279
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C3B5C
	.byte 0x00, 0x00
_080C3A94: .4byte 0x00007FFF
_080C3A98: .4byte 0x00000FFF
_080C3A9C: .4byte sub_80C5278
_080C3AA0:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C3B5C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C3AD0
	cmp r2, #0x04
	bne _080C3B30
_080C3AD0:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080C3AD8
	adds r0, #0xFF
_080C3AD8:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080C3AF2
	adds r0, #0xFF
_080C3AF2:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080C3B0A
	adds r3, #0xFF
_080C3B0A:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C3B30:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C3B3E
	cmp r2, #0x04
	bne _080C3B56
_080C3B3E:
	ldr r2, _080C3B6C @ =0x00002034
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
_080C3B56:
	ldr r0, _080C3B70 @ =0x080C3B75
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080C3B5C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C3B6C: .4byte 0x00002034
_080C3B70: .4byte sub_80C3B74
