	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080CD48C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080CD3E2
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CD3E2:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	subs r1, #0x35
	str r1, [sp, #0x008]
	cmp r0, #0x00
	beq _080CD3F6
	b _080CD7D2
_080CD3F6:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CD40E
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CD410
_080CD40E:
	movs r1, #0x00
_080CD410:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	adds r7, r5, #0x0
	adds r7, #0xAE
	adds r3, r5, #0x0
	adds r3, #0x79
	str r3, [sp, #0x008]
	cmp r1, #0x00
	beq _080CD4F4
	ldr r2, _080CD48C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CD490
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD448
	movs r1, #0x80
_080CD43C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD43C
_080CD448:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD45C
	movs r1, #0x80
_080CD450:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD450
_080CD45C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD470
	movs r1, #0x80
_080CD464:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD464
_080CD470:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD4EC
	movs r1, #0x08
_080CD47A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD484
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD484:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD47A
	b _080CD4EC
_080CD48C: .4byte 0x03000FD8
_080CD490:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD4A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD49A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD49A
_080CD4A6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD4BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD4B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD4B0
_080CD4BC:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD4D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD4C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD4C6
_080CD4D2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD4EC
	movs r1, #0x10
_080CD4DC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD4E6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD4E6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD4DC
_080CD4EC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CD4F4:
	movs r1, #0x00
	mov r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CD502
	adds r1, r0, #0x0
_080CD502:
	ldr r0, _080CD620 @ =0x00007FFF
	cmp r2, r0
	ble _080CD50A
	adds r2, r0, #0x0
_080CD50A:
	cmp r2, r1
	bge _080CD510
	adds r1, r2, #0x0
_080CD510:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080CD528
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CD52A
_080CD528:
	movs r1, #0x00
_080CD52A:
	cmp r1, #0x00
	beq _080CD558
	movs r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x1E
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080CD624 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r4, r0
	cmp r4, #0x00
	beq _080CD558
	ldrh r0, [r7, #0x00]
	ldr r1, _080CD628 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080CD558:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CD562
	b _080CD7D2
_080CD562:
	mov r1, r10
	ldr r0, _080CD620 @ =0x00007FFF
	cmp r1, r0
	ble _080CD56C
	adds r1, r0, #0x0
_080CD56C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CD584
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CD586
_080CD584:
	movs r2, #0x00
_080CD586:
	cmp r2, #0x00
	bne _080CD58C
	b _080CD698
_080CD58C:
	ldr r3, _080CD62C @ =0x03000FD8
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
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD628 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD630
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD5D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5CC
_080CD5D8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD5EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5E2
_080CD5EE:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5F8
_080CD604:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD68C
	movs r1, #0x10
_080CD60E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD618
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD618:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD60E
	b _080CD68C
_080CD620: .4byte 0x00007FFF
_080CD624: .4byte 0x0300034C
_080CD628: .4byte 0x00000FFF
_080CD62C: .4byte 0x03000FD8
_080CD630:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD646
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD63A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD63A
_080CD646:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD65C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD650:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD650
_080CD65C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD672
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD666:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD666
_080CD672:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD68C
	movs r1, #0x10
_080CD67C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD686
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD686:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD67C
_080CD68C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080CD7D2
_080CD698:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080CD6A4
	b _080CD7D2
_080CD6A4:
	ldr r0, _080CD760 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CD6BA
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CD6BA
	b _080CD7D2
_080CD6BA:
	ldr r2, _080CD764 @ =0x03000FD8
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
	bne _080CD7D2
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD768 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD76C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD718
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD70C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD70C
_080CD718:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD72E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD722:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD722
_080CD72E:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD744
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD738:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD738
_080CD744:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD7C8
	movs r1, #0x10
_080CD74E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD758
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD758:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD74E
	b _080CD7C8
_080CD760: .4byte 0x0300034C
_080CD764: .4byte 0x03000FD8
_080CD768: .4byte 0x00000FFF
_080CD76C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD782
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD776:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD776
_080CD782:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD798
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD78C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD78C
_080CD798:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD7AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD7A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD7A2
_080CD7AE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD7C8
	movs r1, #0x10
_080CD7B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD7C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD7C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD7B8
_080CD7C8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080CD7D2:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	bne _080CD7DC
	b _080CD8DA
_080CD7DC:
	movs r1, #0x00
	mov r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CD7EA
	adds r1, r0, #0x0
_080CD7EA:
	ldr r0, _080CD854 @ =0x00007FFF
	cmp r2, r0
	ble _080CD7F2
	adds r2, r0, #0x0
_080CD7F2:
	cmp r2, r1
	bge _080CD7F8
	adds r1, r2, #0x0
_080CD7F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CD812
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CD814
_080CD812:
	movs r1, #0x00
_080CD814:
	cmp r1, #0x00
	beq _080CD8DA
	cmp r3, #0x02
	bne _080CD8DA
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r3, [r1, #0x00]
	adds r0, r3, #0x1
	str r0, [r1, #0x00]
	ldr r0, _080CD858 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080CD85C @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CD86C
	ldr r2, _080CD860 @ =0x03001038
	ldr r0, _080CD864 @ =0x0819832C
	ldr r1, _080CD868 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r1, r3, #0x0
	adds r1, #0x0F
	movs r0, #0x70
	bl _call_via_r2
	movs r1, #0x08
	b _080CD8B2
	.byte 0x00, 0x00
_080CD854: .4byte 0x00007FFF
_080CD858: .4byte 0x03000FD8
_080CD85C: .4byte 0x000002BF
_080CD860: .4byte 0x03001038
_080CD864: .4byte 0x0819832C
_080CD868: .4byte 0x08198220
_080CD86C:
	cmp r1, #0x40
	bne _080CD898
	ldr r2, _080CD88C @ =0x03001038
	ldr r0, _080CD890 @ =0x0819832C
	ldr r1, _080CD894 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC8
	lsls r0, r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x15
	bl _call_via_r2
	movs r1, #0x14
	b _080CD8B2
_080CD88C: .4byte 0x03001038
_080CD890: .4byte 0x0819832C
_080CD894: .4byte 0x08198220
_080CD898:
	ldr r2, _080CD960 @ =0x03001038
	ldr r0, _080CD964 @ =0x0819832C
	ldr r1, _080CD968 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xE1
	lsls r0, r0, #0x02
	adds r1, r3, #0x0
	adds r1, #0x1F
	bl _call_via_r2
	movs r1, #0x1E
_080CD8B2:
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r2, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r2, r1
	bge _080CD8D2
	adds r0, r2, #0x1
	str r0, [r4, #0x00]
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080CD8D2:
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD96C @ =0x00000FFF
	ands r0, r1
	strh r0, [r7, #0x00]
_080CD8DA:
	ldr r3, [sp, #0x008]
	ldrb r1, [r3, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CD8E8
	b _080CDAE4
_080CD8E8:
	ldr r2, _080CD970 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CD974
	adds r2, r5, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA0
	adds r7, r5, #0x0
	adds r7, #0x76
	cmp r5, #0x00
	beq _080CD916
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD90A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD90A
_080CD916:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD92C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD920:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD920
_080CD92C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD942
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD936:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD936
_080CD942:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD9D8
	movs r1, #0x10
_080CD94C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD956
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD956:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD94C
	b _080CD9D8
	.byte 0x00, 0x00
_080CD960: .4byte 0x03001038
_080CD964: .4byte 0x0819832C
_080CD968: .4byte 0x08198220
_080CD96C: .4byte 0x00000FFF
_080CD970: .4byte 0x03000FD8
_080CD974:
	adds r2, r5, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA0
	adds r7, r5, #0x0
	adds r7, #0x76
	cmp r5, #0x00
	beq _080CD992
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD986:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD986
_080CD992:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD9A8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD99C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD99C
_080CD9A8:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD9BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD9B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD9B2
_080CD9BE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD9D8
	movs r1, #0x10
_080CD9C8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD9D2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD9D2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD9C8
_080CD9D8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	ble _080CDA10
	adds r1, r6, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA04
	cmp r1, #0x04
	bne _080CDAE4
_080CDA04:
	ldr r0, _080CDA0C @ =0x080CE1B5
	str r0, [r5, #0x4C]
	b _080CDAE4
	.byte 0x00, 0x00
_080CDA0C: .4byte sub_80CE1B4
_080CDA10:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA28
	cmp r1, #0x04
	bne _080CDA44
_080CDA28:
	ldr r2, _080CDAF4 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080CDA44:
	ldr r0, [r5, #0x30]
	ldr r2, _080CDAF8 @ =0x00002092
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA80
	cmp r1, #0x04
	bne _080CDADE
_080CDA80:
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080CDA8E
	ldr r4, _080CDAFC @ =0x000001FF
	adds r0, r0, r4
_080CDA8E:
	asrs r2, r0, #0x09
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080CDA98
	adds r0, #0xFF
_080CDA98:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, r2
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CDAB0
	adds r2, #0xFF
_080CDAB0:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x30]
	movs r1, #0x28
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl sub_8088164
_080CDADE:
	ldr r0, _080CDB00 @ =0x080CDB05
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080CDAE4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDAF4: .4byte 0x00002036
_080CDAF8: .4byte 0x00002092
_080CDAFC: .4byte 0x000001FF
_080CDB00: .4byte sub_80CDB04
