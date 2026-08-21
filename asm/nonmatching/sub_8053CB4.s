	.syntax unified
	.text

	thumb_func_start sub_8053CB4
sub_8053CB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08053D54 @ =0x08CDC1C8
	str r0, [r7, #0x18]
	ldr r1, _08053D58 @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x54
	movs r0, #0x00
	strh r0, [r1, #0x00]
	bl sub_8017E34
	movs r0, #0xF0
	strb r0, [r7, #0x1C]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ldr r2, _08053D5C @ =0x081E26E4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ldr r2, _08053D60 @ =0x081E26EC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	ldr r0, _08053D64 @ =0x03000C84
	ldr r4, _08053D68 @ =0x083A0E94
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl CpuFastSet
	cmp r6, #0x00
	beq _08053D38
	adds r0, r6, #0x0
	bl free_heap_8018D9C
_08053D38:
	ldr r0, _08053D6C @ =0x0300034C
	ldr r1, _08053D70 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08053D7C
	ldr r0, _08053D74 @ =0x083A1BA0
	ldr r1, _08053D78 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	b _08053D86
_08053D54: .4byte 0x08CDC1C8
_08053D58: .4byte 0x02000050
_08053D5C: .4byte 0x081E26E4
_08053D60: .4byte 0x081E26EC
_08053D64: .4byte 0x03000C84
_08053D68: .4byte 0x083A0E94
_08053D6C: .4byte 0x0300034C
_08053D70: .4byte 0x00000888
_08053D74: .4byte 0x083A1BA0
_08053D78: .4byte 0x02000080
_08053D7C:
	ldr r0, _08053F5C @ =0x083A1D80
	ldr r1, _08053F60 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
_08053D86:
	ldr r1, _08053F60 @ =0x02000080
	ldr r2, _08053F64 @ =0x00007FFF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r1, _08053F68 @ =0x0300034C
	ldr r0, _08053F6C @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, _08053F70 @ =0x0819941C
	ldr r1, _08053F74 @ =0x08198784
	subs r0, r0, r1
	ldr r2, _08053F78 @ =0x081E26F4
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x2C]
	ldr r1, _08053F7C @ =0x0851F9E8
	bl sub_81994EC
	ldr r2, _08053F80 @ =0x081E26FC
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r7, #0x30]
	ldr r0, _08053F84 @ =0x0001001F
	ldr r2, _08053F88 @ =0x081E2704
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x20]
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08053F8C @ =0x081E270C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x28]
	movs r4, #0x00
	str r4, [sp, #0x018]
	ldr r1, _08053F90 @ =0x06004000
	ldr r2, _08053F94 @ =0x01000008
	add r0, sp, #0x018
	bl CpuFastSet
	ldr r0, _08053F98 @ =0x084E8A28
	ldr r5, [r0, #0x00]
	ldr r0, _08053F9C @ =0x083A2978
	ldrh r0, [r0, #0x00]
	mov r9, r0
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x24]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x02
	str r2, [sp, #0x00C]
	movs r2, #0x05
	str r2, [sp, #0x010]
	str r4, [sp, #0x014]
	mov r2, r9
	movs r3, #0x00
	bl sub_8199D78
	ldr r0, [r7, #0x30]
	adds r5, #0x02
	movs r1, #0x00
	movs r2, #0x48
	adds r3, r5, #0x0
	bl sub_8199D5C
_08053E26:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08053E42
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _08053E42
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08053E42
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_08053E42:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08053E26
	ldr r4, [r7, #0x28]
	ldr r6, _08053FA0 @ =0x0000E001
	movs r2, #0x00
	ldr r0, [r7, #0x24]
	str r0, [sp, #0x01C]
	movs r0, #0x1E
	mov r1, r9
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	lsls r0, r0, #0x01
	mov r8, r0
	movs r0, #0x04
	add r0, r8
	mov r10, r0
_08053E6E:
	add r4, r8
	adds r2, #0x01
	mov r12, r2
	mov r1, r9
	cmp r1, #0x00
	beq _08053EEC
	mov r5, r9
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08053EBC
	cmp r1, #0x03
	bge _08053EAA
	cmp r1, #0x02
	bge _08053E9C
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08053E9C:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08053EAA:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
	cmp r5, #0x00
	beq _08053EEC
_08053EBC:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r6, #0x0
	strh r1, [r4, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r3, r6, #0x0
	strh r2, [r4, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r6, #0x0
	strh r3, [r4, #0x04]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x06]
	adds r4, #0x08
	subs r5, #0x04
	cmp r5, #0x00
	bne _08053EBC
_08053EEC:
	add r4, r10
	mov r2, r12
	cmp r2, #0x0F
	ble _08053E6E
	ldr r1, _08053FA4 @ =0x06004020
	movs r2, #0x80
	lsls r2, r2, #0x05
	ldr r0, [sp, #0x01C]
	bl CpuFastSet
	ldr r0, [r7, #0x28]
	ldr r1, _08053FA8 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl CpuFastSet
	ldr r1, _08053FAC @ =0x02000008
	ldr r2, _08053FB0 @ =0x00000406
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08053FB4 @ =0x00001C02
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _08053FB8 @ =0x02000010
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_80540B0
	ldr r1, _08053FBC @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	ldr r0, _08053FC0 @ =0x02000054
	strh r4, [r0, #0x00]
	subs r1, #0x50
	movs r2, #0xCD
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08053F5C: .4byte 0x083A1D80
_08053F60: .4byte 0x02000080
_08053F64: .4byte 0x00007FFF
_08053F68: .4byte 0x0300034C
_08053F6C: .4byte 0x0000FFFF
_08053F70: .4byte 0x0819941C
_08053F74: .4byte 0x08198784
_08053F78: .4byte 0x081E26F4
_08053F7C: .4byte 0x0851F9E8
_08053F80: .4byte 0x081E26FC
_08053F84: .4byte 0x0001001F
_08053F88: .4byte 0x081E2704
_08053F8C: .4byte 0x081E270C
_08053F90: .4byte 0x06004000
_08053F94: .4byte 0x01000008
_08053F98: .4byte 0x084E8A28
_08053F9C: .4byte 0x083A2978
_08053FA0: .4byte 0x0000E001
_08053FA4: .4byte 0x06004020
_08053FA8: .4byte 0x06002000
_08053FAC: .4byte 0x02000008
_08053FB0: .4byte 0x00000406
_08053FB4: .4byte 0x00001C02
_08053FB8: .4byte 0x02000010
_08053FBC: .4byte 0x02000050
_08053FC0: .4byte 0x02000054
