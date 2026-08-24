	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080B1920 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r4, #0xBA
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r7, #0x08]
	movs r3, #0x06
	ldsh r0, [r0, r3]
	cmp r0, #0x9F
	bgt _080B1924
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	b _080B1930
_080B1920: .4byte 0x03000FD8
_080B1924:
	movs r0, #0xF3
	muls r0, r1
	cmp r0, #0x00
	bge _080B192E
	adds r0, #0xFF
_080B192E:
	asrs r0, r0, #0x08
_080B1930:
	adds r1, r6, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r4, #0x00
	ldsh r1, [r1, r4]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	str r0, [r5, #0x18]
	ldr r3, _080B1A2C @ =0x03001038
	ldr r1, _080B1A30 @ =0x0819832C
	ldr r2, _080B1A34 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	ldr r1, [r7, #0x18]
	subs r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	bne _080B1976
	b _080B1DE0
_080B1976:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r1, r3
	bge _080B1996
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B1996:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B19A2
	b _080B1D72
_080B19A2:
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B19BE
	mov r1, r9
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B19C0
_080B19BE:
	movs r1, #0x00
_080B19C0:
	cmp r1, #0x00
	beq _080B1AA0
	ldr r2, _080B1A38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1A3C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B19E6
	movs r3, #0x99
_080B19DA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19DA
_080B19E6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B19FA
	movs r3, #0x99
_080B19EE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19EE
_080B19FA:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A0E
	movs r3, #0x99
_080B1A02:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A02
_080B1A0E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x09
_080B1A18:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A22
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A22:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A18
	b _080B1A98
	.byte 0x00, 0x00
_080B1A2C: .4byte 0x03001038
_080B1A30: .4byte 0x0819832C
_080B1A34: .4byte 0x08198220
_080B1A38: .4byte 0x03000FD8
_080B1A3C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1A52
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A46:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A46
_080B1A52:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1A68
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A5C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A5C
_080B1A68:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A7E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A72:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A72
_080B1A7E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x10
_080B1A88:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A92
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A92:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A88
_080B1A98:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B1AA0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1AB0
	adds r1, r0, #0x0
_080B1AB0:
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r2, r0
	ble _080B1AB8
	adds r2, r0, #0x0
_080B1AB8:
	cmp r2, r1
	bge _080B1ABE
	adds r1, r2, #0x0
_080B1ABE:
	mov r0, r9
	movs r3, #0x00
	ldsh r0, [r0, r3]
	mov r12, r0
	cmp r12, r1
	blt _080B1AD4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1AD6
_080B1AD4:
	movs r1, #0x00
_080B1AD6:
	cmp r1, #0x00
	beq _080B1B0A
	movs r3, #0x10
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080B1BD4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1B0A
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1BD8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B1B0A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B1B16
	b _080B1D72
_080B1B16:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r1, r0
	ble _080B1B22
	adds r1, r0, #0x0
_080B1B22:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1B36
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B1B38
_080B1B36:
	movs r2, #0x00
_080B1B38:
	cmp r2, #0x00
	bne _080B1B3E
	b _080B1C48
_080B1B3E:
	ldr r4, _080B1BDC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r2, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B1BD8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r2, r4, #0x0
	cmp r0, #0x00
	beq _080B1BE0
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1B88
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B7C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B7C
_080B1B88:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1B9E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B92:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B92
_080B1B9E:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1BB4
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BA8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BA8
_080B1BB4:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1BBE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1BC8
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1BC8:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1BBE
	b _080B1C3C
_080B1BD0: .4byte 0x00007FFF
_080B1BD4: .4byte 0x0300034C
_080B1BD8: .4byte 0x00000FFF
_080B1BDC: .4byte 0x03000FD8
_080B1BE0:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1BF6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BEA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BEA
_080B1BF6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1C0C
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C00:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C00
_080B1C0C:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1C22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C16
_080B1C22:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1C2C:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1C36
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1C36:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1C2C
_080B1C3C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B1D72
_080B1C48:
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	ble _080B1C58
	b _080B1D72
_080B1C58:
	ldr r0, _080B1D00 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B1C66
	b _080B1D72
_080B1C66:
	ldr r1, _080B1D04 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r2, [r4, #0x0A]
	movs r3, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x0A]
	ldr r3, [r1, #0x00]
	movs r0, #0x00
	adds r2, r1, #0x0
	cmp r0, #0x00
	bne _080B1D72
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B1D08 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1D0C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1CB6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CAA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CAA
_080B1CB6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1CCC
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CC0:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CC0
_080B1CCC:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1CE2
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CD6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CD6
_080B1CE2:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1CEC:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1CF6
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1CF6:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1CEC
	b _080B1D68
	.byte 0x00, 0x00
_080B1D00: .4byte 0x0300034C
_080B1D04: .4byte 0x03000FD8
_080B1D08: .4byte 0x00000FFF
_080B1D0C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1D22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D16
_080B1D22:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1D38
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D2C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D2C
_080B1D38:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1D4E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D42:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D42
_080B1D4E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1D58:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1D62
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1D62:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1D58
_080B1D68:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080B1D72:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B1DE0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1D8C
	adds r1, r0, #0x0
_080B1D8C:
	ldr r0, _080B1DD4 @ =0x00007FFF
	cmp r2, r0
	ble _080B1D94
	adds r2, r0, #0x0
_080B1D94:
	cmp r2, r1
	bge _080B1D9A
	adds r1, r2, #0x0
_080B1D9A:
	mov r4, r9
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r0, r1
	blt _080B1DB2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1DB4
_080B1DB2:
	movs r1, #0x00
_080B1DB4:
	cmp r1, #0x00
	beq _080B1DE0
	cmp r3, #0x01
	ble _080B1DE0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1DD8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B1DDC @ =0x080B24D1
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080B1E20
_080B1DD4: .4byte 0x00007FFF
_080B1DD8: .4byte 0x00000FFF
_080B1DDC: .4byte sub_80B24D0
_080B1DE0:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x02
	bne _080B1E0C
	ldr r0, _080B1E30 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E0C
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B1E0C:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E20
	ldr r0, _080B1E34 @ =0x080B1E39
	mov r7, r10
	str r0, [r7, #0x4C]
_080B1E20:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1E30: .4byte 0x0300034C
_080B1E34: .4byte sub_80B1E38
