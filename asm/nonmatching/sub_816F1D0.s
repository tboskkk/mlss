	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	mov r10, r0
	str r1, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	movs r1, #0x01
	mov r9, r1
	ldr r2, [sp, #0x008]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x03
	movs r3, #0x8C
	lsls r3, r3, #0x07
	str r3, [sp, #0x018]
	mov r8, r0
	mov r6, r10
	adds r6, #0x08
	str r6, [sp, #0x010]
	lsls r7, r2, #0x0C
	str r7, [sp, #0x014]
	adds r4, r6, #0x0
	add r4, r8
	adds r5, r4, #0x4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0816F242
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0816F242
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	mov r2, sp
	ldrb r2, [r2, #0x0C]
	strb r2, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	movs r6, #0xE8
	lsls r6, r6, #0x06
	adds r3, r7, r6
	bl sub_8163978
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
	adds r0, #0x50
	movs r1, #0x05
	strh r1, [r0, #0x00]
	ldr r7, [sp, #0x00C]
	str r7, [r4, #0x04]
	movs r0, #0x01
	str r0, [sp, #0x00C]
_0816F242:
	ldr r1, [sp, #0x018]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	str r1, [sp, #0x018]
	movs r3, #0x04
	add r8, r3
	adds r5, #0x04
	movs r6, #0x01
	add r9, r6
	mov r7, r9
	cmp r7, #0x05
	bgt _0816F310
	adds r4, r5, #0x0
_0816F25E:
	ldr r0, [sp, #0x010]
	add r0, r8
	str r0, [sp, #0x01C]
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0816F2A2
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0816F2A2
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r5, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldr r6, [sp, #0x014]
	movs r7, #0xE8
	lsls r7, r7, #0x06
	adds r3, r6, r7
	bl sub_8163978
	ldr r1, [r4, #0x00]
	ldr r0, [sp, #0x01C]
	str r1, [r0, #0x00]
	movs r0, #0x06
	mov r2, r9
	subs r0, r0, r2
	adds r1, #0x50
	strh r0, [r1, #0x00]
	str r5, [r4, #0x00]
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
_0816F2A2:
	ldr r6, [sp, #0x018]
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r1, r6, r7
	mov r0, r8
	adds r0, #0x04
	mov r2, r9
	adds r2, #0x01
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	str r0, [sp, #0x01C]
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0816F2F6
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0816F2F6
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r5, [r0, #0x00]
	adds r0, r2, #0x0
	movs r2, #0x00
	ldr r6, [sp, #0x014]
	movs r7, #0xE8
	lsls r7, r7, #0x06
	adds r3, r6, r7
	bl sub_8163978
	ldr r1, [r4, #0x04]
	ldr r0, [sp, #0x01C]
	str r1, [r0, #0x00]
	movs r0, #0x06
	ldr r2, [sp, #0x020]
	subs r0, r0, r2
	adds r1, #0x50
	strh r0, [r1, #0x00]
	str r5, [r4, #0x04]
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
_0816F2F6:
	ldr r6, [sp, #0x018]
	movs r7, #0x80
	lsls r7, r7, #0x06
	adds r6, r6, r7
	str r6, [sp, #0x018]
	movs r0, #0x08
	add r8, r0
	adds r4, #0x08
	movs r1, #0x02
	add r9, r1
	mov r2, r9
	cmp r2, #0x05
	ble _0816F25E
_0816F310:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	beq _0816F336
	mov r0, r10
	bl sub_8171DF0
	ldr r6, [sp, #0x008]
	lsls r1, r6, #0x02
	mov r0, r10
	adds r0, #0xA8
	adds r0, r0, r1
	movs r1, #0x08
	str r1, [r0, #0x00]
	mov r2, r10
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	movs r0, #0x03
	orrs r0, r1
	b _0816F354
_0816F336:
	mov r0, r10
	bl sub_8171DD4
	ldr r7, [sp, #0x008]
	lsls r1, r7, #0x02
	mov r0, r10
	adds r0, #0xA8
	adds r0, r0, r1
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x00]
	mov r2, r10
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	ldr r0, _0816F368 @ =0x0000FF80
	ands r0, r1
_0816F354:
	strh r0, [r2, #0x00]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816F368: .4byte 0x0000FF80
