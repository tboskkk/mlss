	.syntax unified
	.text

	thumb_func_start sub_807BA44
sub_807BA44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r3, [r0, #0x08]
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA66
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BBC2
_0807BA66:
	ldrb r1, [r3, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA72
	b _0807BBC2
_0807BA72:
	ldr r1, _0807BA90 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807BA82
	b _0807BBC2
_0807BA82:
	ldrh r0, [r3, #0x14]
	cmp r0, #0x00
	bne _0807BAD0
	mov r3, r8
	str r0, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BA90: .4byte 0x03000FD8
_0807BA94:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8115048
	ldr r1, _0807BAC8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r1, [sp, #0x008]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0807BACC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	bl sub_8114C1C
	mov r3, r8
	str r5, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BAC8: .4byte 0x03000FD8
_0807BACC: .4byte 0x0000FFFF
_0807BAD0:
	mov r4, r8
	ldr r2, [r4, #0x0C]
	movs r7, #0x00
	ldrh r3, [r3, #0x14]
	movs r1, #0x01
	adds r0, r3, #0x0
	b _0807BAE4
_0807BADE:
	adds r7, #0x01
	adds r0, r3, #0x0
	asrs r0, r7
_0807BAE4:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BADE
	movs r4, #0x00
	lsls r2, r2, #0x10
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	mov r12, r1
	movs r2, #0x01
	movs r6, #0x00
_0807BB02:
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB32
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r6, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB32
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB32:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, #0x01
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB68
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB68
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB68:
	adds r6, #0x38
	adds r4, #0x01
	cmp r4, #0x07
	ble _0807BB02
	movs r3, #0x00
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807BB8E
	movs r4, #0x01
_0807BB82:
	adds r3, #0x01
	adds r0, r1, #0x0
	asrs r0, r3
	ands r0, r4
	cmp r0, #0x00
	bne _0807BB82
_0807BB8E:
	ldr r4, _0807BBD4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r4, [sp, #0x008]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BBD8 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r0, r8
	str r5, [r0, #0x04]
_0807BBC2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BBD4: .4byte 0x03000FD8
_0807BBD8: .4byte 0x0000FFFF
