	.syntax unified
	.text

	thumb_func_start sub_80C5B08
sub_80C5B08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C5C30 @ =0x03000FD8
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
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
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
	bge _080C5B7E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C5B7E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C5B8E
	b _080C60CC
_080C5B8E:
	mov r1, r12
	cmp r1, #0x00
	bge _080C5B96
	movs r1, #0x00
_080C5B96:
	ldr r0, _080C5C34 @ =0x00007FFF
	cmp r1, r0
	ble _080C5B9E
	adds r1, r0, #0x0
_080C5B9E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5BB4
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5BB6
_080C5BB4:
	movs r2, #0x00
_080C5BB6:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C5C9C
	ldr r2, _080C5C30 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C5C38
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5BEA
	movs r1, #0x33
_080C5BDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BDE
_080C5BEA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5BFE
	movs r1, #0x33
_080C5BF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5BF2
_080C5BFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C12
	movs r1, #0x33
_080C5C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C06
_080C5C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x03
_080C5C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C1C
	b _080C5C94
	.byte 0x00, 0x00
_080C5C30: .4byte 0x03000FD8
_080C5C34: .4byte 0x00007FFF
_080C5C38:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5C4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C42
_080C5C4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5C64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C58
_080C5C64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5C7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5C6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5C6E
_080C5C7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5C94
	movs r1, #0x10
_080C5C84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5C8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5C8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5C84
_080C5C94:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C5C9C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C5CA6
	movs r1, #0x00
_080C5CA6:
	mov r3, r9
	cmp r3, #0x00
	bge _080C5CAE
	movs r2, #0x00
_080C5CAE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C5CB8
	adds r1, r0, #0x0
_080C5CB8:
	ldr r0, _080C5DB0 @ =0x00007FFF
	cmp r2, r0
	ble _080C5CC0
	adds r2, r0, #0x0
_080C5CC0:
	cmp r2, r1
	bge _080C5CC6
	adds r1, r2, #0x0
_080C5CC6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C5CDE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C5CE0
_080C5CDE:
	movs r1, #0x00
_080C5CE0:
	cmp r1, #0x00
	bne _080C5CE6
	b _080C5E32
_080C5CE6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C5DB4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5D04
	b _080C5E32
_080C5D04:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C5DB8 @ =0x03000FD8
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
	bne _080C5E1E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C5DBC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5D66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D5A
_080C5D66:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5D7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D70
_080C5D7C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5D92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5D86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5D86
_080C5D92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5D9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5DA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5DA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5D9C
	b _080C5E1A
	.byte 0x00, 0x00
_080C5DB0: .4byte 0x00007FFF
_080C5DB4: .4byte 0x0300034C
_080C5DB8: .4byte 0x03000FD8
_080C5DBC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C5DD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DC8
_080C5DD4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C5DEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DDE
_080C5DEA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5E00
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5DF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5DF4
_080C5E00:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5E1A
	movs r1, #0x10
_080C5E0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5E14
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5E14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5E0A
_080C5E1A:
	bl sub_807F448
_080C5E1E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C5F08 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C5E32:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C5E3E
	b _080C60CC
_080C5E3E:
	mov r1, r9
	cmp r1, #0x00
	bge _080C5E46
	movs r1, #0x00
_080C5E46:
	ldr r0, _080C5F0C @ =0x00007FFF
	cmp r1, r0
	ble _080C5E4E
	adds r1, r0, #0x0
_080C5E4E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C5E66
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C5E68
_080C5E66:
	movs r2, #0x00
_080C5E68:
	cmp r2, #0x00
	bne _080C5E6E
	b _080C5F7C
_080C5E6E:
	ldr r3, _080C5F10 @ =0x03000FD8
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
	ldr r0, _080C5F08 @ =0x00000FFF
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
	beq _080C5F14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5EBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EB2
_080C5EBE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5ED4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EC8
_080C5ED4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5EEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5EDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5EDE
_080C5EEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5EF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5EFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5EFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5EF4
	b _080C5F70
	.byte 0x00, 0x00
_080C5F08: .4byte 0x00000FFF
_080C5F0C: .4byte 0x00007FFF
_080C5F10: .4byte 0x03000FD8
_080C5F14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C5F2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F1E
_080C5F2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C5F40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F34
_080C5F40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C5F56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5F4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5F4A
_080C5F56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C5F70
	movs r1, #0x10
_080C5F60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C5F6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C5F6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C5F60
_080C5F70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C60CC
_080C5F7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C5F88
	b _080C60CC
_080C5F88:
	ldr r0, _080C604C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C5F9E
	b _080C60CC
_080C5F9E:
	ldr r2, _080C6050 @ =0x03000FD8
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
	beq _080C5FCE
	b _080C60CC
_080C5FCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6054 @ =0x00000FFF
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
	beq _080C6058
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C5FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C5FF6
_080C6002:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6018
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C600C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C600C
_080C6018:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C602E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6022:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6022
_080C602E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C6038:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6042
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6042:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6038
	b _080C60B4
	.byte 0x00, 0x00
_080C604C: .4byte 0x0300034C
_080C6050: .4byte 0x03000FD8
_080C6054: .4byte 0x00000FFF
_080C6058:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C606E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6062:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6062
_080C606E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C6084
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6078:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6078
_080C6084:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C609A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C608E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C608E
_080C609A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C60B4
	movs r1, #0x10
_080C60A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C60AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C60AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C60A4
_080C60B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C60CC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6144
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C60E2
	movs r1, #0x00
_080C60E2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C60EC
	adds r2, r0, #0x0
_080C60EC:
	ldr r0, _080C6138 @ =0x00007FFF
	cmp r1, r0
	ble _080C60F4
	adds r1, r0, #0x0
_080C60F4:
	cmp r1, r2
	bge _080C60FA
	adds r2, r1, #0x0
_080C60FA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C6114
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C6116
_080C6114:
	movs r2, #0x00
_080C6116:
	cmp r2, #0x00
	beq _080C6144
	cmp r3, #0x01
	ble _080C6144
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C613C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C6140 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C6240
	.byte 0x00, 0x00
_080C6138: .4byte 0x00007FFF
_080C613C: .4byte 0x00000FFF
_080C6140: .4byte sub_80C65BC
_080C6144:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C6162
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080C6164
_080C6162:
	movs r1, #0x00
_080C6164:
	cmp r1, #0x00
	beq _080C6172
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C6172:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C6240
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
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
	ldr r0, _080C6250 @ =0x0403048B
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
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080C61D4
	ldr r2, _080C6254 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C620C
_080C61D4:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C61DC
	adds r0, #0xFF
_080C61DC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C61F4
	adds r2, #0xFF
_080C61F4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C6258 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080C620C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C621E
	cmp r1, #0x04
	bne _080C623A
_080C621E:
	ldr r2, _080C625C @ =0x00002034
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
_080C623A:
	ldr r0, _080C6260 @ =0x080C6265
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C6240:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C6250: .4byte 0x0403048B
_080C6254: .4byte 0x00000111
_080C6258: .4byte 0x0000070B
_080C625C: .4byte 0x00002034
_080C6260: .4byte sub_80C6264
