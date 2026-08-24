	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080A8728 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080A872C @ =0x03001038
	ldr r0, _080A8730 @ =0x0819832C
	ldr r1, _080A8734 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	bl _call_via_r2
	mov r10, r0
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	mov r3, r10
	subs r6, r3, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r3, r3, r0
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	lsls r1, r1, #0x03
	add r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080A8678
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A8678:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080A8688
	b _080A8D58
_080A8688:
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080A8690
	movs r1, #0x00
_080A8690:
	ldr r0, _080A8738 @ =0x00007FFF
	cmp r1, r0
	ble _080A8698
	adds r1, r0, #0x0
_080A8698:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A86AE
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A86B0
_080A86AE:
	movs r2, #0x00
_080A86B0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x010]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080A87A0
	ldr r2, _080A8728 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A873C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A86E4
	movs r1, #0x4C
_080A86D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A86D8
_080A86E4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A86F8
	movs r1, #0x4C
_080A86EC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A86EC
_080A86F8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A870C
	movs r1, #0x4C
_080A8700:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8700
_080A870C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8798
	movs r1, #0x04
_080A8716:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8720
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8720:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8716
	b _080A8798
_080A8728: .4byte 0x03000FD8
_080A872C: .4byte 0x03001038
_080A8730: .4byte 0x0819832C
_080A8734: .4byte 0x08198220
_080A8738: .4byte 0x00007FFF
_080A873C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8752
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8746:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8746
_080A8752:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8768
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A875C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A875C
_080A8768:
	mov r2, r8
	cmp r2, #0x00
	beq _080A877E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8772:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8772
_080A877E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8798
	movs r1, #0x10
_080A8788:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8792
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8792:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8788
_080A8798:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A87A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080A87AA
	movs r1, #0x00
_080A87AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080A87B2
	movs r2, #0x00
_080A87B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A87BC
	adds r1, r0, #0x0
_080A87BC:
	ldr r0, _080A881C @ =0x00007FFF
	cmp r2, r0
	ble _080A87C4
	adds r2, r0, #0x0
_080A87C4:
	cmp r2, r1
	bge _080A87CA
	adds r1, r2, #0x0
_080A87CA:
	ldr r4, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A87E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A87E4
_080A87E2:
	movs r1, #0x00
_080A87E4:
	cmp r1, #0x00
	bne _080A87EA
	b _080A8ABC
_080A87EA:
	movs r6, #0x24
	negs r6, r6
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
	ldr r0, _080A8820 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080A8824
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
	b _080A8838
_080A881C: .4byte 0x00007FFF
_080A8820: .4byte 0x03000FD8
_080A8824:
	cmp r1, #0x40
	bne _080A8838
	movs r1, #0xFF
	lsls r1, r1, #0x18
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_807E680
_080A8838:
	ldr r4, _080A8904 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	ldr r2, _080A8908 @ =0x0300034C
	cmp r0, #0x00
	bne _080A884A
	b _080A8988
_080A884A:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A8856
	b _080A8988
_080A8856:
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
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
	bne _080A896E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A890C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A88BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88AE
_080A88BA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A88D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88C4
_080A88D0:
	mov r2, r8
	cmp r2, #0x00
	beq _080A88E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A88DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A88DA
_080A88E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A896A
	movs r1, #0x10
_080A88F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A88FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A88FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A88F0
	b _080A896A
	.byte 0x00, 0x00
_080A8904: .4byte 0x03000FD8
_080A8908: .4byte 0x0300034C
_080A890C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8924
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8918:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8918
_080A8924:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A893A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A892E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A892E
_080A893A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8950
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8944:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8944
_080A8950:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A896A
	movs r1, #0x10
_080A895A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8964
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8964:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A895A
_080A896A:
	bl sub_807F448
_080A896E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080A8984 @ =0x00000FFF
	ands r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
	b _080A8ABC
_080A8984: .4byte 0x00000FFF
_080A8988:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080A8994
	b _080A8ABC
_080A8994:
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A8A44 @ =0x03000FD8
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
	bne _080A8AAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A8A48
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A89FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A89EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A89EE
_080A89FA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8A10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A04
_080A8A10:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8A26
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A1A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A1A
_080A8A26:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8AA6
	movs r1, #0x10
_080A8A30:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8A3A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8A3A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8A30
	b _080A8AA6
	.byte 0x00, 0x00
_080A8A44: .4byte 0x03000FD8
_080A8A48:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8A60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A54
_080A8A60:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8A76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A6A
_080A8A76:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8A8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8A80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8A80
_080A8A8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8AA6
	movs r1, #0x10
_080A8A96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8AA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8AA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8A96
_080A8AA6:
	bl sub_807F448
_080A8AAA:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	ldr r1, _080A8B90 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080A8ABC:
	mov r3, r9
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A8AC8
	b _080A8D58
_080A8AC8:
	mov r1, r10
	cmp r1, #0x00
	bge _080A8AD0
	movs r1, #0x00
_080A8AD0:
	ldr r0, _080A8B94 @ =0x00007FFF
	cmp r1, r0
	ble _080A8AD8
	adds r1, r0, #0x0
_080A8AD8:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A8AF0
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A8AF2
_080A8AF0:
	movs r2, #0x00
_080A8AF2:
	cmp r2, #0x00
	bne _080A8AF8
	b _080A8C0A
