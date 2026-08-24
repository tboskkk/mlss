	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r1, _080B5B9C @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r2, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B5A7A
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B5A7C
_080B5A7A:
	movs r1, #0x00
_080B5A7C:
	cmp r1, #0x00
	beq _080B5AB4
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
	beq _080B5A9C
	cmp r1, #0x04
	bne _080B5AB4
_080B5A9C:
	ldr r2, _080B5BA0 @ =0x00002060
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
_080B5AB4:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r3, r2, #0x02
	adds r3, r3, r2
	lsls r0, r3, #0x01
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r4, r0, r1
	lsls r0, r2, #0x03
	subs r2, r2, r0
	adds r2, r2, r1
	str r2, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, r0, r3
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r8
	bge _080B5AF4
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B5AF4:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B5B04
	b _080B6028
_080B5B04:
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _080B5B0C
	movs r2, #0x00
_080B5B0C:
	ldr r0, _080B5BA4 @ =0x00007FFF
	cmp r2, r0
	ble _080B5B14
	adds r2, r0, #0x0
_080B5B14:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x008]
	cmp r1, r2
	bgt _080B5B2E
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B5B30
_080B5B2E:
	movs r1, #0x00
_080B5B30:
	cmp r1, #0x00
	beq _080B5C0C
	ldr r2, _080B5B9C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B5BA8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5B58
	movs r1, #0x80
_080B5B4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B4C
_080B5B58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5B6C
	movs r1, #0x80
_080B5B60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B60
_080B5B6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5B80
	movs r1, #0x80
_080B5B74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B74
_080B5B80:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5C04
	movs r1, #0x08
_080B5B8A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5B94
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5B94:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5B8A
	b _080B5C04
_080B5B9C: .4byte 0x03000FD8
_080B5BA0: .4byte 0x00002060
_080B5BA4: .4byte 0x00007FFF
_080B5BA8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5BBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BB2
_080B5BBE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5BD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BC8
_080B5BD4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5BEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BDE
_080B5BEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5C04
	movs r1, #0x10
