	.syntax unified
	.text

	thumb_func_start sub_8052EFC
sub_8052EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldr r4, _08053058 @ =0x03001034
	ldr r1, [r7, #0x2C]
	movs r2, #0x96
	lsls r2, r2, #0x07
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, [r7, #0x30]
	movs r2, #0xA0
	lsls r2, r2, #0x03
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	movs r4, #0x00
	ldr r2, _0805305C @ =0x083A2918
	ldr r3, _08053060 @ =0x083A291C
	ldrh r5, [r3, #0x02]
	ldr r0, _08053064 @ =0x084E8B18
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x2C]
	ldrh r6, [r2, #0x00]
	mov r8, r6
	movs r6, #0x00
	ldsh r2, [r2, r6]
	ldrb r3, [r3, #0x00]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x02
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	movs r4, #0x03
	str r4, [sp, #0x014]
	bl sub_8199D78
	ldr r0, [r7, #0x38]
	adds r5, #0x01
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r6, r9
	adds r6, #0x02
	movs r1, #0x00
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8199D5C
_08052F72:
	ldr r0, [r7, #0x38]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _08052F8E
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _08052F8E
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _08052F8E
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_08052F8E:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08052F72
	ldr r4, [r7, #0x30]
	ldr r6, _08053068 @ =0x0000E001
	movs r2, #0x00
	mov r0, r8
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x1E
	mov r1, r8
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	lsls r0, r0, #0x01
	mov r12, r0
	movs r0, #0x04
	add r0, r12
	mov r10, r0
_08052FC0:
	add r4, r12
	adds r7, r2, #0x1
	mov r1, r8
	cmp r1, #0x00
	ble _0805303E
	mov r0, r9
	asrs r5, r0, #0x10
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0805300E
	cmp r1, #0x03
	bge _08052FFC
	cmp r1, #0x02
	bge _08052FEE
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08052FEE:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_08052FFC:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
	cmp r5, #0x00
	beq _0805303E
_0805300E:
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
	bne _0805300E
_0805303E:
	add r4, r10
	adds r2, r7, #0x0
	cmp r2, #0x0F
	ble _08052FC0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08053058: .4byte 0x03001034
_0805305C: .4byte word_83A2918 @ =0x083A2918
_08053060: .4byte word_83A291C @ =0x083A291C
_08053064: .4byte dword_84E8B18 @ =0x084E8B18
_08053068: .4byte 0x0000E001
