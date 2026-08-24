	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080B664C @ =0x03000FD8
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
	mov r2, r10
	str r2, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	ldr r2, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B65BE
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080B65C0
_080B65BE:
	movs r1, #0x00
_080B65C0:
	cmp r1, #0x00
	beq _080B6622
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B65E0
	cmp r1, #0x04
	bne _080B65F8
_080B65E0:
	ldr r2, _080B6650 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B65F8:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B660A
	cmp r1, #0x04
	bne _080B6622
_080B660A:
	ldr r2, _080B6654 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B6622:
	mov r2, r10
	cmp r2, #0x00
	bge _080B662A
	movs r2, #0x00
_080B662A:
	ldr r0, _080B6658 @ =0x00007FFF
	cmp r2, r0
	ble _080B6632
	adds r2, r0, #0x0
_080B6632:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x00C]
	cmp r1, r2
	ble _080B665C
	movs r3, #0x00
	movs r4, #0x7E
	adds r4, r4, r5
	mov r9, r4
	b _080B666E
	.byte 0x00, 0x00
_080B664C: .4byte 0x03000FD8
_080B6650: .4byte 0x00002031
_080B6654: .4byte 0x00002060
_080B6658: .4byte 0x00007FFF
_080B665C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x01
	mov r9, r0
	cmp r1, r2
	bge _080B666E
	movs r3, #0x00
_080B666E:
	cmp r3, #0x00
	beq _080B667A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B667A:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B6682
	movs r1, #0x00
_080B6682:
	ldr r0, _080B679C @ =0x00007FFF
	cmp r1, r0
	ble _080B668A
	adds r1, r0, #0x0
_080B668A:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B66A0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B66A2
_080B66A0:
	movs r2, #0x00
