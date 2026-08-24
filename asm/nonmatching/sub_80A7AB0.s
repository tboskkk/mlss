	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080A7BC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A7B16
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A7B16:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080A7B26
	b _080A8064
_080A7B26:
	mov r1, r12
	cmp r1, #0x00
	bge _080A7B2E
	movs r1, #0x00
_080A7B2E:
	ldr r0, _080A7BCC @ =0x00007FFF
	cmp r1, r0
	ble _080A7B36
	adds r1, r0, #0x0
_080A7B36:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A7B4C
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7B4E
_080A7B4C:
	movs r2, #0x00
_080A7B4E:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080A7C34
	ldr r2, _080A7BC8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A7BD0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7B82
	movs r1, #0x4C
_080A7B76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B76
_080A7B82:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7B96
	movs r1, #0x4C
_080A7B8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B8A
_080A7B96:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7BAA
	movs r1, #0x4C
_080A7B9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7B9E
_080A7BAA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7C2C
	movs r1, #0x04
_080A7BB4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7BBE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7BBE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7BB4
	b _080A7C2C
	.byte 0x00, 0x00
_080A7BC8: .4byte 0x03000FD8
_080A7BCC: .4byte 0x00007FFF
_080A7BD0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7BE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7BDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7BDA
_080A7BE6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7BFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7BF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7BF0
_080A7BFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7C12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7C06
_080A7C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7C2C
	movs r1, #0x10
_080A7C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7C1C
_080A7C2C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A7C34:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080A7C3E
	movs r1, #0x00
_080A7C3E:
	mov r3, r9
	cmp r3, #0x00
	bge _080A7C46
	movs r2, #0x00
_080A7C46:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A7C50
	adds r1, r0, #0x0
_080A7C50:
	ldr r0, _080A7D48 @ =0x00007FFF
	cmp r2, r0
	ble _080A7C58
	adds r2, r0, #0x0
_080A7C58:
	cmp r2, r1
	bge _080A7C5E
	adds r1, r2, #0x0
_080A7C5E:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A7C76
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A7C78
_080A7C76:
	movs r1, #0x00
_080A7C78:
	cmp r1, #0x00
	bne _080A7C7E
	b _080A7DCA
_080A7C7E:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080A7D4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7C9C
	b _080A7DCA
_080A7C9C:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A7D50 @ =0x03000FD8
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
	bne _080A7DB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A7D54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7CF2
_080A7CFE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D08
_080A7D14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D1E
_080A7D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7DB2
	movs r1, #0x10
_080A7D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7D34
	b _080A7DB2
	.byte 0x00, 0x00
_080A7D48: .4byte 0x00007FFF
_080A7D4C: .4byte 0x0300034C
_080A7D50: .4byte 0x03000FD8
_080A7D54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A7D6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D60
_080A7D6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A7D82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D76
_080A7D82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7D98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7D8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7D8C
_080A7D98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7DB2
	movs r1, #0x10
_080A7DA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7DAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7DAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7DA2
_080A7DB2:
	bl sub_807F448
_080A7DB6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080A7EA0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080A7DCA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A7DD6
	b _080A8064
_080A7DD6:
	mov r1, r9
	cmp r1, #0x00
	bge _080A7DDE
	movs r1, #0x00
_080A7DDE:
	ldr r0, _080A7EA4 @ =0x00007FFF
	cmp r1, r0
	ble _080A7DE6
	adds r1, r0, #0x0
_080A7DE6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A7DFE
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A7E00
_080A7DFE:
	movs r2, #0x00
_080A7E00:
	cmp r2, #0x00
	bne _080A7E06
	b _080A7F14
_080A7E06:
	ldr r3, _080A7EA8 @ =0x03000FD8
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
	ldr r0, _080A7EA0 @ =0x00000FFF
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
	beq _080A7EAC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E4A
_080A7E56:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7E6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E60
_080A7E6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7E82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7E76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7E76
_080A7E82:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7F08
	movs r1, #0x10
