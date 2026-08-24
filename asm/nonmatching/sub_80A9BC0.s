	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080A9CE0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	ldr r3, [sp, #0x008]
	subs r4, r3, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	subs r3, r3, r0
	str r3, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r0, r0, r2
	mov r10, r0
	adds r3, r6, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080A9C32
	adds r2, r6, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A9C32:
	adds r1, r6, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080A9C42
	b _080AA174
_080A9C42:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080A9C4A
	movs r1, #0x00
_080A9C4A:
	ldr r0, _080A9CE4 @ =0x00007FFF
	cmp r1, r0
	ble _080A9C52
	adds r1, r0, #0x0
_080A9C52:
	adds r0, r6, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9C68
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9C6A
_080A9C68:
	movs r2, #0x00
_080A9C6A:
	adds r6, r5, #0x0
	adds r6, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080A9D4C
	ldr r2, _080A9CE0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A9CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9C9C
	movs r1, #0x80
_080A9C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9C90
_080A9C9C:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9CB0
	movs r1, #0x80
_080A9CA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CA4
_080A9CB0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9CC4
	movs r1, #0x80
_080A9CB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CB8
_080A9CC4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x08
_080A9CCE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9CD8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9CD8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9CCE
	b _080A9D44
_080A9CE0: .4byte 0x03000FD8
_080A9CE4: .4byte 0x00007FFF
_080A9CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CF2
_080A9CFE:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D08
_080A9D14:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D1E
_080A9D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x10
_080A9D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9D34
_080A9D44:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A9D4C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080A9D56
	movs r1, #0x00
_080A9D56:
	mov r0, r10
	cmp r0, #0x00
	bge _080A9D5E
	movs r2, #0x00
_080A9D5E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A9D68
	adds r1, r0, #0x0
_080A9D68:
	ldr r0, _080A9E60 @ =0x00007FFF
	cmp r2, r0
	ble _080A9D70
	adds r2, r0, #0x0
_080A9D70:
	cmp r2, r1
	bge _080A9D76
	adds r1, r2, #0x0
_080A9D76:
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, r1
	blt _080A9D8C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A9D8E
_080A9D8C:
	movs r1, #0x00
_080A9D8E:
	cmp r1, #0x00
	bne _080A9D94
	b _080A9EE0
_080A9D94:
	movs r2, #0x14
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080A9E64 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A9DB4
	b _080A9EE0
_080A9DB4:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A9E68 @ =0x03000FD8
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
	bne _080A9ECE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9E6C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E0A
_080A9E16:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E20
_080A9E2C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E36
_080A9E42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9E4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9E56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9E56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9E4C
	b _080A9ECA
	.byte 0x00, 0x00
_080A9E60: .4byte 0x00007FFF
_080A9E64: .4byte 0x0300034C
_080A9E68: .4byte 0x03000FD8
_080A9E6C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E78
_080A9E84:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E8E
_080A9E9A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9EB0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9EA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9EA4
_080A9EB0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9EBA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9EC4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9EC4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9EBA
_080A9ECA:
	bl sub_807F448
_080A9ECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A9FB4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080A9EE0:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A9EEC
	b _080AA174
_080A9EEC:
	mov r1, r10
	cmp r1, #0x00
	bge _080A9EF4
	movs r1, #0x00
_080A9EF4:
	ldr r0, _080A9FB8 @ =0x00007FFF
	cmp r1, r0
	ble _080A9EFC
	adds r1, r0, #0x0
_080A9EFC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9F12
	movs r3, #0x00
	ldsh r0, [r6, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9F14
_080A9F12:
	movs r2, #0x00
_080A9F14:
	cmp r2, #0x00
	bne _080A9F1A
	b _080AA028
_080A9F1A:
	ldr r3, _080A9FBC @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A9FB4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9FC0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9F6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F5E
_080A9F6A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9F80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F74
_080A9F80:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9F96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F8A
_080A9F96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080A9FA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9FAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9FAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9FA0
	b _080AA01C
	.byte 0x00, 0x00
_080A9FB4: .4byte 0x00000FFF
_080A9FB8: .4byte 0x00007FFF
_080A9FBC: .4byte 0x03000FD8
_080A9FC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9FD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FCA
_080A9FD6:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9FEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FE0
_080A9FEC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FF6
_080AA002:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080AA00C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA016
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA016:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA00C
_080AA01C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AA174
_080AA028:
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, r10
	ble _080AA032
	b _080AA174
_080AA032:
	ldr r0, _080AA0F4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	b _080AA174
_080AA048:
	ldr r2, _080AA0F8 @ =0x03000FD8
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
	beq _080AA078
	b _080AA174
_080AA078:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080AA0FC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA100
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA0AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0A0
_080AA0AC:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA0C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0B6
_080AA0C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA0D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0CC
_080AA0D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA0E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA0EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA0EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA0E2
	b _080AA15C
_080AA0F4: .4byte 0x0300034C
_080AA0F8: .4byte 0x03000FD8
_080AA0FC: .4byte 0x00000FFF
_080AA100:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA116
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA10A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA10A
_080AA116:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA12C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA120:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA120
_080AA12C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA142
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA136:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA136
_080AA142:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA14C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA156
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA156:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA14C
_080AA15C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
_080AA174:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080AA180
	b _080AA288
_080AA180:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080AA18C
	movs r2, #0x00
_080AA18C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AA196
	adds r1, r0, #0x0
_080AA196:
	ldr r0, _080AA1CC @ =0x00007FFF
	cmp r2, r0
	ble _080AA19E
	adds r2, r0, #0x0
_080AA19E:
	cmp r2, r1
	bge _080AA1A4
	adds r1, r2, #0x0
_080AA1A4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080AA1BE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AA1C0
_080AA1BE:
	movs r1, #0x00
_080AA1C0:
	cmp r1, #0x00
	beq _080AA288
	cmp r4, #0x01
	ble _080AA1D4
	ldr r6, _080AA1D0 @ =0x040A1588
	b _080AA1D6
_080AA1CC: .4byte 0x00007FFF
_080AA1D0: .4byte 0x040A1588
_080AA1D4:
	ldr r6, _080AA218 @ =0x040A1488
_080AA1D6:
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
	bne _080AA21C
	cmp r1, #0x01
	bne _080AA21C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AA372
	.byte 0x00, 0x00
_080AA218: .4byte 0x040A1488
_080AA21C:
	cmp r4, #0x01
	ble _080AA24C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA228
	adds r1, #0xFF
_080AA228:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA232
	adds r2, #0xFF
_080AA232:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA23C
	adds r3, #0xFF
_080AA23C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA248 @ =0x00002E47
	bl sub_80DF024
	b _080AA272
_080AA248: .4byte 0x00002E47
_080AA24C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA254
	adds r1, #0xFF
_080AA254:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA25E
	adds r2, #0xFF
_080AA25E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA268
	adds r3, #0xFF
_080AA268:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA384 @ =0x0000070B
	bl sub_80DF024
_080AA272:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA388 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080AA288:
	ldr r0, [r5, #0x10]
	mov r3, r8
	str r0, [r3, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r3, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r3, #0x18]
	ldr r0, _080AA38C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080AA2AC
	movs r2, #0x00
_080AA2AC:
	ldr r0, _080AA390 @ =0x00007FFF
	cmp r2, r0
	ble _080AA2B4
	adds r2, r0, #0x0
_080AA2B4:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080AA2D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2D2
_080AA2D0:
	movs r1, #0x00
_080AA2D2:
	cmp r1, #0x00
	beq _080AA2DE
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080AA2DE:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	bgt _080AA2F8
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2FA
_080AA2F8:
	movs r1, #0x00
_080AA2FA:
	cmp r1, #0x00
	beq _080AA35E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA31A
	cmp r1, #0x04
	bne _080AA332
_080AA31A:
	ldr r2, _080AA394 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA332:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA344
	cmp r1, #0x04
	bne _080AA35E
_080AA344:
	ldr r2, _080AA398 @ =0x0000205F
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA35E:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA372
	ldr r0, _080AA39C @ =0x080AA3A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AA372:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA384: .4byte 0x0000070B
_080AA388: .4byte 0x00000FFF
_080AA38C: .4byte 0x03000FD8
_080AA390: .4byte 0x00007FFF
_080AA394: .4byte 0x00002030
_080AA398: .4byte 0x0000205F
_080AA39C: .4byte sub_80AA3A0
