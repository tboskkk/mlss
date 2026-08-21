	.syntax unified
	.text

	thumb_func_start sub_80C7BBC
sub_80C7BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7CE4 @ =0x03000FD8
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
	bge _080C7C32
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7C32:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C7C42
	b _080C8180
_080C7C42:
	mov r1, r12
	cmp r1, #0x00
	bge _080C7C4A
	movs r1, #0x00
_080C7C4A:
	ldr r0, _080C7CE8 @ =0x00007FFF
	cmp r1, r0
	ble _080C7C52
	adds r1, r0, #0x0
_080C7C52:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7C68
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7C6A
_080C7C68:
	movs r2, #0x00
_080C7C6A:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C7D50
	ldr r2, _080C7CE4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C7CEC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7C9E
	movs r1, #0x33
_080C7C92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7C92
_080C7C9E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7CB2
	movs r1, #0x33
_080C7CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CA6
_080C7CB2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7CC6
	movs r1, #0x33
_080C7CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CBA
_080C7CC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x03
_080C7CD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7CDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7CDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7CD0
	b _080C7D48
	.byte 0x00, 0x00
_080C7CE4: .4byte 0x03000FD8
_080C7CE8: .4byte 0x00007FFF
_080C7CEC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CF6
_080C7D02:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D0C
_080C7D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D22
_080C7D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x10
_080C7D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7D38
_080C7D48:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C7D50:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C7D5A
	movs r1, #0x00
_080C7D5A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C7D62
	movs r2, #0x00
_080C7D62:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C7D6C
	adds r1, r0, #0x0
_080C7D6C:
	ldr r0, _080C7E64 @ =0x00007FFF
	cmp r2, r0
	ble _080C7D74
	adds r2, r0, #0x0
_080C7D74:
	cmp r2, r1
	bge _080C7D7A
	adds r1, r2, #0x0
_080C7D7A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C7D92
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C7D94
_080C7D92:
	movs r1, #0x00
_080C7D94:
	cmp r1, #0x00
	bne _080C7D9A
	b _080C7EE6
_080C7D9A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C7E68 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7DB8
	b _080C7EE6
_080C7DB8:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C7E6C @ =0x03000FD8
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
	bne _080C7ED2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7E70
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E0E
_080C7E1A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E24
_080C7E30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7E46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E3A
_080C7E46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7E50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7E5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7E5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7E50
	b _080C7ECE
	.byte 0x00, 0x00
_080C7E64: .4byte 0x00007FFF
_080C7E68: .4byte 0x0300034C
_080C7E6C: .4byte 0x03000FD8
_080C7E70:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E7C
_080C7E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E92
_080C7E9E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7EB4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7EA8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7EA8
_080C7EB4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7EBE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7EC8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7EC8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7EBE
_080C7ECE:
	bl sub_807F448
_080C7ED2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7FBC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7EE6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7EF2
	b _080C8180
_080C7EF2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C7EFA
	movs r1, #0x00
_080C7EFA:
	ldr r0, _080C7FC0 @ =0x00007FFF
	cmp r1, r0
	ble _080C7F02
	adds r1, r0, #0x0
_080C7F02:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7F1A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7F1C
_080C7F1A:
	movs r2, #0x00
_080C7F1C:
	cmp r2, #0x00
	bne _080C7F22
	b _080C8030
_080C7F22:
	ldr r3, _080C7FC4 @ =0x03000FD8
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
	ldr r0, _080C7FBC @ =0x00000FFF
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
	beq _080C7FC8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7F72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F66
_080C7F72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7F88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F7C
_080C7F88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7F9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F92
_080C7F9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C7FA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7FB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7FB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7FA8
	b _080C8024
	.byte 0x00, 0x00
_080C7FBC: .4byte 0x00000FFF
_080C7FC0: .4byte 0x00007FFF
_080C7FC4: .4byte 0x03000FD8
_080C7FC8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7FDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FD2
_080C7FDE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7FF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FE8
_080C7FF4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C800A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FFE
_080C800A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C8014:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C801E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C801E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8014
_080C8024:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C8180
_080C8030:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C803C
	b _080C8180
_080C803C:
	ldr r0, _080C8100 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	b _080C8180
_080C8052:
	ldr r2, _080C8104 @ =0x03000FD8
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
	beq _080C8082
	b _080C8180
_080C8082:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C8108 @ =0x00000FFF
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
	beq _080C810C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C80B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80AA
_080C80B6:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C80CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80C0
_080C80CC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C80E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80D6
_080C80E2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C80EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C80F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C80F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C80EC
	b _080C8168
	.byte 0x00, 0x00
_080C8100: .4byte 0x0300034C
_080C8104: .4byte 0x03000FD8
_080C8108: .4byte 0x00000FFF
_080C810C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8122
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8116:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8116
_080C8122:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8138
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C812C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C812C
_080C8138:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C814E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8142:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8142
_080C814E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C8158:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8162
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8162:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8158
_080C8168:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C8180:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C81F8
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C8196
	movs r1, #0x00
_080C8196:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C81A0
	adds r2, r0, #0x0
_080C81A0:
	ldr r0, _080C81EC @ =0x00007FFF
	cmp r1, r0
	ble _080C81A8
	adds r1, r0, #0x0
_080C81A8:
	cmp r1, r2
	bge _080C81AE
	adds r2, r1, #0x0
_080C81AE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C81C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C81CA
_080C81C8:
	movs r2, #0x00
_080C81CA:
	cmp r2, #0x00
	beq _080C81F8
	cmp r3, #0x01
	ble _080C81F8
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C81F0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C81F4 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C828E
	.byte 0x00, 0x00
_080C81EC: .4byte 0x00007FFF
_080C81F0: .4byte 0x00000FFF
_080C81F4: .4byte sub_80C65BC
_080C81F8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C828E
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
	ldr r0, _080C82A0 @ =0x0403048B
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
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C8250
	ldr r3, _080C82A4 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C8288
_080C8250:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C8258
	adds r0, #0xFF
_080C8258:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C8270
	adds r2, #0xFF
_080C8270:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C82A8 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x18
	bl sub_80DF024
_080C8288:
	ldr r0, _080C82AC @ =0x080C8609
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C828E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C82A0: .4byte 0x0403048B
_080C82A4: .4byte 0x00000111
_080C82A8: .4byte 0x0000070B
_080C82AC: .4byte sub_80C8608
