	.syntax unified
	.text

	thumb_func_start sub_807B8C8
sub_807B8C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8EA
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BA2A
_0807B8EA:
	ldrb r1, [r4, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8F6
	b _0807BA2A
_0807B8F6:
	ldr r0, _0807B914 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807B906
	b _0807BA2A
_0807B906:
	ldrh r0, [r4, #0x14]
	cmp r0, #0x00
	bne _0807B91E
	mov r2, r8
	str r0, [r2, #0x04]
	b _0807BA2A
	.byte 0x00, 0x00
_0807B914: .4byte 0x03000FD8
_0807B918:
	mov r7, r8
	str r4, [r7, #0x04]
	b _0807BA2A
_0807B91E:
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r1, r1, r7
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r6, #0x00
	ldrh r4, [r4, #0x14]
	movs r1, #0x01
	adds r0, r4, #0x0
	b _0807B954
_0807B94E:
	adds r6, #0x01
	adds r0, r4, #0x0
	asrs r0, r6
_0807B954:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807B94E
	movs r5, #0x00
	ldr r0, _0807BA3C @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	str r1, [sp, #0x008]
	movs r3, #0x01
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r2, r2, r1
	mov r12, r2
	movs r2, #0x00
_0807B972:
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r5
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B99C
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B99C
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B99C:
	adds r1, r2, #0x0
	adds r1, #0x1C
	adds r0, r5, #0x1
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r0
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B9CC
	mov r7, r12
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B9CC
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B9CC:
	adds r2, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _0807B972
	movs r4, #0x00
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	mov r2, r10
	lsls r7, r2, #0x10
	adds r3, r6, #0x0
	adds r3, #0x10
	cmp r0, #0x00
	beq _0807B9FA
	movs r5, #0x01
_0807B9EE:
	adds r4, #0x01
	adds r0, r1, #0x0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0x00
	bne _0807B9EE
_0807B9FA:
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	lsls r0, r4
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r7, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BA40 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r2, r8
	str r5, [r2, #0x04]
_0807BA2A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BA3C: .4byte 0x03000FD8
_0807BA40: .4byte 0x0000FFFF
