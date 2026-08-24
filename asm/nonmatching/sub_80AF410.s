	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AF524 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r1, r1, #0x03
	mov r0, r10
	subs r0, r0, r1
	str r0, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AF474
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AF474:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AF484
	b _080AF99E
_080AF484:
	mov r1, r12
	cmp r1, #0x00
	bge _080AF48C
	movs r1, #0x00
_080AF48C:
	ldr r0, _080AF528 @ =0x00007FFF
	cmp r1, r0
	ble _080AF494
	adds r1, r0, #0x0
_080AF494:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AF4AA
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AF4AC
_080AF4AA:
	movs r2, #0x00
_080AF4AC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080AF590
	ldr r2, _080AF524 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AF52C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF4E0
	movs r1, #0x66
_080AF4D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4D4
_080AF4E0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF4F4
	movs r1, #0x66
_080AF4E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4E8
_080AF4F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF508
	movs r1, #0x66
_080AF4FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4FC
_080AF508:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF588
	movs r1, #0x06
_080AF512:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF51C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF51C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF512
	b _080AF588
_080AF524: .4byte 0x03000FD8
_080AF528: .4byte 0x00007FFF
_080AF52C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF542
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF536:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF536
_080AF542:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF558
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF54C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF54C
_080AF558:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF56E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF562:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF562
_080AF56E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF588
	movs r1, #0x10
_080AF578:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF582
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF582:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF578
_080AF588:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AF590:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AF59A
	movs r1, #0x00
_080AF59A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AF5A4
	adds r1, r0, #0x0
_080AF5A4:
	ldr r0, _080AF698 @ =0x00007FFF
	cmp r2, r0
	ble _080AF5AC
	adds r2, r0, #0x0
_080AF5AC:
	cmp r2, r1
	bge _080AF5B2
	adds r1, r2, #0x0
_080AF5B2:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AF5CA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AF5CC
_080AF5CA:
	movs r1, #0x00
_080AF5CC:
	cmp r1, #0x00
	bne _080AF5D2
	b _080AF718
_080AF5D2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AF69C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AF5F0
	b _080AF718
_080AF5F0:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080AF6A0 @ =0x03000FD8
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
	bne _080AF706
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AF6A4
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AF650
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF644:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF644
_080AF650:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF666
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF65A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF65A
_080AF666:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF67C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF670:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF670
_080AF67C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF702
	movs r1, #0x10
_080AF686:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF690
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF690:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF686
	b _080AF702
_080AF698: .4byte 0x00007FFF
_080AF69C: .4byte 0x0300034C
_080AF6A0: .4byte 0x03000FD8
_080AF6A4:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AF6BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6B0
_080AF6BC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF6D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6C6
_080AF6D2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF6E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6DC
_080AF6E8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF702
	movs r1, #0x10
_080AF6F2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF6FC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF6FC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF6F2
_080AF702:
	bl sub_807F448
_080AF706:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080AF7E8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080AF718:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AF724
	b _080AF99E
_080AF724:
	mov r1, r10
	ldr r0, _080AF7EC @ =0x00007FFF
	cmp r1, r0
	ble _080AF72E
	adds r1, r0, #0x0
_080AF72E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AF746
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AF748
_080AF746:
	movs r2, #0x00
_080AF748:
	cmp r2, #0x00
	bne _080AF74E
	b _080AF85C
_080AF74E:
	ldr r3, _080AF7F0 @ =0x03000FD8
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
	ldr r0, _080AF7E8 @ =0x00000FFF
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
	beq _080AF7F4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF79E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF792
_080AF79E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF7B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7A8
_080AF7B4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF7CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7BE
_080AF7CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF850
	movs r1, #0x10
_080AF7D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF7DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF7DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF7D4
	b _080AF850
	.byte 0x00, 0x00
_080AF7E8: .4byte 0x00000FFF
_080AF7EC: .4byte 0x00007FFF
_080AF7F0: .4byte 0x03000FD8
_080AF7F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF80A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7FE
_080AF80A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF820
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF814:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF814
_080AF820:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF836
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF82A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF82A
_080AF836:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF850
	movs r1, #0x10
