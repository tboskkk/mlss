	.syntax unified
	.text

	thumb_func_start sub_80C751C
sub_80C751C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7644 @ =0x03000FD8
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
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
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
	bge _080C7592
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7592:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C75A2
	b _080C7AE0
_080C75A2:
	mov r1, r12
	cmp r1, #0x00
	bge _080C75AA
	movs r1, #0x00
_080C75AA:
	ldr r0, _080C7648 @ =0x00007FFF
	cmp r1, r0
	ble _080C75B2
	adds r1, r0, #0x0
_080C75B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C75C8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C75CA
_080C75C8:
	movs r2, #0x00
_080C75CA:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C76B0
	ldr r2, _080C7644 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C764C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C75FE
	movs r1, #0x33
_080C75F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C75F2
_080C75FE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7612
	movs r1, #0x33
_080C7606:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7606
_080C7612:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7626
	movs r1, #0x33
_080C761A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C761A
_080C7626:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x03
_080C7630:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C763A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C763A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7630
	b _080C76A8
	.byte 0x00, 0x00
_080C7644: .4byte 0x03000FD8
_080C7648: .4byte 0x00007FFF
_080C764C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7656
_080C7662:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7678
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C766C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C766C
_080C7678:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C768E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7682:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7682
_080C768E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x10
_080C7698:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C76A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C76A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7698
_080C76A8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C76B0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C76BA
	movs r1, #0x00
_080C76BA:
	mov r3, r9
	cmp r3, #0x00
	bge _080C76C2
	movs r2, #0x00
_080C76C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C76CC
	adds r1, r0, #0x0
_080C76CC:
	ldr r0, _080C77C4 @ =0x00007FFF
	cmp r2, r0
	ble _080C76D4
	adds r2, r0, #0x0
_080C76D4:
	cmp r2, r1
	bge _080C76DA
	adds r1, r2, #0x0
_080C76DA:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C76F2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C76F4
_080C76F2:
	movs r1, #0x00
_080C76F4:
	cmp r1, #0x00
	bne _080C76FA
	b _080C7846
_080C76FA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C77C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7718
	b _080C7846
_080C7718:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C77CC @ =0x03000FD8
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
	bne _080C7832
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C77D0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C777A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C776E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C776E
_080C777A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7790
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7784:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7784
_080C7790:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C77A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C779A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C779A
_080C77A6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C77B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C77BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C77BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C77B0
	b _080C782E
	.byte 0x00, 0x00
_080C77C4: .4byte 0x00007FFF
_080C77C8: .4byte 0x0300034C
_080C77CC: .4byte 0x03000FD8
_080C77D0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C77E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77DC
_080C77E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C77FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77F2
_080C77FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7814
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7808:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7808
_080C7814:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C781E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7828
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7828:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C781E
_080C782E:
	bl sub_807F448
_080C7832:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C791C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7846:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7852
	b _080C7AE0
_080C7852:
	mov r1, r9
	cmp r1, #0x00
	bge _080C785A
	movs r1, #0x00
_080C785A:
	ldr r0, _080C7920 @ =0x00007FFF
	cmp r1, r0
	ble _080C7862
	adds r1, r0, #0x0
_080C7862:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C787A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C787C
_080C787A:
	movs r2, #0x00
_080C787C:
	cmp r2, #0x00
	bne _080C7882
	b _080C7990
_080C7882:
	ldr r3, _080C7924 @ =0x03000FD8
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
	ldr r0, _080C791C @ =0x00000FFF
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
	beq _080C7928
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C78D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78C6
_080C78D2:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C78E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78DC
_080C78E8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C78FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78F2
_080C78FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7908:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7912
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7912:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7908
	b _080C7984
	.byte 0x00, 0x00
_080C791C: .4byte 0x00000FFF
_080C7920: .4byte 0x00007FFF
_080C7924: .4byte 0x03000FD8
_080C7928:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C793E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7932:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7932
_080C793E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7954
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7948:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7948
_080C7954:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C796A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C795E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C795E
_080C796A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7974:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C797E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C797E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7974
_080C7984:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C7AE0
_080C7990:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C799C
	b _080C7AE0
_080C799C:
	ldr r0, _080C7A60 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	b _080C7AE0
_080C79B2:
	ldr r2, _080C7A64 @ =0x03000FD8
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
	beq _080C79E2
	b _080C7AE0
_080C79E2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7A68 @ =0x00000FFF
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
	beq _080C7A6C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A0A
_080C7A16:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A20
_080C7A2C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7A42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A36
_080C7A42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7A4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7A56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7A56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7A4C
	b _080C7AC8
	.byte 0x00, 0x00
_080C7A60: .4byte 0x0300034C
_080C7A64: .4byte 0x03000FD8
_080C7A68: .4byte 0x00000FFF
_080C7A6C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A76
_080C7A82:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A8C
_080C7A98:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7AAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7AA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7AA2
_080C7AAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7AB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7AC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7AC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7AB8
_080C7AC8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C7AE0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C7B58
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C7AF6
	movs r1, #0x00
_080C7AF6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C7B00
	adds r2, r0, #0x0
_080C7B00:
	ldr r0, _080C7B4C @ =0x00007FFF
	cmp r1, r0
	ble _080C7B08
	adds r1, r0, #0x0
_080C7B08:
	cmp r1, r2
	bge _080C7B0E
	adds r2, r1, #0x0
_080C7B0E:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C7B28
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C7B2A
_080C7B28:
	movs r2, #0x00
_080C7B2A:
	cmp r2, #0x00
	beq _080C7B58
	cmp r3, #0x01
	ble _080C7B58
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C7B50 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C7B54 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7BA0
	.byte 0x00, 0x00
_080C7B4C: .4byte 0x00007FFF
_080C7B50: .4byte 0x00000FFF
_080C7B54: .4byte sub_80C65BC
_080C7B58:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7BA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7B76
	cmp r1, #0x04
	bne _080C7B8E
_080C7B76:
	ldr r2, _080C7BB0 @ =0x00002034
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
_080C7B8E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7BB4 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C7BB8 @ =0x080C7BBD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C7BA0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7BB0: .4byte 0x00002034
_080C7BB4: .4byte 0x00000FFF
_080C7BB8: .4byte sub_80C7BBC
