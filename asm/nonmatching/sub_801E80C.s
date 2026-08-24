	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x054
	adds r7, r0, #0x0
	str r1, [sp, #0x02C]
	str r2, [sp, #0x030]
	ldr r1, [r7, #0x50]
	cmp r1, #0x00
	beq _0801E89C
	ldr r0, [r7, #0x48]
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0801E87C
	ldrh r4, [r7, #0x28]
	lsls r4, r4, #0x17
	lsrs r4, r4, #0x12
	adds r0, r1, #0x0
	bl sub_80198B0
	adds r5, r0, #0x0
	subs r2, r4, r5
	cmp r2, #0x00
	ble _0801E86E
	movs r0, #0x00
	str r0, [sp, #0x010]
	ldr r1, [r7, #0x4C]
	adds r1, r1, r5
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	add r0, sp, #0x010
	bl CpuFastSet
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0801E860
	adds r0, #0x1F
_0801E860:
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x17
	ldrh r2, [r7, #0x28]
	ldr r1, _0801E878 @ =0xFFFFFE00
	ands r1, r2
	orrs r1, r0
	strh r1, [r7, #0x28]
_0801E86E:
	ldr r0, [r7, #0x48]
	bl sub_8019808
	b _0801E89C
	.byte 0x00, 0x00
_0801E878: .4byte 0xFFFFFE00
_0801E87C:
	cmp r0, #0x00
	bne _0801E89C
	str r0, [r7, #0x50]
	ldr r0, _0801E8BC @ =0x0300034C
	ldr r1, _0801E8C0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	lsls r1, r1, #0x06
	ldrb r2, [r7, #0x12]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x12]
_0801E89C:
	ldr r0, [r7, #0x48]
	cmp r0, #0x00
	beq _0801E8AA
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0801E8AA
	b _0801EE80
_0801E8AA:
	ldr r2, [r7, #0x44]
	cmp r2, #0x00
	beq _0801E8C4
	ldrb r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0801E8B8
	b _0801EE80
_0801E8B8:
	b _0801E916
	.byte 0x00, 0x00
_0801E8BC: .4byte 0x0300034C
_0801E8C0: .4byte 0x00000888
_0801E8C4:
	ldrb r0, [r7, #0x12]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	beq _0801E912
	cmp r1, #0x40
	bne _0801E900
	ldr r4, [r7, #0x4C]
	ldrh r1, [r7, #0x2E]
	ldr r0, _0801E8E8 @ =0x06010000
	adds r3, r1, r0
	ldrb r1, [r7, #0x10]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801E8EC
	ldrh r2, [r7, #0x30]
	b _0801E8F2
_0801E8E8: .4byte 0x06010000
_0801E8EC:
	ldrh r0, [r7, #0x28]
	lsls r0, r0, #0x17
	lsrs r2, r0, #0x12
_0801E8F2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801E900:
	ldrb r2, [r7, #0x12]
	lsrs r1, r2, #0x06
	subs r1, #0x01
	lsls r1, r1, #0x06
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x12]
	ldr r2, [r7, #0x44]
_0801E912:
	cmp r2, #0x00
	beq _0801E91A
_0801E916:
	movs r0, #0x00
	strh r0, [r7, #0x30]
_0801E91A:
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0801E926
	b _0801EE80
_0801E926:
	ldrb r0, [r7, #0x13]
	movs r1, #0x03
	ands r1, r0
	adds r3, r7, #0x0
	adds r3, #0x29
	str r3, [sp, #0x048]
	mov r4, sp
	adds r4, #0x20
	str r4, [sp, #0x050]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x04C]
	cmp r1, #0x00
	beq _0801E9B8
	cmp r1, #0x01
	bne _0801E9A0
	movs r6, #0x00
	ldrh r4, [r7, #0x14]
	movs r2, #0x00
	lsrs r0, r0, #0x04
	cmp r2, r0
	bcs _0801E9A0
	ldr r0, _0801E9E0 @ =0x0300034C
	mov r9, r0
_0801E956:
	movs r1, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	lsls r5, r2, #0x05
	ldr r3, [r7, #0x54]
	adds r2, #0x01
	mov r8, r2
	cmp r0, #0x00
	beq _0801E978
_0801E96A:
	adds r6, #0x01
	asrs r4, r4, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801E96A
_0801E978:
	adds r0, r3, r5
	lsls r1, r6, #0x05
	ldr r2, _0801E9E4 @ =0x02000280
	adds r1, r1, r2
	ldr r2, _0801E9E8 @ =0x04000008
	bl CpuSet
	movs r0, #0x01
	lsls r0, r6
	mov r3, r9
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r6, #0x01
	asrs r4, r4, #0x01
	mov r2, r8
	ldrb r0, [r7, #0x13]
	lsrs r0, r0, #0x04
	cmp r2, r0
	bcc _0801E956
_0801E9A0:
	ldrb r2, [r7, #0x13]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1E
	subs r1, #0x01
	movs r0, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r7, #0x13]
	ldr r2, [r7, #0x44]
_0801E9B8:
	ldrb r0, [r7, #0x10]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1B
	str r0, [sp, #0x034]
	ldrh r1, [r7, #0x10]
	ldr r0, _0801E9EC @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r7, #0x10]
	cmp r2, #0x00
	beq _0801E9F0
	adds r0, r7, #0x0
	adds r0, #0x22
	ldrb r1, [r0, #0x00]
	adds r0, #0x04
	ldrb r0, [r0, #0x00]
	muls r0, r1
	adds r0, #0x01
	adds r2, r2, r0
	str r2, [sp, #0x038]
	b _0801E9F4
_0801E9E0: .4byte 0x0300034C
_0801E9E4: .4byte 0x02000280
_0801E9E8: .4byte 0x04000008
_0801E9EC: .4byte 0xFFFFFC3F
_0801E9F0:
	movs r4, #0x00
	str r4, [sp, #0x038]
_0801E9F4:
	ldr r0, [r7, #0x40]
	mov r9, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x01
	add r9, r1
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	bne _0801EA08
	b _0801EBF4
_0801EA08:
	movs r0, #0x7F
	ands r3, r0
	ldr r2, [sp, #0x048]
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801EA1A
	b _0801EBC8
_0801EA1A:
	ldr r2, _0801EBA8 @ =0x0300034C
	ldr r4, _0801EBAC @ =0x00000888
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r4, [sp, #0x034]
	lsls r1, r4, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	adds r5, r0, #0x6
	cmp r3, #0x00
	bne _0801EA3A
	b _0801EBEC
_0801EA3A:
	ldr r1, _0801EBB0 @ =0x0819832C
	ldr r0, _0801EBB4 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r10, r3
_0801EA44:
	mov r0, r9
	ldrb r1, [r0, #0x02]
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r4, #0x04
	ldsh r0, [r7, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0801EA7A
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801EA7A:
	ldr r6, _0801EBBC @ =0xFFFF0000
	ldr r0, [sp, #0x018]
	ands r0, r6
	orrs r0, r2
	str r0, [sp, #0x018]
	mov r0, r9
	ldrb r1, [r0, #0x04]
	ldrb r0, [r0, #0x05]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r4, #0x06
	ldsh r0, [r7, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r3, [r7, #0x11]
	movs r0, #0x80
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _0801EABE
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801EABE:
	lsls r2, r2, #0x10
	ldr r1, _0801EBC0 @ =0x0000FFFF
	ldr r0, [sp, #0x018]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x018]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _0801EAE2
	lsls r0, r1, #0x10
	negs r0, r0
	lsrs r1, r0, #0x10
_0801EAE2:
	cmp r4, #0x00
	beq _0801EAEC
	lsls r0, r1, #0x10
	negs r0, r0
	lsrs r1, r0, #0x10
_0801EAEC:
	ldrh r2, [r7, #0x0C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r0, sp, #0x018
	ldr r1, [r0, #0x04]
	ands r1, r6
	orrs r1, r2
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	movs r2, #0x01
	movs r3, #0x08
	bl sub_81DA6A8
	movs r1, #0x08
	ldsh r4, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x11
	asrs r6, r2, #0x10
	cmp r4, r6
	beq _0801EB42
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x00]
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x10
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x10]
_0801EB42:
	movs r2, #0x0A
	ldsh r4, [r7, r2]
	cmp r4, r6
	beq _0801EB72
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x08
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x08]
	ldr r3, _0801EBB8 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	movs r1, #0x18
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x18]
_0801EB72:
	adds r5, #0x20
	ldr r2, [sp, #0x034]
	adds r2, #0x01
	str r2, [sp, #0x034]
	ldrh r2, [r7, #0x10]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x06
	ldr r3, _0801EBC4 @ =0xFFFFFC3F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #0x10]
	movs r4, #0x01
	negs r4, r4
	add r10, r4
	movs r0, #0x06
	add r9, r0
	mov r1, r10
	cmp r1, #0x00
	beq _0801EBA4
	b _0801EA44
_0801EBA4:
	b _0801EBEC
	.byte 0x00, 0x00
_0801EBA8: .4byte 0x0300034C
_0801EBAC: .4byte 0x00000888
_0801EBB0: .4byte 0x0819832C
_0801EBB4: .4byte 0x08198220
_0801EBB8: .4byte 0x03001038
_0801EBBC: .4byte 0xFFFF0000
_0801EBC0: .4byte 0x0000FFFF
_0801EBC4: .4byte 0xFFFFFC3F
_0801EBC8:
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x01
	add r9, r0
	ldr r2, [sp, #0x034]
	adds r2, r2, r3
	str r2, [sp, #0x034]
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, r1, r3
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801EE94 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801EBEC:
	mov r4, r9
	ldrb r3, [r4, #0x00]
	movs r0, #0x01
	add r9, r0
_0801EBF4:
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r4, #0x01
	add r9, r4
	mov r0, r9
	str r0, [sp, #0x020]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x02C]
	str r2, [r7, #0x34]
	ldr r0, _0801EE98 @ =0x03000D58
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [sp, #0x038]
	str r4, [sp, #0x000]
	ldr r0, [sp, #0x04C]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x034]
	str r2, [sp, #0x008]
	ldr r4, [sp, #0x030]
	str r4, [sp, #0x00C]
	ldr r4, [r1, #0x00]
	ldr r0, [sp, #0x02C]
	adds r1, r7, #0x0
	ldr r2, [sp, #0x050]
	bl _call_via_r4
	str r0, [sp, #0x02C]
	ldr r0, [sp, #0x020]
	mov r9, r0
	ldr r2, [sp, #0x048]
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801EC40
	b _0801ED6C
_0801EC40:
	ldr r1, _0801EE9C @ =0x0300034C
	ldr r3, _0801EEA0 @ =0x00000888
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r1, #0x86
	adds r0, r0, r1
	str r0, [sp, #0x03C]
	movs r4, #0x00
	mov r10, r4
	ldr r1, _0801EEA4 @ =0x0819832C
	ldr r0, _0801EEA8 @ =0x08198220
	subs r6, r1, r0
_0801EC5E:
	ldr r2, [sp, #0x04C]
	add r2, r10
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0801ED60
	adds r0, r1, #0x0
	lsls r0, r0, #0x05
	ldr r1, [sp, #0x03C]
	adds r5, r1, r0
	ldrh r2, [r7, #0x04]
	movs r3, #0x04
	ldsh r1, [r7, r3]
	movs r4, #0x80
	lsls r4, r4, #0x01
	mov r8, r4
	cmp r1, r8
	beq _0801EC98
	ldr r0, _0801EEAC @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r0, #0x80
	lsls r0, r0, #0x09
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801EC98:
	movs r0, #0x01
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801ECA8
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801ECA8:
	ldr r4, _0801EEB0 @ =0xFFFF0000
	ldr r0, [sp, #0x024]
	ands r0, r4
	orrs r0, r2
	str r0, [sp, #0x024]
	ldrh r2, [r7, #0x06]
	movs r3, #0x06
	ldsh r1, [r7, r3]
	cmp r1, r8
	beq _0801ECCE
	ldr r0, _0801EEAC @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r0, #0x80
	lsls r0, r0, #0x09
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801ECCE:
	movs r0, #0x02
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801ECDE
	lsls r0, r2, #0x10
	negs r0, r0
	lsrs r2, r0, #0x10
_0801ECDE:
	lsls r2, r2, #0x10
	ldr r1, _0801EEB4 @ =0x0000FFFF
	ldr r0, [sp, #0x024]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x024]
	ldrh r2, [r7, #0x0C]
	add r0, sp, #0x024
	ldr r1, [r0, #0x04]
	ands r1, r4
	orrs r1, r2
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	movs r2, #0x01
	movs r3, #0x08
	bl sub_81DA6A8
	movs r2, #0x08
	ldsh r4, [r7, r2]
	cmp r4, r8
	beq _0801ED30
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x00]
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x10
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x10]
_0801ED30:
	movs r2, #0x0A
	ldsh r4, [r7, r2]
	cmp r4, r8
	beq _0801ED60
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x08
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x08]
	ldr r3, _0801EEAC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x18
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	strh r0, [r5, #0x18]
_0801ED60:
	movs r2, #0x01
	add r10, r2
	mov r3, r10
	cmp r3, #0x03
	bgt _0801ED6C
	b _0801EC5E
_0801ED6C:
	ldr r4, [sp, #0x038]
	cmp r4, #0x00
	bne _0801ED74
	b _0801EE80
_0801ED74:
	ldr r0, _0801EE9C @ =0x0300034C
	ldr r1, _0801EEA0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	mov r5, r9
	cmp r0, #0x00
	beq _0801ED88
	ldr r5, [r7, #0x58]
_0801ED88:
	movs r2, #0x00
	str r2, [sp, #0x040]
	ldr r3, [sp, #0x048]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r8, r0
	cmp r5, #0x00
	beq _0801EE64
	ldrb r4, [r5, #0x00]
	str r4, [sp, #0x044]
	adds r5, #0x01
	ldrh r6, [r7, #0x2E]
	cmp r2, r4
	bge _0801EE64
	mov r10, r4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _0801EDEC
	ldrb r2, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x08
	orrs r2, r1
	ldrb r0, [r5, #0x02]
	lsls r4, r0, #0x05
	mov r0, r8
	cmp r0, #0x00
	bne _0801EDDC
	lsls r1, r2, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r2, _0801EEB8 @ =0x06010000
	adds r1, r6, r2
	ldr r3, [sp, #0x040]
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801EDDC:
	adds r6, r6, r4
	str r4, [sp, #0x040]
	ldr r4, [sp, #0x044]
	subs r4, #0x01
	mov r10, r4
	adds r5, #0x03
	cmp r4, #0x00
	beq _0801EE64
_0801EDEC:
	ldrb r3, [r5, #0x00]
	ldrb r0, [r5, #0x01]
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x08
	orrs r3, r1
	ldrb r0, [r5, #0x02]
	lsls r2, r0, #0x05
	adds r4, r2, #0x0
	mov r0, r8
	cmp r0, #0x00
	bne _0801EE18
	lsls r1, r3, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r3, _0801EEB8 @ =0x06010000
	adds r1, r6, r3
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0801EE18:
	adds r6, r6, r4
	ldr r0, [sp, #0x040]
	adds r0, r0, r4
	str r0, [sp, #0x040]
	adds r2, r5, #0x3
	ldrb r3, [r5, #0x03]
	ldrb r1, [r2, #0x01]
	movs r0, #0x03
	ands r0, r1
	lsls r0, r0, #0x08
	orrs r3, r0
	ldrb r0, [r2, #0x02]
	lsls r4, r0, #0x05
	mov r1, r8
	cmp r1, #0x00
	bne _0801EE4E
	lsls r1, r3, #0x05
	ldr r0, [r7, #0x4C]
	adds r0, r0, r1
	ldr r2, _0801EEB8 @ =0x06010000
	adds r1, r6, r2
	mov r3, r8
	str r3, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x20
	bl sub_8018218
_0801EE4E:
	adds r6, r6, r4
	ldr r0, [sp, #0x040]
	adds r0, r0, r4
	str r0, [sp, #0x040]
	movs r1, #0x02
	negs r1, r1
	add r10, r1
	adds r5, #0x06
	mov r2, r10
	cmp r2, #0x00
	bne _0801EDEC
_0801EE64:
	add r3, sp, #0x040
	ldrh r3, [r3, #0x00]
	strh r3, [r7, #0x30]
	ldr r0, _0801EE9C @ =0x0300034C
	ldr r4, _0801EEA0 @ =0x00000888
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	beq _0801EE7E
	mov r1, r9
_0801EE7E:
	str r1, [r7, #0x58]
_0801EE80:
	ldr r0, [sp, #0x02C]
	add sp, #0x054
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0801EE94: .4byte 0xFFFFFC3F
_0801EE98: .4byte 0x03000D58
_0801EE9C: .4byte 0x0300034C
_0801EEA0: .4byte 0x00000888
_0801EEA4: .4byte 0x0819832C
_0801EEA8: .4byte 0x08198220
_0801EEAC: .4byte 0x03001038
_0801EEB0: .4byte 0xFFFF0000
_0801EEB4: .4byte 0x0000FFFF
_0801EEB8: .4byte 0x06010000