_080B66A2:
	cmp r2, #0x00
	beq _080B66AE
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B66AE:
	ldr r3, _080B67A0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x01
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r0, r1
	mov r12, r0
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	subs r2, r1, r0
	mov r10, r2
	adds r0, r0, r1
	str r0, [sp, #0x008]
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r2, [sp, #0x008]
	cmp r0, r2
	bge _080B66FA
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080B66FA:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B670A
	b _080B6C24
_080B670A:
	mov r1, r12
	cmp r1, #0x00
	bge _080B6712
	movs r1, #0x00
_080B6712:
	ldr r0, _080B679C @ =0x00007FFF
	cmp r1, r0
	ble _080B671A
	adds r1, r0, #0x0
_080B671A:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B6730
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r4, #0x01
	cmp r0, r1
	bge _080B6732
_080B6730:
	movs r4, #0x00
_080B6732:
	cmp r4, #0x00
	beq _080B6808
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B67A4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B6756
	movs r1, #0x4C
_080B674A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B674A
_080B6756:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B676A
	movs r1, #0x4C
_080B675E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B675E
_080B676A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B677E
	movs r1, #0x4C
_080B6772:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6772
_080B677E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6800
	movs r1, #0x04
_080B6788:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6792
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6792:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6788
	b _080B6800
	.byte 0x00, 0x00
_080B679C: .4byte 0x00007FFF
_080B67A0: .4byte 0x03000FD8
_080B67A4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B67BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67AE
_080B67BA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B67D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67C4
_080B67D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B67E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67DA
_080B67E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6800
	movs r1, #0x10
_080B67F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B67FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B67FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B67F0
_080B6800:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B6808:
	mov r1, r10
	ldr r2, [sp, #0x008]
	cmp r1, #0x00
	bge _080B6812
	movs r1, #0x00
_080B6812:
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	bge _080B681A
	movs r2, #0x00
_080B681A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B6824
	adds r1, r0, #0x0
_080B6824:
	ldr r0, _080B6918 @ =0x00007FFF
	cmp r2, r0
	ble _080B682C
	adds r2, r0, #0x0
_080B682C:
	cmp r2, r1
	bge _080B6832
	adds r1, r2, #0x0
_080B6832:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B6848
	ldr r4, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B684A
_080B6848:
	movs r1, #0x00
_080B684A:
	cmp r1, #0x00
	bne _080B6850
	b _080B6998
_080B6850:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B691C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B686E
	b _080B6998
_080B686E:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B6920 @ =0x03000FD8
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
	bne _080B6986
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B6924
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B68D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68C4
_080B68D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B68E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68DA
_080B68E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B68FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68F0
_080B68FC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6982
	movs r1, #0x10
_080B6906:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6910
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6910:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6906
	b _080B6982
_080B6918: .4byte 0x00007FFF
_080B691C: .4byte 0x0300034C
_080B6920: .4byte 0x03000FD8
_080B6924:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B693C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6930:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6930
_080B693C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6952
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6946:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6946
_080B6952:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6968
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B695C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B695C
_080B6968:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6982
	movs r1, #0x10
_080B6972:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B697C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B697C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6972
_080B6982:
	bl sub_807F448
_080B6986:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B6A68 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B6998:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B69A4
	b _080B6C24
_080B69A4:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B69AC
	movs r1, #0x00
_080B69AC:
	ldr r0, _080B6A6C @ =0x00007FFF
	cmp r1, r0
	ble _080B69B4
	adds r1, r0, #0x0
_080B69B4:
	ldr r2, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B69CA
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B69CC
_080B69CA:
	movs r2, #0x00
_080B69CC:
	cmp r2, #0x00
	bne _080B69D2
	b _080B6ADC
_080B69D2:
	ldr r3, _080B6A70 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B6A68 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B6A74
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6A20
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A14:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A14
_080B6A20:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6A36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A2A
_080B6A36:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6A4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A40
_080B6A4C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6AD0
	movs r1, #0x10
_080B6A56:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6A60
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6A60:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6A56
	b _080B6AD0
_080B6A68: .4byte 0x00000FFF
_080B6A6C: .4byte 0x00007FFF
_080B6A70: .4byte 0x03000FD8
_080B6A74:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6A8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A7E
_080B6A8A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6AA0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A94:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A94
_080B6AA0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6AB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6AAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6AAA
_080B6AB6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6AD0
	movs r1, #0x10
_080B6AC0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6ACA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6ACA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6AC0
_080B6AD0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B6C24
_080B6ADC:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	ble _080B6AEA
	b _080B6C24
_080B6AEA:
	ldr r0, _080B6BA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B6AF8
	b _080B6C24
_080B6AF8:
	ldr r2, _080B6BA8 @ =0x03000FD8
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
	beq _080B6B28
	b _080B6C24
_080B6B28:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080B6BAC @ =0x00000FFF
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
	beq _080B6BB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B50
_080B6B5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6B72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B66
_080B6B72:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6B88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B7C
_080B6B88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6C0C
	movs r1, #0x10
_080B6B92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6B9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6B9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6B92
	b _080B6C0C
_080B6BA4: .4byte 0x0300034C
_080B6BA8: .4byte 0x03000FD8
_080B6BAC: .4byte 0x00000FFF
_080B6BB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6BC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BBA
_080B6BC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6BDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BD0
_080B6BDC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6BF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BE6
_080B6BF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6C0C
	movs r1, #0x10
_080B6BFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6C06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6C06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6BFC
_080B6C0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B6C24:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B6C30
	b _080B6D34
_080B6C30:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B6C3C
	movs r2, #0x00
_080B6C3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B6C46
	adds r1, r0, #0x0
_080B6C46:
	ldr r0, _080B6C78 @ =0x00007FFF
	cmp r2, r0
	ble _080B6C4E
	adds r2, r0, #0x0
_080B6C4E:
	cmp r2, r1
	bge _080B6C54
	adds r1, r2, #0x0
_080B6C54:
	mov r3, r9
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, r1
	blt _080B6C6A
	ldr r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	ble _080B6C6C
_080B6C6A:
	movs r1, #0x00
_080B6C6C:
	cmp r1, #0x00
	beq _080B6D34
	cmp r4, #0x01
	ble _080B6C80
	ldr r6, _080B6C7C @ =0x040A1589
	b _080B6C82
_080B6C78: .4byte 0x00007FFF
_080B6C7C: .4byte 0x040A1589
_080B6C80:
	ldr r6, _080B6CC4 @ =0x040A1489
_080B6C82:
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
	str r6, [sp, #0x000]
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
	bne _080B6CC8
	cmp r1, #0x01
	bne _080B6CC8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B6D56
	.byte 0x00, 0x00
_080B6CC4: .4byte 0x040A1489
_080B6CC8:
	cmp r4, #0x01
	ble _080B6CF8
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6CD4
	adds r1, #0xFF
_080B6CD4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B6CDE
	adds r2, #0xFF
_080B6CDE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6CE8
	adds r3, #0xFF
_080B6CE8:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6CF4 @ =0x00002E47
	bl sub_80DF024
	b _080B6D1E
_080B6CF4: .4byte 0x00002E47
_080B6CF8:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6D00
	adds r1, #0xFF
_080B6D00:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B6D0A
	adds r2, #0xFF
_080B6D0A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6D14
	adds r3, #0xFF
_080B6D14:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6D68 @ =0x0000070B
	bl sub_80DF024
_080B6D1E:
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B6D6C @ =0x00000FFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B6D34:
	ldr r0, _080B6D70 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B6D56
	ldr r0, _080B6D74 @ =0x080B6D79
	ldr r6, [sp, #0x004]
	str r0, [r6, #0x4C]
_080B6D56:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B6D68: .4byte 0x0000070B
_080B6D6C: .4byte 0x00000FFF
_080B6D70: .4byte 0x03000FD8
_080B6D74: .4byte sub_80B6D78
