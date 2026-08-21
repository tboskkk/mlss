	.syntax unified
	.text

	thumb_func_start sub_80C8C64
sub_80C8C64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080C8D4C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C8CAA
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C8CAA:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C8CBA
	b _080C91D0
_080C8CBA:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080C8CD2
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C8CD4
_080C8CD2:
	movs r1, #0x00
_080C8CD4:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080C8DB4
	ldr r2, _080C8D4C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C8D50
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C8D08
	movs r1, #0x66
_080C8CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8CFC
_080C8D08:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8D1C
	movs r1, #0x66
_080C8D10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D10
_080C8D1C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8D30
	movs r1, #0x66
_080C8D24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D24
_080C8D30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8DAC
	movs r1, #0x06
_080C8D3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8D44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8D44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8D3A
	b _080C8DAC
_080C8D4C: .4byte 0x03000FD8
_080C8D50:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C8D66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D5A
_080C8D66:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8D7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D70
_080C8D7C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8D92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D86
_080C8D92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8DAC
	movs r1, #0x10
_080C8D9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8DA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8DA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8D9C
_080C8DAC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C8DB4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C8DC4
	adds r1, r0, #0x0
_080C8DC4:
	ldr r0, _080C8EBC @ =0x00007FFF
	cmp r2, r0
	ble _080C8DCC
	adds r2, r0, #0x0
_080C8DCC:
	cmp r2, r1
	bge _080C8DD2
	adds r1, r2, #0x0
_080C8DD2:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C8DEA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C8DEC
_080C8DEA:
	movs r1, #0x00
_080C8DEC:
	cmp r1, #0x00
	bne _080C8DF2
	b _080C8F3E
_080C8DF2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C8EC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C8E10
	b _080C8F3E
_080C8E10:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C8EC4 @ =0x03000FD8
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
	bne _080C8F2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8EC8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C8E72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E66
_080C8E72:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E7C
_080C8E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E92
_080C8E9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8F26
	movs r1, #0x10
_080C8EA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8EB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8EB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8EA8
	b _080C8F26
	.byte 0x00, 0x00
_080C8EBC: .4byte 0x00007FFF
_080C8EC0: .4byte 0x0300034C
_080C8EC4: .4byte 0x03000FD8
_080C8EC8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C8EE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8ED4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8ED4
_080C8EE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8EF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8EEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8EEA
_080C8EF6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8F0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8F00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8F00
_080C8F0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8F26
	movs r1, #0x10
_080C8F16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8F20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8F20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8F16
_080C8F26:
	bl sub_807F448
_080C8F2A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C9010 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C8F3E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C8F4A
	b _080C91D0
_080C8F4A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C9014 @ =0x00007FFF
	cmp r1, r0
	ble _080C8F56
	adds r1, r0, #0x0
_080C8F56:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C8F6E
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C8F70
_080C8F6E:
	movs r2, #0x00
_080C8F70:
	cmp r2, #0x00
	bne _080C8F76
	b _080C9084
_080C8F76:
	ldr r3, _080C9018 @ =0x03000FD8
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
	ldr r0, _080C9010 @ =0x00000FFF
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
	beq _080C901C
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C8FC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FBA
_080C8FC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8FDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FD0
_080C8FDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8FF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FE6
_080C8FF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9078
	movs r1, #0x10
_080C8FFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9006
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9006:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8FFC
	b _080C9078
	.byte 0x00, 0x00
_080C9010: .4byte 0x00000FFF
_080C9014: .4byte 0x00007FFF
_080C9018: .4byte 0x03000FD8
_080C901C:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9032
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9026:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9026
_080C9032:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C9048
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C903C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C903C
_080C9048:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C905E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9052:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9052
_080C905E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9078
	movs r1, #0x10
_080C9068:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9072
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9072:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9068
_080C9078:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C91D0
_080C9084:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080C9094
	b _080C91D0
_080C9094:
	ldr r0, _080C9150 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C90A2
	b _080C91D0
_080C90A2:
	ldr r2, _080C9154 @ =0x03000FD8
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
	beq _080C90D2
	b _080C91D0
_080C90D2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C9158 @ =0x00000FFF
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
	beq _080C915C
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9106
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C90FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C90FA
_080C9106:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C911C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9110:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9110
_080C911C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C9132
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9126:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9126
_080C9132:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C91B8
	movs r1, #0x10
_080C913C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9146
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9146:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C913C
	b _080C91B8
	.byte 0x00, 0x00
_080C9150: .4byte 0x0300034C
_080C9154: .4byte 0x03000FD8
_080C9158: .4byte 0x00000FFF
_080C915C:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9172
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9166:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9166
_080C9172:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C9188
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C917C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C917C
_080C9188:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C919E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9192:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9192
_080C919E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C91B8
	movs r1, #0x10
_080C91A8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C91B2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C91B2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C91A8
_080C91B8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C91D0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C9240
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C91EA
	adds r1, r0, #0x0
_080C91EA:
	ldr r0, _080C9234 @ =0x00007FFF
	cmp r2, r0
	ble _080C91F2
	adds r2, r0, #0x0
_080C91F2:
	cmp r2, r1
	bge _080C91F8
	adds r1, r2, #0x0
_080C91F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C9212
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C9214
_080C9212:
	movs r1, #0x00
_080C9214:
	cmp r1, #0x00
	beq _080C9240
	cmp r3, #0x01
	ble _080C9240
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C9238 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C923C @ =0x080C9A4D
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C92C2
_080C9234: .4byte 0x00007FFF
_080C9238: .4byte 0x00000FFF
_080C923C: .4byte sub_80C9A4C
_080C9240:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080C92C2
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C9264
	cmp r2, #0x04
	bne _080C9280
_080C9264:
	ldr r2, _080C92D4 @ =0x00002063
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
_080C9280:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C928E
	cmp r2, #0x04
	bne _080C92BC
_080C928E:
	ldr r2, _080C92D8 @ =0x03001038
	ldr r0, _080C92DC @ =0x0819832C
	ldr r1, _080C92E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x07
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080C92BC:
	ldr r0, _080C92E4 @ =0x080C92E9
	mov r4, r10
	str r0, [r4, #0x4C]
_080C92C2:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C92D4: .4byte 0x00002063
_080C92D8: .4byte 0x03001038
_080C92DC: .4byte 0x0819832C
_080C92E0: .4byte 0x08198220
_080C92E4: .4byte sub_80C92E8