_080A8AF8:
	ldr r3, _080A8B98 @ =0x03000FD8
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
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080A8B90 @ =0x00000FFF
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
	beq _080A8B9C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B3A
_080A8B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B50
_080A8B5C:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8B72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8B66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8B66
_080A8B72:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8BF8
	movs r1, #0x10
_080A8B7C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8B86
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8B86:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8B7C
	b _080A8BF8
	.byte 0x00, 0x00
_080A8B90: .4byte 0x00000FFF
_080A8B94: .4byte 0x00007FFF
_080A8B98: .4byte 0x03000FD8
_080A8B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BA6
_080A8BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BBC
_080A8BC8:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8BDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8BD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8BD2
_080A8BDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8BF8
	movs r1, #0x10
_080A8BE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8BF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8BF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8BE8
_080A8BF8:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A8D58
_080A8C0A:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r10
	ble _080A8C16
	b _080A8D58
_080A8C16:
	ldr r0, _080A8CD8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A8C24
	b _080A8D58
_080A8C24:
	ldr r4, _080A8CDC @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080A8C52
	b _080A8D58
_080A8C52:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A8CE0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r9
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A8CE4
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8C90
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8C84
_080A8C90:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8CA6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8C9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8C9A
_080A8CA6:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8CBC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8CB0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8CB0
_080A8CBC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8D42
	movs r1, #0x10
_080A8CC6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8CD0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8CD0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8CC6
	b _080A8D42
_080A8CD8: .4byte 0x0300034C
_080A8CDC: .4byte 0x03000FD8
_080A8CE0: .4byte 0x00000FFF
_080A8CE4:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A8CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8CF0
_080A8CFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A8D12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8D06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8D06
_080A8D12:
	mov r2, r8
	cmp r2, #0x00
	beq _080A8D28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8D1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8D1C
_080A8D28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A8D42
	movs r1, #0x10
_080A8D32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8D3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8D3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A8D32
_080A8D42:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080A8D58:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A8DF4
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080A8D6C
	movs r1, #0x00
_080A8D6C:
	mov r0, r10
	cmp r0, #0x00
	bge _080A8D74
	movs r2, #0x00
_080A8D74:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A8D7E
	adds r1, r0, #0x0
_080A8D7E:
	ldr r0, _080A8DC4 @ =0x00007FFF
	cmp r2, r0
	ble _080A8D86
	adds r2, r0, #0x0
_080A8D86:
	cmp r2, r1
	bge _080A8D8C
	adds r1, r2, #0x0
_080A8D8C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A8DA6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A8DA8
_080A8DA6:
	movs r1, #0x00
_080A8DA8:
	cmp r1, #0x00
	beq _080A8DF4
	cmp r3, #0x02
	bne _080A8DD0
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A8DC8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080A8DCC @ =0x080AC4F9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	b _080A8DE4
	.byte 0x00, 0x00
_080A8DC4: .4byte 0x00007FFF
_080A8DC8: .4byte 0x00000FFF
_080A8DCC: .4byte sub_80AC4F8
_080A8DD0:
	cmp r3, #0x03
	bne _080A8DF4
	mov r4, r9
	ldrh r0, [r4, #0x00]
	ldr r1, _080A8DEC @ =0x00000FFF
	ands r1, r0
	strh r1, [r4, #0x00]
	ldr r1, _080A8DF0 @ =0x080AA6DD
	ldr r0, [sp, #0x004]
	str r1, [r0, #0x4C]
_080A8DE4:
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080A8EEA
_080A8DEC: .4byte 0x00000FFF
_080A8DF0: .4byte sub_80AA6DC
_080A8DF4:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080A8DFC
	movs r2, #0x00
_080A8DFC:
	ldr r0, _080A8EFC @ =0x00007FFF
	cmp r2, r0
	ble _080A8E04
	adds r2, r0, #0x0
_080A8E04:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080A8E20
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A8E22
_080A8E20:
	movs r1, #0x00
_080A8E22:
	cmp r1, #0x00
	beq _080A8E3A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A8E3A:
	mov r1, r10
	cmp r1, #0x00
	bge _080A8E42
	movs r1, #0x00
_080A8E42:
	ldr r0, _080A8EFC @ =0x00007FFF
	cmp r1, r0
	ble _080A8E4A
	adds r1, r0, #0x0
_080A8E4A:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080A8E60
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A8E62
_080A8E60:
	movs r2, #0x00
_080A8E62:
	cmp r2, #0x00
	beq _080A8E70
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
_080A8E70:
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A8EEA
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A8E90
	cmp r1, #0x04
	bne _080A8EBE
_080A8E90:
	ldr r2, _080A8F00 @ =0x03001038
	ldr r0, _080A8F04 @ =0x0819832C
	ldr r1, _080A8F08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080A8EBE:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8EC6
	adds r1, #0xFF
_080A8EC6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A8ED0
	adds r2, #0xFF
_080A8ED0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A8EDA
	adds r3, #0xFF
_080A8EDA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080A8F0C @ =0x080A8F11
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080A8EEA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A8EFC: .4byte 0x00007FFF
_080A8F00: .4byte 0x03001038
_080A8F04: .4byte 0x0819832C
_080A8F08: .4byte 0x08198220
_080A8F0C: .4byte sub_80A8F10
