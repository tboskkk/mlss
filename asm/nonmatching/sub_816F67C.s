	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r2, #0x04
	mov r10, r2
	lsls r3, r1, #0x02
	str r3, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x08
	adds r4, r3, r0
	adds r6, r4, #0x0
	adds r6, #0x60
	movs r0, #0x8A
	lsls r0, r0, #0x08
	mov r9, r0
	lsls r2, r1, #0x0C
	str r2, [sp, #0x008]
	movs r0, #0x05
	subs r0, r0, r1
	str r0, [sp, #0x00C]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bne _0816F6EA
	ldr r1, [r4, #0x60]
	cmp r1, #0x00
	beq _0816F6EA
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	mov r3, r8
	strb r3, [r0, #0x00]
	adds r0, r1, #0x0
	movs r3, #0x8C
	lsls r3, r3, #0x07
	adds r1, r2, r3
	movs r2, #0x00
	mov r3, r9
	bl sub_8163978
	ldr r0, [r4, #0x60]
	str r0, [r6, #0x18]
	adds r0, #0x50
	mov r1, sp
	ldrh r1, [r1, #0x0C]
	strh r1, [r0, #0x00]
	mov r2, r8
	str r2, [r4, #0x60]
	movs r3, #0x01
	mov r8, r3
_0816F6EA:
	subs r6, #0x18
	ldr r0, _0816F7AC @ =0xFFFFF000
	add r9, r0
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r2, r10
	cmp r2, #0x00
	blt _0816F788
_0816F6FC:
	ldr r4, [r6, #0x18]
	cmp r4, #0x00
	bne _0816F734
	ldr r1, [r6, #0x00]
	cmp r1, #0x00
	beq _0816F734
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r4, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r3, [sp, #0x008]
	movs r2, #0x8C
	lsls r2, r2, #0x07
	adds r1, r3, r2
	movs r2, #0x00
	mov r3, r9
	bl sub_8163978
	ldr r0, [r6, #0x00]
	str r0, [r6, #0x18]
	adds r0, #0x50
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r0, #0x00]
	str r4, [r6, #0x00]
	movs r0, #0x01
	add r8, r0
_0816F734:
	adds r4, r6, #0x0
	subs r4, #0x18
	ldr r1, _0816F7AC @ =0xFFFFF000
	add r1, r9
	mov r12, r1
	ldr r5, [r4, #0x18]
	cmp r5, #0x00
	bne _0816F776
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0816F776
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r5, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r2, [sp, #0x008]
	movs r3, #0x8C
	lsls r3, r3, #0x07
	adds r1, r2, r3
	movs r2, #0x00
	mov r3, r12
	bl sub_8163978
	ldr r0, [r4, #0x00]
	str r0, [r4, #0x18]
	adds r0, #0x50
	mov r1, sp
	ldrh r1, [r1, #0x0C]
	strh r1, [r0, #0x00]
	str r5, [r4, #0x00]
	movs r2, #0x01
	add r8, r2
_0816F776:
	subs r6, #0x30
	ldr r3, _0816F7B0 @ =0xFFFFE000
	add r9, r3
	movs r0, #0x02
	negs r0, r0
	add r10, r0
	mov r1, r10
	cmp r1, #0x00
	bge _0816F6FC
_0816F788:
	mov r2, r8
	cmp r2, #0x00
	beq _0816F7B4
	adds r0, r7, #0x0
	bl sub_8171DF0
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	movs r1, #0x08
	str r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	movs r0, #0x28
	orrs r0, r1
	b _0816F7D0
_0816F7AC: .4byte 0xFFFFF000
_0816F7B0: .4byte 0xFFFFE000
_0816F7B4:
	adds r0, r7, #0x0
	bl sub_8171DD4
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	ldr r0, _0816F7E4 @ =0x0000FF80
	ands r0, r1
_0816F7D0:
	strh r0, [r2, #0x00]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816F7E4: .4byte 0x0000FF80