_080A7E8C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7E96
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7E96:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7E8C
	b _080A7F08
	.byte 0x00, 0x00
_080A7EA0: .4byte 0x00000FFF
_080A7EA4: .4byte 0x00007FFF
_080A7EA8: .4byte 0x03000FD8
_080A7EAC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7EC2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7EB6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7EB6
_080A7EC2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7ED8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7ECC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7ECC
_080A7ED8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7EEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7EE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7EE2
_080A7EEE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A7F08
	movs r1, #0x10
_080A7EF8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7F02
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7F02:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7EF8
_080A7F08:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A8064
_080A7F14:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080A7F20
	b _080A8064
_080A7F20:
	ldr r0, _080A7FE4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A7F36
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A7F36
	b _080A8064
_080A7F36:
	ldr r2, _080A7FE8 @ =0x03000FD8
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
	beq _080A7F66
	b _080A8064
_080A7F66:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A7FEC @ =0x00000FFF
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
	beq _080A7FF0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A7F9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7F8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7F8E
_080A7F9A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A7FB0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FA4
_080A7FB0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A7FC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FBA
_080A7FC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A804C
	movs r1, #0x10
_080A7FD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A7FDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A7FDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A7FD0
	b _080A804C
	.byte 0x00, 0x00
_080A7FE4: .4byte 0x0300034C
_080A7FE8: .4byte 0x03000FD8
_080A7FEC: .4byte 0x00000FFF
_080A7FF0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A8006
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A7FFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A7FFA
_080A8006:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A801C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8010
_080A801C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A8032
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A8026:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A8026
_080A8032:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A804C
	movs r1, #0x10
_080A803C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A8046
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A8046:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A803C
_080A804C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080A8064:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080A8070
	b _080A8178
_080A8070:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080A807C
	movs r2, #0x00
_080A807C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A8086
	adds r1, r0, #0x0
_080A8086:
	ldr r0, _080A80BC @ =0x00007FFF
	cmp r2, r0
	ble _080A808E
	adds r2, r0, #0x0
_080A808E:
	cmp r2, r1
	bge _080A8094
	adds r1, r2, #0x0
_080A8094:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080A80AE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A80B0
_080A80AE:
	movs r1, #0x00
_080A80B0:
	cmp r1, #0x00
	beq _080A8178
	cmp r4, #0x01
	ble _080A80C4
	ldr r7, _080A80C0 @ =0x040A1188
	b _080A80C6
_080A80BC: .4byte 0x00007FFF
_080A80C0: .4byte 0x040A1188
_080A80C4:
	ldr r7, _080A8108 @ =0x040A1088
_080A80C6:
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
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080A810C
	cmp r1, #0x01
	bne _080A810C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A81E4
	.byte 0x00, 0x00
_080A8108: .4byte 0x040A1088
_080A810C:
	cmp r4, #0x01
	ble _080A813C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8118
	adds r1, #0xFF
_080A8118:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A8122
	adds r2, #0xFF
_080A8122:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A812C
	adds r3, #0xFF
_080A812C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A8138 @ =0x00002E10
	bl sub_80DF024
	b _080A8162
_080A8138: .4byte 0x00002E10
_080A813C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A8144
	adds r1, #0xFF
_080A8144:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A814E
	adds r2, #0xFF
_080A814E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A8158
	adds r3, #0xFF
_080A8158:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A81F4 @ =0x000006E3
	bl sub_80DF024
_080A8162:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080A81F8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080A8178:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080A8196
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A8198
_080A8196:
	movs r1, #0x00
_080A8198:
	cmp r1, #0x00
	beq _080A81D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A81B8
	cmp r1, #0x04
	bne _080A81D0
_080A81B8:
	ldr r2, _080A81FC @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A81D0:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A81E4
	ldr r0, _080A8200 @ =0x080A8205
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080A81E4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A81F4: .4byte 0x000006E3
_080A81F8: .4byte 0x00000FFF
_080A81FC: .4byte 0x00002030
_080A8200: .4byte sub_80A8204
