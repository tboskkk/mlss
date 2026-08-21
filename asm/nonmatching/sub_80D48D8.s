	.syntax unified
	.text

	thumb_func_start sub_80D48D8
sub_80D48D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D49FC @ =0x03000FD8
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
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r0, r0, #0x02
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D494A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D494A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D495A
	b _080D4E86
_080D495A:
	mov r1, r12
	cmp r1, #0x00
	bge _080D4962
	movs r1, #0x00
_080D4962:
	ldr r0, _080D4A00 @ =0x00007FFF
	cmp r1, r0
	ble _080D496A
	adds r1, r0, #0x0
_080D496A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4980
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4982
_080D4980:
	movs r2, #0x00
_080D4982:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D4A68
	ldr r2, _080D49FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D4A04
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D49B6
	movs r1, #0x4C
_080D49AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49AA
_080D49B6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D49CA
	movs r1, #0x4C
_080D49BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49BE
_080D49CA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D49DE
	movs r1, #0x4C
_080D49D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49D2
_080D49DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x04
_080D49E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D49F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D49F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D49E8
	b _080D4A60
	.byte 0x00, 0x00
_080D49FC: .4byte 0x03000FD8
_080D4A00: .4byte 0x00007FFF
_080D4A04:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4A1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A0E
_080D4A1A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4A30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A24
_080D4A30:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4A46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A3A
_080D4A46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x10
_080D4A50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4A5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4A5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4A50
_080D4A60:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D4A68:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D4A72
	movs r1, #0x00
_080D4A72:
	mov r3, r9
	cmp r3, #0x00
	bge _080D4A7A
	movs r2, #0x00
_080D4A7A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4A84
	adds r1, r0, #0x0
_080D4A84:
	ldr r0, _080D4B78 @ =0x00007FFF
	cmp r2, r0
	ble _080D4A8C
	adds r2, r0, #0x0
_080D4A8C:
	cmp r2, r1
	bge _080D4A92
	adds r1, r2, #0x0
_080D4A92:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D4AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D4AAC
_080D4AAA:
	movs r1, #0x00
_080D4AAC:
	cmp r1, #0x00
	bne _080D4AB2
	b _080D4BFA
_080D4AB2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D4B7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D4AD0
	b _080D4BFA
_080D4AD0:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D4B80 @ =0x03000FD8
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
	bne _080D4BE6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4B84
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B24
_080D4B30:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B3A
_080D4B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B50
_080D4B5C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4B66:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4B70
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4B70:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4B66
	b _080D4BE2
_080D4B78: .4byte 0x00007FFF
_080D4B7C: .4byte 0x0300034C
_080D4B80: .4byte 0x03000FD8
_080D4B84:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B90
_080D4B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BA6
_080D4BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BBC
_080D4BC8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4BD2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4BDC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4BDC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4BD2
_080D4BE2:
	bl sub_807F448
_080D4BE6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4CD0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D4BFA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D4C06
	b _080D4E86
_080D4C06:
	mov r1, r9
	cmp r1, #0x00
	bge _080D4C0E
	movs r1, #0x00
_080D4C0E:
	ldr r0, _080D4CD4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4C16
	adds r1, r0, #0x0
_080D4C16:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4C2E
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4C30
_080D4C2E:
	movs r2, #0x00
_080D4C30:
	cmp r2, #0x00
	bne _080D4C36
	b _080D4D44
_080D4C36:
	ldr r3, _080D4CD8 @ =0x03000FD8
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
	ldr r0, _080D4CD0 @ =0x00000FFF
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
	beq _080D4CDC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4C86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C7A
_080D4C86:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4C9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C90
_080D4C9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4CB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CA6
_080D4CB2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4CBC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4CC6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4CC6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4CBC
	b _080D4D38
	.byte 0x00, 0x00
_080D4CD0: .4byte 0x00000FFF
_080D4CD4: .4byte 0x00007FFF
_080D4CD8: .4byte 0x03000FD8
_080D4CDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CE6
_080D4CF2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4D08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CFC
_080D4D08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4D1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4D12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4D12
_080D4D1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4D28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4D32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4D32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4D28
_080D4D38:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D4E86
_080D4D44:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D4D50
	b _080D4E86
