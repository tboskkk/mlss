	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r3, [r6, #0x2C]
	mov r1, sp
	ldr r0, _08114C74 @ =0x082011B4
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r7, r9
	cmp r7, #0xFF
	bne _08114C9C
	movs r4, #0x00
	adds r0, r6, #0x0
	adds r0, #0x24
	adds r5, r0, #0x0
	ldrb r0, [r5, #0x00]
	cmp r4, r0
	bge _08114C92
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08114C78
	movs r1, #0x00
	str r1, [sp, #0x02C]
	b _08114C92
_08114C74: .4byte 0x082011B4
_08114C78:
	adds r4, #0x01
	adds r3, #0x1C
	ldrb r7, [r5, #0x00]
	cmp r4, r7
	bge _08114C92
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08114C78
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x02C]
_08114C92:
	ldrb r5, [r5, #0x00]
	cmp r4, r5
	bne _08114CA0
_08114C98:
	movs r0, #0xFF
	b _08115034
_08114C9C:
	mov r0, r9
	str r0, [sp, #0x02C]
_08114CA0:
	lsrs r0, r2, #0x0C
	ldr r4, _08114D2C @ =0x00000FFF
	ands r4, r2
	cmp r0, #0x0A
	bhi _08114C98
	lsls r0, r0, #0x02
	add r0, sp
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x030]
	ldr r1, [r6, #0x2C]
	ldr r2, [sp, #0x02C]
	lsls r5, r2, #0x03
	subs r0, r5, r2
	lsls r7, r0, #0x02
	adds r1, r7, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	movs r3, #0x01
	mov r9, r3
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r6, #0x2C]
	adds r3, r7, r3
	lsls r4, r4, #0x02
	ldr r0, [sp, #0x030]
	adds r0, r0, r4
	mov r12, r0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	movs r1, #0x70
	ands r1, r0
	lsrs r1, r1, #0x01
	ldrb r2, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	str r5, [sp, #0x034]
	str r4, [sp, #0x038]
	mov r1, r8
	cmp r1, #0xFF
	bne _08114D30
	ldr r3, [r6, #0x2C]
	adds r3, r7, r3
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x00]
	movs r1, #0x80
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x17
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, [r6, #0x2C]
	adds r2, r7, r2
	mov r3, r12
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x00]
	movs r1, #0x0F
	ands r1, r0
	b _08114D58
_08114D2C: .4byte 0x00000FFF
_08114D30:
	ldr r3, [r6, #0x2C]
	adds r3, r7, r3
	movs r0, #0x10
	mov r4, r8
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1C
	mov r5, r9
	ands r0, r5
	lsls r0, r0, #0x02
	ldrb r2, [r3, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r2, [r6, #0x2C]
	adds r2, r7, r2
	movs r1, #0x0F
	ands r1, r4
_08114D58:
	ldrb r3, [r2, #0x01]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x01]
	ldr r2, [r6, #0x2C]
	ldr r7, [sp, #0x034]
	ldr r1, [sp, #0x02C]
	subs r0, r7, r1
	lsls r5, r0, #0x02
	adds r2, r5, r2
	ldr r3, [sp, #0x038]
	ldr r4, [sp, #0x030]
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x02]
	movs r1, #0xF0
	ands r1, r0
	ldrb r3, [r2, #0x01]
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x01]
	ldr r2, [r6, #0x2C]
	adds r2, r5, r2
	mov r7, r8
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x02]
	adds r1, r4, #0x0
	ands r1, r0
	ldrb r3, [r2, #0x02]
	movs r7, #0x10
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x02]
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x04]
	movs r3, #0x00
	mov r9, r3
	strb r0, [r1, #0x03]
	ldr r3, [r6, #0x2C]
	adds r3, r5, r3
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x06]
	movs r1, #0xF0
	ands r1, r0
	lsrs r1, r1, #0x04
	ands r1, r4
	ldrb r2, [r3, #0x04]
	adds r0, r7, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x04]
	ldr r3, [r6, #0x2C]
	adds r3, r5, r3
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x06]
	adds r1, r4, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x04]
	adds r0, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x04]
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08114DFE
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	ldrh r1, [r1, #0x08]
	strb r1, [r0, #0x05]
_08114DFE:
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	mov r3, r9
	strh r3, [r0, #0x06]
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	strh r3, [r0, #0x08]
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	movs r1, #0x01
	strb r1, [r0, #0x18]
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
	ldrb r2, [r1, #0x19]
	adds r0, r7, #0x0
	ands r0, r2
	strb r0, [r1, #0x19]
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
	ldrb r2, [r1, #0x19]
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x19]
	ldr r4, [r6, #0x2C]
	adds r4, r5, r4
	ldr r2, _08114EE0 @ =0x082011E0
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r4, #0x0C]
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x08
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x18
	adds r1, r1, r0
	adds r4, r6, #0x0
	adds r4, #0x4C
	strh r1, [r4, #0x00]
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x01
	ldr r7, _08114EE4 @ =0x02000080
	mov r10, r7
	mov r1, r10
	adds r0, r2, r1
	ldr r1, [r6, #0x1C]
	adds r1, r1, r2
	ldr r2, _08114EE8 @ =0x04000008
	mov r9, r2
	bl CpuSet
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
	ldr r1, [r1, #0x0C]
	mov r2, r9
	bl CpuSet
	ldr r0, [r6, #0x2C]
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08114E96
	b _08114FF8
_08114E96:
	ldr r2, _08114EEC @ =0x082011E8
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x10]
	ldr r0, [r6, #0x2C]
	adds r3, r5, r0
	ldrb r0, [r3, #0x02]
	lsls r1, r0, #0x1C
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1C
	cmp r1, r0
	beq _08114EBE
	ldrb r2, [r3, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _08114F72
_08114EBE:
	ldr r0, _08114EF0 @ =0x0300034C
	ldr r4, _08114EF4 @ =0x00000888
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08114EF8
	mov r5, r8
	ldr r0, [r5, #0x00]
	adds r0, #0x0C
	ldr r1, [r3, #0x10]
	mov r2, r9
	bl CpuSet
	b _08114F06
	.byte 0x00, 0x00
_08114EE0: .4byte 0x082011E0
_08114EE4: .4byte 0x02000080
_08114EE8: .4byte 0x04000008
_08114EEC: .4byte 0x082011E8
_08114EF0: .4byte 0x0300034C
_08114EF4: .4byte 0x00000888
_08114EF8:
	mov r7, r8
	ldr r0, [r7, #0x00]
	adds r0, #0x2C
	ldr r1, [r3, #0x10]
	mov r2, r9
	bl CpuSet
_08114F06:
	ldr r1, [r6, #0x2C]
	ldr r2, [sp, #0x034]
	ldr r3, [sp, #0x02C]
	subs r0, r2, r3
	lsls r7, r0, #0x02
	adds r4, r7, r1
	ldrb r1, [r4, #0x01]
	ldrb r0, [r4, #0x02]
	lsls r0, r0, #0x1C
	lsrs r1, r1, #0x04
	lsrs r0, r0, #0x1C
	cmp r1, r0
	bne _08114F6C
	ldr r2, _08114F50 @ =0x082011F0
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r4, #0x14]
	ldr r0, _08114F54 @ =0x0300034C
	ldr r4, _08114F58 @ =0x00000888
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08114F5C
	ldr r5, [sp, #0x038]
	ldr r1, [sp, #0x030]
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x4C
	ldr r1, [r6, #0x2C]
	adds r1, r7, r1
	b _08114FD6
	.byte 0x00, 0x00
_08114F50: .4byte 0x082011F0
_08114F54: .4byte 0x0300034C
_08114F58: .4byte 0x00000888
_08114F5C:
	ldr r2, [sp, #0x038]
	ldr r3, [sp, #0x030]
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x6C
	ldr r1, [r6, #0x2C]
	adds r1, r7, r1
	b _08114FD6
_08114F6C:
	movs r0, #0x00
	str r0, [r4, #0x14]
	b _08114FF8
_08114F72:
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x08
	lsrs r1, r1, #0x18
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
	ldr r1, [r1, #0x10]
	mov r2, r9
	bl CpuSet
	ldr r0, [r6, #0x2C]
	adds r7, r5, r0
	ldrb r1, [r7, #0x01]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0xF0
	beq _08114FE8
	lsls r0, r1, #0x1C
	lsrs r1, r1, #0x04
	lsrs r0, r0, #0x1C
	cmp r1, r0
	beq _08114FE8
	ldr r2, _08114FE0 @ =0x082011F0
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x14]
	ldr r0, [r6, #0x2C]
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x08
	ldrb r0, [r0, #0x01]
	lsrs r0, r0, #0x04
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r4, #0x00]
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldr r1, [r6, #0x2C]
	adds r1, r5, r1
_08114FD6:
	ldr r1, [r1, #0x14]
	ldr r2, _08114FE4 @ =0x04000008
	bl CpuSet
	b _08114FF8
_08114FE0: .4byte 0x082011F0
_08114FE4: .4byte 0x04000008
_08114FE8:
	ldr r0, [r6, #0x2C]
	ldr r4, [sp, #0x034]
	ldr r5, [sp, #0x02C]
	subs r1, r4, r5
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x14]
_08114FF8:
	ldr r1, [r6, #0x2C]
	ldr r7, [sp, #0x034]
	ldr r2, [sp, #0x02C]
	subs r0, r7, r2
	lsls r0, r0, #0x02
	adds r5, r0, r1
	ldrb r0, [r5, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	movs r1, #0x01
	lsls r1, r0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	lsls r1, r0
	ldr r0, [r6, #0x28]
	orrs r0, r1
	str r0, [r6, #0x28]
	ldrb r1, [r5, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08115032
	ldrb r0, [r5, #0x05]
	cmp r0, #0x00
	beq _08115032
	ldr r0, _08115044 @ =0x0000FFFF
	strh r0, [r5, #0x08]
_08115032:
	ldr r0, [sp, #0x02C]
_08115034:
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08115044: .4byte 0x0000FFFF
