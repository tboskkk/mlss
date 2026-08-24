	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D7A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
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
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D7994
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7994:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D79A4
	b _080D7ECA
_080D79A4:
	mov r1, r12
	cmp r1, #0x00
	bge _080D79AC
	movs r1, #0x00
_080D79AC:
	ldr r0, _080D7A48 @ =0x00007FFF
	cmp r1, r0
	ble _080D79B4
	adds r1, r0, #0x0
_080D79B4:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D79CA
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D79CC
_080D79CA:
	movs r2, #0x00
_080D79CC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D7AB0
	ldr r2, _080D7A44 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D7A4C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A00
	movs r1, #0x40
_080D79F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D79F4
_080D7A00:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A14
	movs r1, #0x40
_080D7A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A08
_080D7A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A28
	movs r1, #0x40
_080D7A1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A1C
_080D7A28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x04
_080D7A32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7A3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7A3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A32
	b _080D7AA8
_080D7A44: .4byte 0x03000FD8
_080D7A48: .4byte 0x00007FFF
_080D7A4C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A56
_080D7A62:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A6C
_080D7A78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A82
_080D7A8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x10
_080D7A98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7AA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7AA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A98
_080D7AA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D7AB0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D7ABE
	movs r2, #0x00
_080D7ABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D7AC8
	adds r1, r0, #0x0
_080D7AC8:
	ldr r0, _080D7BBC @ =0x00007FFF
	cmp r2, r0
	ble _080D7AD0
	adds r2, r0, #0x0
_080D7AD0:
	cmp r2, r1
	bge _080D7AD6
	adds r1, r2, #0x0
_080D7AD6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D7AEE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D7AF0
_080D7AEE:
	movs r1, #0x00
_080D7AF0:
	cmp r1, #0x00
	bne _080D7AF6
	b _080D7C3E
_080D7AF6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D7BC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D7B14
	b _080D7C3E
_080D7B14:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D7BC4 @ =0x03000FD8
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
	bne _080D7C2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7BC8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7B74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B68
_080D7B74:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7B8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B7E
_080D7B8A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7BA0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B94:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B94
_080D7BA0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7BAA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7BB4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7BB4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7BAA
	b _080D7C26
_080D7BBC: .4byte 0x00007FFF
_080D7BC0: .4byte 0x0300034C
_080D7BC4: .4byte 0x03000FD8
_080D7BC8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7BE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BD4
_080D7BE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7BF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BEA
_080D7BF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7C0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7C00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7C00
_080D7C0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7C16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7C20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7C20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7C16
_080D7C26:
	bl sub_807F448
_080D7C2A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D7D14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D7C3E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D7C4A
	b _080D7ECA
_080D7C4A:
	mov r1, r9
	cmp r1, #0x00
	bge _080D7C52
	movs r1, #0x00
_080D7C52:
	ldr r0, _080D7D18 @ =0x00007FFF
	cmp r1, r0
	ble _080D7C5A
	adds r1, r0, #0x0
_080D7C5A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D7C72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7C74
_080D7C72:
	movs r2, #0x00
_080D7C74:
	cmp r2, #0x00
	bne _080D7C7A
	b _080D7D88
_080D7C7A:
	ldr r3, _080D7D1C @ =0x03000FD8
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
	ldr r0, _080D7D14 @ =0x00000FFF
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
	beq _080D7D20
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7CCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CBE
_080D7CCA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7CE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CD4
_080D7CE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CEA
_080D7CF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D00
	b _080D7D7C
	.byte 0x00, 0x00
_080D7D14: .4byte 0x00000FFF
_080D7D18: .4byte 0x00007FFF
_080D7D1C: .4byte 0x03000FD8
_080D7D20:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7D36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D2A
_080D7D36:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7D4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D40
_080D7D4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7D62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D56
_080D7D62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D6C
_080D7D7C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D7ECA
_080D7D88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D7D94
	b _080D7ECA
_080D7D94:
	ldr r0, _080D7E4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D7DA2
	b _080D7ECA
_080D7DA2:
	ldr r2, _080D7E50 @ =0x03000FD8
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
	bne _080D7ECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D7E54 @ =0x00000FFF
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
	beq _080D7E58
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7DF8
_080D7E04:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E0E
_080D7E1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E24
_080D7E30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7E3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7E44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7E44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7E3A
	b _080D7EB4
_080D7E4C: .4byte 0x0300034C
_080D7E50: .4byte 0x03000FD8
_080D7E54: .4byte 0x00000FFF
_080D7E58:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E62
_080D7E6E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E78
_080D7E84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E8E
_080D7E9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7EA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7EAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7EAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7EA4
_080D7EB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D7ECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D7F40
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080D7EE0
	movs r1, #0x00
_080D7EE0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D7EEA
	adds r2, r0, #0x0
_080D7EEA:
	ldr r0, _080D7F34 @ =0x00007FFF
	cmp r1, r0
	ble _080D7EF2
	adds r1, r0, #0x0
_080D7EF2:
	cmp r1, r2
	bge _080D7EF8
	adds r2, r1, #0x0
_080D7EF8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D7F12
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D7F14
_080D7F12:
	movs r2, #0x00
_080D7F14:
	cmp r2, #0x00
	beq _080D7F40
	cmp r3, #0x01
	ble _080D7F40
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D7F38 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D7F3C @ =0x080D85D5
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D801C
_080D7F34: .4byte 0x00007FFF
_080D7F38: .4byte 0x00000FFF
_080D7F3C: .4byte sub_80D85D4
_080D7F40:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080D801C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bne _080D7F76
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7F72
	cmp r1, #0x04
	bne _080D7F76
_080D7F72:
	ldr r0, _080D802C @ =0x080D8439
	str r0, [r6, #0x4C]
_080D7F76:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080D7F8A
	cmp r2, #0x04
	bne _080D7FA6
_080D7F8A:
	ldr r2, _080D8030 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x12
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
_080D7FA6:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D7FC4
	ldr r2, _080D8034 @ =0x00002095
	movs r1, #0x12
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7FC4:
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r0, #0x01
	strb r4, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7FDE
	cmp r2, #0x04
	bne _080D800E
_080D7FDE:
	ldr r2, _080D8038 @ =0x03001038
	ldr r0, _080D803C @ =0x0819832C
	ldr r1, _080D8040 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r4, [r0, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
_080D800E:
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D8044 @ =0x080D8049
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D801C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D802C: .4byte sub_80D8438
_080D8030: .4byte 0x00002066
_080D8034: .4byte 0x00002095
_080D8038: .4byte 0x03001038
_080D803C: .4byte 0x0819832C
_080D8040: .4byte 0x08198220
_080D8044: .4byte sub_80D8048