_080D4D50:
	ldr r0, _080D4E08 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D4D5E
	b _080D4E86
_080D4D5E:
	ldr r2, _080D4E0C @ =0x03000FD8
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
	bne _080D4E86
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4E10 @ =0x00000FFF
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
	beq _080D4E14
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DB4
_080D4DC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4DD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DCA
_080D4DD6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4DEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DE0
_080D4DEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4DF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4DF6
	b _080D4E70
_080D4E08: .4byte 0x0300034C
_080D4E0C: .4byte 0x03000FD8
_080D4E10: .4byte 0x00000FFF
_080D4E14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E1E
_080D4E2A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4E40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E34
_080D4E40:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E4A
_080D4E56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4E60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4E60
_080D4E70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D4E86:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4F00
	ldr r2, [sp, #0x00C]
	mov r1, r9
	cmp r2, #0x00
	bge _080D4E9A
	movs r2, #0x00
_080D4E9A:
	cmp r1, #0x00
	bge _080D4EA0
	movs r1, #0x00
_080D4EA0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D4EAA
	adds r2, r0, #0x0
_080D4EAA:
	ldr r0, _080D4EF4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4EB2
	adds r1, r0, #0x0
_080D4EB2:
	cmp r1, r2
	bge _080D4EB8
	adds r2, r1, #0x0
_080D4EB8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D4ED2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D4ED4
_080D4ED2:
	movs r2, #0x00
_080D4ED4:
	cmp r2, #0x00
	beq _080D4F00
	cmp r3, #0x01
	ble _080D4F00
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D4EF8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D4EFC @ =0x080D55F9
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D512E
_080D4EF4: .4byte 0x00007FFF
_080D4EF8: .4byte 0x00000FFF
_080D4EFC: .4byte sub_80D55F8
_080D4F00:
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D4FC8
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r2, [r6, #0x18]
	adds r2, r2, r1
	adds r4, r0, #0x0
	cmp r3, r2
	bge _080D4FC8
	ldr r0, [r6, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080D4FA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F3C
	cmp r1, #0x04
	bne _080D4F58
_080D4F3C:
	ldr r2, _080D50C0 @ =0x00002066
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
_080D4F58:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4F76
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4F76:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F88
	cmp r1, #0x04
	bne _080D4FA0
_080D4F88:
	ldr r2, _080D50C8 @ =0x00002037
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4FA0:
	ldr r2, _080D50CC @ =0x03001038
	ldr r0, _080D50D0 @ =0x0819832C
	ldr r1, _080D50D4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, [r5, #0x18]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bge _080D4FB6
	adds r1, #0xFF
_080D4FB6:
	asrs r1, r1, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r1, r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D4FC8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D4FD8
	b _080D512E
_080D4FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D4FF6
	cmp r2, #0x04
	bne _080D5012
_080D4FF6:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x04
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
_080D5012:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5030
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5030:
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x12]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D505C
	cmp r2, #0x04
	bne _080D5128
_080D505C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D5064
	adds r0, #0xFF
_080D5064:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r6, r0, #0x0
	subs r6, #0x10
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080D507E
	adds r0, #0xFF
_080D507E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080D5094
	adds r3, #0xFF
_080D5094:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _080D50D8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D50E8
	.byte 0x00, 0x00
_080D50C0: .4byte 0x00002066
_080D50C4: .4byte 0x00002095
_080D50C8: .4byte 0x00002037
_080D50CC: .4byte 0x03001038
_080D50D0: .4byte 0x0819832C
_080D50D4: .4byte 0x08198220
_080D50D8:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D50E8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080D50F0
	adds r0, #0xFF
_080D50F0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D5140 @ =0x03001038
	ldr r0, _080D5144 @ =0x0819832C
	ldr r1, _080D5148 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D510A
	adds r1, #0x3F
_080D510A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D5128:
	ldr r0, _080D514C @ =0x080D5151
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D512E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5140: .4byte 0x03001038
_080D5144: .4byte 0x0819832C
_080D5148: .4byte 0x08198220
_080D514C: .4byte sub_80D5150