_080B5BF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5BFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5BFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5BF4
_080B5C04:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B5C0C:
	ldr r2, [sp, #0x004]
	mov r1, r8
	cmp r2, #0x00
	bge _080B5C16
	movs r2, #0x00
_080B5C16:
	mov r3, r8
	cmp r3, #0x00
	bge _080B5C1E
	movs r1, #0x00
_080B5C1E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B5C28
	adds r2, r0, #0x0
_080B5C28:
	ldr r0, _080B5D1C @ =0x00007FFF
	cmp r1, r0
	ble _080B5C30
	adds r1, r0, #0x0
_080B5C30:
	cmp r1, r2
	bge _080B5C36
	adds r2, r1, #0x0
_080B5C36:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	blt _080B5C4C
	ldr r4, [sp, #0x008]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080B5C4E
_080B5C4C:
	movs r2, #0x00
_080B5C4E:
	cmp r2, #0x00
	bne _080B5C54
	b _080B5D9C
_080B5C54:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B5D20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B5C72
	b _080B5D9C
_080B5C72:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B5D24 @ =0x03000FD8
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
	bne _080B5D8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5D28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B5CD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CC8
_080B5CD4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5CEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CDE
_080B5CEA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5D00
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CF4
_080B5D00:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5D86
	movs r1, #0x10
_080B5D0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5D14
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5D14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5D0A
	b _080B5D86
_080B5D1C: .4byte 0x00007FFF
_080B5D20: .4byte 0x0300034C
_080B5D24: .4byte 0x03000FD8
_080B5D28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B5D40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D34
_080B5D40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5D56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D4A
_080B5D56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5D6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D60
_080B5D6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5D86
	movs r1, #0x10
_080B5D76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5D80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5D80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5D76
_080B5D86:
	bl sub_807F448
_080B5D8A:
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ldr r1, _080B5E6C @ =0x00000FFF
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x06
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r3, #0x00]
_080B5D9C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B5DA8
	b _080B6028
_080B5DA8:
	mov r1, r8
	cmp r1, #0x00
	bge _080B5DB0
	movs r1, #0x00
_080B5DB0:
	ldr r0, _080B5E70 @ =0x00007FFF
	cmp r1, r0
	ble _080B5DB8
	adds r1, r0, #0x0
_080B5DB8:
	ldr r2, [sp, #0x008]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B5DCE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B5DD0
_080B5DCE:
	movs r2, #0x00
_080B5DD0:
	cmp r2, #0x00
	bne _080B5DD6
	b _080B5EE0
_080B5DD6:
	ldr r3, _080B5E74 @ =0x03000FD8
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
	ldr r0, _080B5E6C @ =0x00000FFF
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
	beq _080B5E78
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5E24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E18
_080B5E24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5E3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E2E
_080B5E3A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5E50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E44
_080B5E50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5ED4
	movs r1, #0x10
_080B5E5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5E64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5E64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5E5A
	b _080B5ED4
_080B5E6C: .4byte 0x00000FFF
_080B5E70: .4byte 0x00007FFF
_080B5E74: .4byte 0x03000FD8
_080B5E78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5E8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E82
_080B5E8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E98
_080B5EA4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5EBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5EAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5EAE
_080B5EBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5ED4
	movs r1, #0x10
_080B5EC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5ECE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5ECE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5EC4
_080B5ED4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B6028
_080B5EE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r8
	ble _080B5EEC
	b _080B6028
_080B5EEC:
	ldr r0, _080B5FA8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B5EFA
	b _080B6028
_080B5EFA:
	ldr r2, _080B5FAC @ =0x03000FD8
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
	beq _080B5F2A
	b _080B6028
_080B5F2A:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B5FB0 @ =0x00000FFF
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
	beq _080B5FB4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5F5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F52
_080B5F5E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5F74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F68
_080B5F74:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5F8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F7E
_080B5F8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6010
	movs r1, #0x10
_080B5F94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5F9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5F9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5F94
	b _080B6010
	.byte 0x00, 0x00
_080B5FA8: .4byte 0x0300034C
_080B5FAC: .4byte 0x03000FD8
_080B5FB0: .4byte 0x00000FFF
_080B5FB4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5FCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FBE
_080B5FCA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5FE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FD4
_080B5FE0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5FF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FEA
_080B5FF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6010
	movs r1, #0x10
_080B6000:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B600A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B600A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6000
_080B6010:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B6028:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B6034
	b _080B6144
_080B6034:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r3, r8
	cmp r3, #0x00
	bge _080B6040
	movs r3, #0x00
_080B6040:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B604A
	adds r1, r0, #0x0
_080B604A:
	ldr r0, _080B6084 @ =0x00007FFF
	cmp r3, r0
	ble _080B6052
	adds r3, r0, #0x0
_080B6052:
	cmp r3, r1
	bge _080B6058
	adds r1, r3, #0x0
_080B6058:
	mov r0, r10
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r8, r0
	cmp r8, r1
	blt _080B6072
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r3
	ble _080B6074
_080B6072:
	movs r1, #0x00
_080B6074:
	cmp r1, #0x00
	beq _080B6144
	cmp r4, #0x01
	ble _080B608C
	ldr r2, _080B6088 @ =0x040A1389
	mov r8, r2
	b _080B6090
	.byte 0x00, 0x00
_080B6084: .4byte 0x00007FFF
_080B6088: .4byte 0x040A1389
_080B608C:
	ldr r3, _080B60D4 @ =0x040A1289
	mov r8, r3
_080B6090:
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
	mov r0, r8
	str r0, [sp, #0x000]
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
	bne _080B60D8
	cmp r1, #0x01
	bne _080B60D8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B62BE
	.byte 0x00, 0x00
_080B60D4: .4byte 0x040A1289
_080B60D8:
	cmp r4, #0x01
	ble _080B6108
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B60E4
	adds r1, #0xFF
_080B60E4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B60EE
	adds r2, #0xFF
_080B60EE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B60F8
	adds r3, #0xFF
_080B60F8:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6104 @ =0x00002E29
	bl sub_80DF024
	b _080B612E
_080B6104: .4byte 0x00002E29
_080B6108:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6110
	adds r1, #0xFF
_080B6110:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B611A
	adds r2, #0xFF
_080B611A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6124
	adds r3, #0xFF
_080B6124:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B61D8 @ =0x000006F7
	bl sub_80DF024
_080B612E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B61DC @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B6144:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B6154
	b _080B62BE
_080B6154:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6168
	cmp r2, #0x04
	bne _080B61AA
_080B6168:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6176
	adds r0, #0xFF
_080B6176:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6184
	adds r0, #0xFF
_080B6184:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6192
	adds r0, #0xFF
_080B6192:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B61AA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B61B8
	cmp r1, #0x04
	bne _080B6220
_080B61B8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B61E4
	ldr r2, _080B61E0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B61F0
	.byte 0x00, 0x00
_080B61D8: .4byte 0x000006F7
_080B61DC: .4byte 0x00000FFF
_080B61E0: .4byte 0x00002002
_080B61E4:
	ldr r2, _080B62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B61F0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B6206
	movs r2, #0x01
_080B6206:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B6220:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B622E
	cmp r2, #0x04
	bne _080B6238
_080B622E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B6238:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6258
	cmp r2, #0x04
	bne _080B62A6
_080B6258:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6266
	adds r0, #0xFF
_080B6266:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6274
	adds r0, #0xFF
_080B6274:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6282
	adds r0, #0xFF
_080B6282:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B6294
	adds r0, #0xFF
_080B6294:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B62D4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B62A6:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B62B4
	cmp r2, #0x04
	bne _080B62BE
_080B62B4:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B62BE:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B62D0: .4byte 0x0000204F
_080B62D4: .4byte 0x000007CC
