	.syntax unified
	.text

	thumb_func_start sub_80B9A58
sub_80B9A58:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080B9B40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
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
	bge _080B9A9E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B9A9E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B9AAE
	b _080B9FC2
_080B9AAE:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080B9AC6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B9AC8
_080B9AC6:
	movs r1, #0x00
_080B9AC8:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080B9BA8
	ldr r2, _080B9B40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B9B44
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9AFC
	movs r1, #0x33
_080B9AF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9AF0
_080B9AFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9B10
	movs r1, #0x33
_080B9B04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9B04
_080B9B10:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B9B24
	movs r1, #0x33
_080B9B18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9B18
_080B9B24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9BA0
	movs r1, #0x03
_080B9B2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9B38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9B38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9B2E
	b _080B9BA0
_080B9B40: .4byte 0x03000FD8
_080B9B44:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9B5A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9B4E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9B4E
_080B9B5A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9B70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9B64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9B64
_080B9B70:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B9B86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9B7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9B7A
_080B9B86:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9BA0
	movs r1, #0x10
_080B9B90:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9B9A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9B9A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9B90
_080B9BA0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B9BA8:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B9BB8
	adds r1, r0, #0x0
_080B9BB8:
	ldr r0, _080B9CAC @ =0x00007FFF
	cmp r2, r0
	ble _080B9BC0
	adds r2, r0, #0x0
_080B9BC0:
	cmp r2, r1
	bge _080B9BC6
	adds r1, r2, #0x0
_080B9BC6:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B9BDE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B9BE0
_080B9BDE:
	movs r1, #0x00
_080B9BE0:
	cmp r1, #0x00
	bne _080B9BE6
	b _080B9D2E
_080B9BE6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B9CB0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B9C04
	b _080B9D2E
_080B9C04:
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B9CB4 @ =0x03000FD8
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
	bne _080B9D1A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9CB8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080B9C64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9C58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9C58
_080B9C64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9C7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9C6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9C6E
_080B9C7A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B9C90
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9C84
_080B9C90:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9D16
	movs r1, #0x10
_080B9C9A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9CA4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9CA4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9C9A
	b _080B9D16
_080B9CAC: .4byte 0x00007FFF
_080B9CB0: .4byte 0x0300034C
_080B9CB4: .4byte 0x03000FD8
_080B9CB8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080B9CD0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9CC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9CC4
_080B9CD0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9CE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9CDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9CDA
_080B9CE6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B9CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9CF0
_080B9CFC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9D16
	movs r1, #0x10
_080B9D06:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9D10
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9D10:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9D06
_080B9D16:
	bl sub_807F448
_080B9D1A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B9E00 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B9D2E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B9D3A
	b _080B9FC2
_080B9D3A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080B9E04 @ =0x00007FFF
	cmp r1, r0
	ble _080B9D46
	adds r1, r0, #0x0
_080B9D46:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B9D5E
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B9D60
_080B9D5E:
	movs r2, #0x00
_080B9D60:
	cmp r2, #0x00
	bne _080B9D66
	b _080B9E74
_080B9D66:
	ldr r3, _080B9E08 @ =0x03000FD8
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
	ldr r0, _080B9E00 @ =0x00000FFF
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
	beq _080B9E0C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9DB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9DAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9DAA
_080B9DB6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9DCC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9DC0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9DC0
_080B9DCC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B9DE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9DD6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9DD6
_080B9DE2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9E68
	movs r1, #0x10
_080B9DEC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9DF6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9DF6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9DEC
	b _080B9E68
	.byte 0x00, 0x00
_080B9E00: .4byte 0x00000FFF
_080B9E04: .4byte 0x00007FFF
_080B9E08: .4byte 0x03000FD8
_080B9E0C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9E22
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9E16:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9E16
_080B9E22:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9E38
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9E2C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9E2C
_080B9E38:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B9E4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9E42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9E42
_080B9E4E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9E68
	movs r1, #0x10
_080B9E58:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9E62
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9E62:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9E58
_080B9E68:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B9FC2
_080B9E74:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080B9E84
	b _080B9FC2
_080B9E84:
	ldr r0, _080B9F44 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B9E9A
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B9E9A
	b _080B9FC2
_080B9E9A:
	ldr r2, _080B9F48 @ =0x03000FD8
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
	bne _080B9FC2
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B9F4C @ =0x00000FFF
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
	beq _080B9F50
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9EFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9EF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9EF0
_080B9EFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9F12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9F06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9F06
_080B9F12:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B9F28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9F1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9F1C
_080B9F28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9FAC
	movs r1, #0x10
_080B9F32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9F3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9F3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9F32
	b _080B9FAC
_080B9F44: .4byte 0x0300034C
_080B9F48: .4byte 0x03000FD8
_080B9F4C: .4byte 0x00000FFF
_080B9F50:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B9F66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9F5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9F5A
_080B9F66:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B9F7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9F70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9F70
_080B9F7C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B9F92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B9F86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B9F86
_080B9F92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9FAC
	movs r1, #0x10
_080B9F9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B9FA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B9FA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9F9C
_080B9FAC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080B9FC2:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080BA034
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B9FDC
	adds r1, r0, #0x0
_080B9FDC:
	ldr r0, _080BA028 @ =0x00007FFF
	cmp r2, r0
	ble _080B9FE4
	adds r2, r0, #0x0
_080B9FE4:
	cmp r2, r1
	bge _080B9FEA
	adds r1, r2, #0x0
_080B9FEA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080BA004
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080BA006
_080BA004:
	movs r1, #0x00
_080BA006:
	cmp r1, #0x00
	beq _080BA034
	cmp r3, #0x01
	ble _080BA034
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080BA02C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080BA030 @ =0x080BA63D
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080BA0D4
	.byte 0x00, 0x00
_080BA028: .4byte 0x00007FFF
_080BA02C: .4byte 0x00000FFF
_080BA030: .4byte sub_80BA63C
_080BA034:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BA0D4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA05E
	cmp r1, #0x04
	bne _080BA07A
_080BA05E:
	ldr r2, _080BA0E4 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x09
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
_080BA07A:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA08C
	cmp r1, #0x04
	bne _080BA0A8
_080BA08C:
	ldr r2, _080BA0E8 @ =0x00002062
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BA0A8:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080BA0B0
	adds r1, #0xFF
_080BA0B0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080BA0BA
	adds r2, #0xFF
_080BA0BA:
	asrs r2, r2, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080BA0C4
	adds r0, #0xFF
_080BA0C4:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080BA0EC @ =0x080BA0F1
	mov r4, r10
	str r0, [r4, #0x4C]
_080BA0D4:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BA0E4: .4byte 0x00002024
_080BA0E8: .4byte 0x00002062
_080BA0EC: .4byte sub_80BA0F0
