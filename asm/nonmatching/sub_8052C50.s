	.syntax unified
	.text

	thumb_func_start sub_8052C50
sub_8052C50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	str r1, [sp, #0x018]
	cmp r1, #0x01
	bgt _08052C8C
	ldr r4, _08052CA0 @ =0x03001034
	ldr r1, [r0, #0x2C]
	movs r2, #0xE1
	lsls r2, r2, #0x08
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	mov r0, r8
	ldr r1, [r0, #0x30]
	movs r2, #0xF0
	lsls r2, r2, #0x04
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, [sp, #0x018]
	cmp r1, #0x01
	bne _08052C8C
	b _08052EEA
_08052C8C:
	movs r2, #0x00
	mov r9, r2
	ldr r3, [sp, #0x018]
	cmp r3, #0x00
	bne _08052C98
	b _08052ED2
_08052C98:
	subs r3, #0x02
	mov r9, r3
	b _08052ED2
	.byte 0x00, 0x00
_08052CA0: .4byte 0x03001034
_08052CA4:
	mov r4, r9
	lsrs r0, r4, #0x1F
	add r0, r9
	asrs r7, r0, #0x01
	movs r5, #0x00
	mov r10, r5
	ldr r2, _08052E48 @ =0x083A292C
	lsls r0, r7, #0x03
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	lsls r1, r7, #0x01
	adds r1, #0x01
	lsls r0, r1, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	ldr r3, _08052E4C @ =0x083A2900
	lsls r6, r7, #0x02
	adds r0, r6, r3
	ldrh r0, [r0, #0x00]
	subs r0, #0x04
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x01
	adds r3, r1, r3
	ldr r2, _08052E50 @ =0x083A290C
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x028]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r1, r1, #0x02
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x024]
	movs r2, #0x01
	adds r1, r4, #0x0
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r3, r0, #0x1F
	movs r0, #0x04
	ands r3, r0
	mov r5, r9
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _08052D16
	b _08052E58
_08052D16:
	mov r1, r8
	ldr r0, [r1, #0x38]
	adds r1, r6, r7
	lsls r2, r1, #0x04
	subs r2, r2, r1
	lsls r2, r2, #0x08
	mov r5, r8
	ldr r1, [r5, #0x2C]
	adds r1, r1, r2
	lsls r5, r4, #0x10
	asrs r2, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r4, r10
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x02
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	mov r4, r10
	str r4, [sp, #0x014]
	bl sub_8199D78
	mov r1, r8
	ldr r0, [r1, #0x38]
	ldr r3, [sp, #0x02C]
	ldr r4, [sp, #0x024]
	adds r2, r3, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, [sp, #0x01C]
	adds r3, #0x02
	movs r1, #0x00
	bl sub_8199D5C
	adds r4, r6, #0x0
	mov r6, r9
	adds r6, #0x01
	str r6, [sp, #0x034]
_08052D6A:
	mov r1, r8
	ldr r0, [r1, #0x38]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08052D88
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _08052D88
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08052D88
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_08052D88:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08052D6A
	adds r0, r4, r7
	lsls r0, r0, #0x08
	mov r2, r8
	ldr r1, [r2, #0x30]
	adds r4, r1, r0
	ldr r6, _08052E54 @ =0x0000E001
	movs r2, #0x00
	mov r10, r5
	mov r3, r10
	asrs r3, r3, #0x10
	mov r12, r3
	movs r0, #0x1E
	subs r0, r0, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	lsls r7, r0, #0x01
	adds r5, r7, #0x4
	str r5, [sp, #0x030]
_08052DBA:
	adds r4, r4, r7
	adds r2, #0x01
	mov r9, r2
	mov r0, r12
	cmp r0, #0x00
	ble _08052E3A
	mov r1, r10
	asrs r5, r1, #0x10
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08052E0A
	cmp r1, #0x03
	bge _08052DF8
	cmp r1, #0x02
	bge _08052DEA
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08052DEA:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08052DF8:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
	cmp r5, #0x00
	beq _08052E3A
_08052E0A:
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
	bne _08052E0A
_08052E3A:
	ldr r2, [sp, #0x030]
	adds r4, r4, r2
	mov r2, r9
	cmp r2, #0x0F
	ble _08052DBA
	b _08052ECE
	.byte 0x00, 0x00
_08052E48: .4byte dword_83A292C @ =0x083A292C
_08052E4C: .4byte 0x083A2900
_08052E50: .4byte dword_83A290C @ =0x083A290C
_08052E54: .4byte 0x0000E001
_08052E58:
	mov r1, r8
	ldr r0, [r1, #0x38]
	adds r1, r6, r7
	lsls r2, r1, #0x04
	subs r2, r2, r1
	lsls r2, r2, #0x08
	mov r6, r8
	ldr r1, [r6, #0x2C]
	adds r1, r1, r2
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x02
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	bl sub_8199D78
	ldr r0, [r6, #0x38]
	ldr r1, [sp, #0x028]
	ldr r3, [sp, #0x024]
	adds r2, r1, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, [sp, #0x020]
	adds r3, #0x02
	movs r1, #0x00
	bl sub_8199D5C
	mov r4, r9
	adds r4, #0x01
	str r4, [sp, #0x034]
_08052EA4:
	mov r5, r8
	ldr r0, [r5, #0x38]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08052EC2
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _08052EC2
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08052EC2
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_08052EC2:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08052EA4
_08052ECE:
	ldr r6, [sp, #0x034]
	mov r9, r6
_08052ED2:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	beq _08052EE2
	subs r0, #0x02
	cmp r9, r0
	bgt _08052EE0
	b _08052CA4
_08052EE0:
	b _08052EEA
_08052EE2:
	mov r1, r9
	cmp r1, #0x05
	bgt _08052EEA
	b _08052CA4
_08052EEA:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
