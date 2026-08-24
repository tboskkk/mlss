	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	adds r0, r5, #0x0
	adds r0, #0x58
	str r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r5, r1
	str r1, [sp, #0x020]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	movs r3, #0xDA
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	mov r10, r0
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _0813FFB6
	ldr r1, _0813FFCC @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	mov r8, r0
	adds r3, #0x90
	adds r0, r5, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	adds r7, r0, r1
	ldr r2, _0813FFD0 @ =0x03001038
	ldr r0, _0813FFD4 @ =0x0819832C
	ldr r1, _0813FFD8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r3, #0x2E
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	movs r6, #0x00
	mov r0, r10
	ldrb r0, [r0, #0x0B]
	cmp r6, r0
	bcs _0813FFB6
	add r4, sp, #0x004
_0813FF6C:
	lsls r3, r6, #0x13
	movs r1, #0xC0
	lsls r1, r1, #0x0C
	adds r3, r3, r1
	lsrs r3, r3, #0x10
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r8, r0
	blt _0813FFA8
	movs r3, #0x02
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	cmp r8, r0
	bgt _0813FFA8
	movs r1, #0x06
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r7, r0
	blt _0813FFA8
	movs r2, #0x04
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r7, r0
	ble _0814007E
_0813FFA8:
	adds r0, r6, #0x1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r3, r10
	ldrb r3, [r3, #0x0B]
	cmp r6, r3
	bcc _0813FF6C
_0813FFB6:
	mov r0, r9
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813FFDC
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _0813FFE8
	.byte 0x00, 0x00
_0813FFCC: .4byte 0x00000242
_0813FFD0: .4byte 0x03001038
_0813FFD4: .4byte 0x0819832C
_0813FFD8: .4byte 0x08198220
_0813FFDC:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813FFE8:
	lsls r0, r0, #0x02
	add r0, r9
	ldr r6, [r0, #0x28]
	ldr r0, [sp, #0x01C]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r4, r0, r1
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _081400B8
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r2, #0x08
	ldsh r3, [r0, r2]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140078
	mov r2, r10
	ldrh r0, [r2, #0x08]
	cmp r0, #0x00
	beq _0814006C
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_8142A10
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814006C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	ldrh r0, [r0, #0x28]
	ldr r2, [sp, #0x01C]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldr r0, _08140064 @ =0x0813B1E9
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	ldr r0, _08140068 @ =0x0813FDF5
	str r0, [r1, #0x0C]
	b _081400F0
_08140064: .4byte sub_813B1E8
_08140068: .4byte sub_813FDF4
_0814006C:
	ldr r0, _08140074 @ =0x08140109
	ldr r2, [sp, #0x018]
	str r0, [r2, #0x00]
	b _081400F0
_08140074: .4byte sub_8140108
_08140078:
	ldr r3, [sp, #0x024]
	ldrh r0, [r3, #0x1A]
	b _081400BA
_0814007E:
	ldr r0, _081400B0 @ =0x00000242
	adds r3, r5, r0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	ldr r0, [r5, #0x0C]
	subs r0, r0, r1
	str r0, [r5, #0x0C]
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldrh r0, [r3, #0x00]
	negs r0, r0
	strh r0, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	negs r0, r0
	strh r0, [r2, #0x00]
	ldr r0, _081400B4 @ =0x0813FDF5
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	b _081400F0
_081400B0: .4byte 0x00000242
_081400B4: .4byte sub_813FDF4
_081400B8:
	subs r0, #0x01
_081400BA:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081400F0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x020]
	adds r0, r0, r2
	ldrh r0, [r0, #0x28]
	ldr r3, [sp, #0x01C]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _08140100 @ =0x0813B1E9
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
	ldr r0, _08140104 @ =0x0813FDF5
	str r0, [r3, #0x0C]
_081400F0:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08140100: .4byte sub_813B1E8
_08140104: .4byte sub_813FDF4