_080AF840:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF84A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF84A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF840
_080AF850:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AF99E
_080AF85C:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080AF868
	b _080AF99E
_080AF868:
	ldr r0, _080AF920 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AF876
	b _080AF99E
_080AF876:
	ldr r2, _080AF924 @ =0x03000FD8
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
	bne _080AF99E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AF928 @ =0x00000FFF
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
	beq _080AF92C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF8D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8CC
_080AF8D8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF8EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8E2
_080AF8EE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF904
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8F8
_080AF904:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF988
	movs r1, #0x10
_080AF90E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF918
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF918:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF90E
	b _080AF988
_080AF920: .4byte 0x0300034C
_080AF924: .4byte 0x03000FD8
_080AF928: .4byte 0x00000FFF
_080AF92C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF942
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF936:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF936
_080AF942:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF958
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF94C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF94C
_080AF958:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF96E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF962:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF962
_080AF96E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF988
	movs r1, #0x10
_080AF978:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF982
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF982:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF978
_080AF988:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AF99E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080AF9AA
	b _080AFAF8
_080AF9AA:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AF9BA
	adds r2, r0, #0x0
_080AF9BA:
	ldr r0, _080AFAE0 @ =0x00007FFF
	cmp r3, r0
	ble _080AF9C2
	adds r3, r0, #0x0
_080AF9C2:
	cmp r3, r2
	bge _080AF9C8
	adds r2, r3, #0x0
_080AF9C8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080AF9E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080AF9E4
_080AF9E2:
	movs r2, #0x00
_080AF9E4:
	cmp r2, #0x00
	bne _080AF9EA
	b _080AFAF8
_080AF9EA:
	cmp r1, #0x02
	beq _080AF9F0
	b _080AFAF8
_080AF9F0:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFA08
	cmp r1, #0x04
	bne _080AFA24
_080AFA08:
	ldr r2, _080AFAE4 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080AFA24:
	ldr r0, [r6, #0x28]
	ldr r3, _080AFAE8 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
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
	ldr r0, _080AFAEC @ =0x040315A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AFA7C
	ldr r2, _080AFAE8 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AFAC8
_080AFA7C:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AFA84
	adds r1, #0xFF
_080AFA84:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AFA9A
	adds r0, #0xFF
_080AFA9A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AFAB0
	adds r3, #0xFF
_080AFAB0:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AFAF0 @ =0x00002E29
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AFAC8:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFADC
	cmp r1, #0x04
	beq _080AFADC
	b _080AFC08
_080AFADC:
	ldr r0, _080AFAF4 @ =0x080B3135
	b _080AFC04
_080AFAE0: .4byte 0x00007FFF
_080AFAE4: .4byte 0x00002061
_080AFAE8: .4byte 0x00000111
_080AFAEC: .4byte 0x040315A8
_080AFAF0: .4byte 0x00002E29
_080AFAF4: .4byte 0x080B3135
_080AFAF8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AFB08
	b _080AFC08
_080AFB08:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFB2A
	cmp r1, #0x04
	bne _080AFB46
_080AFB2A:
	ldr r2, _080AFB80 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AFB46:
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
	ldr r0, _080AFB84 @ =0x040214A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080AFB88
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AFC08
_080AFB80: .4byte 0x00002061
_080AFB84: .4byte 0x040214A8
_080AFB88:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AFBA4
	ldr r2, _080AFC18 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AFBF0
_080AFBA4:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AFBAC
	adds r1, #0xFF
_080AFBAC:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AFBC2
	adds r0, #0xFF
_080AFBC2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AFBD8
	adds r3, #0xFF
_080AFBD8:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AFC1C @ =0x000006F7
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AFBF0:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFC02
	cmp r1, #0x04
	bne _080AFC08
_080AFC02:
	ldr r0, _080AFC20 @ =0x080B3141
_080AFC04:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AFC08:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AFC18: .4byte 0x00000111
_080AFC1C: .4byte 0x000006F7
_080AFC20: .4byte 0x080B3141
