	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x04
	mov r9, r1
	ldr r2, [sp, #0x00C]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x03
	movs r6, #0x96
	lsls r6, r6, #0x08
	str r6, [sp, #0x018]
	movs r7, #0x14
	adds r7, r7, r0
	mov r8, r7
	ldr r1, [sp, #0x008]
	adds r1, #0x08
	str r1, [sp, #0x010]
	lsls r2, r2, #0x0C
	str r2, [sp, #0x014]
	adds r4, r0, r1
	adds r5, r4, #0x0
	adds r5, #0x10
	add r1, r8
	str r1, [sp, #0x01C]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816F3E8
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	beq _0816F3E8
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	mov r6, r10
	strb r6, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldr r7, [sp, #0x014]
	movs r6, #0xE8
	lsls r6, r6, #0x06
	adds r3, r7, r6
	bl sub_8163978
	ldr r0, [r4, #0x10]
	ldr r7, [sp, #0x01C]
	str r0, [r7, #0x00]
	adds r0, #0x50
	mov r1, r10
	strh r1, [r0, #0x00]
	mov r2, r10
	str r2, [r4, #0x10]
	movs r6, #0x01
	mov r10, r6
_0816F3E8:
	ldr r7, [sp, #0x018]
	ldr r0, _0816F400 @ =0xFFFFF000
	adds r7, r7, r0
	str r7, [sp, #0x018]
	movs r1, #0x04
	negs r1, r1
	add r8, r1
	subs r5, #0x04
	movs r2, #0x01
	negs r2, r2
	b _0816F4AC
	.byte 0x00, 0x00
_0816F400: .4byte 0xFFFFF000
_0816F404:
	ldr r7, [sp, #0x010]
	add r7, r8
	str r7, [sp, #0x01C]
	ldr r4, [r7, #0x00]
	cmp r4, #0x00
	bne _0816F446
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _0816F446
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r4, [r0, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldr r6, [sp, #0x014]
	movs r7, #0xE8
	lsls r7, r7, #0x06
	adds r3, r6, r7
	bl sub_8163978
	ldr r1, [r5, #0x00]
	ldr r0, [sp, #0x01C]
	str r1, [r0, #0x00]
	movs r0, #0x04
	mov r2, r9
	subs r0, r0, r2
	adds r1, #0x50
	strh r0, [r1, #0x00]
	str r4, [r5, #0x00]
	movs r6, #0x01
	add r10, r6
_0816F446:
	ldr r7, [sp, #0x018]
	ldr r0, _0816F4DC @ =0xFFFFF000
	adds r1, r7, r0
	mov r0, r8
	subs r0, #0x04
	subs r5, #0x04
	mov r2, r9
	subs r2, #0x01
	str r2, [sp, #0x020]
	ldr r6, [sp, #0x010]
	adds r0, r6, r0
	str r0, [sp, #0x01C]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0816F498
	ldr r2, [r5, #0x00]
	cmp r2, #0x00
	beq _0816F498
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r4, [r0, #0x00]
	adds r0, r2, #0x0
	movs r2, #0x00
	ldr r7, [sp, #0x014]
	movs r6, #0xE8
	lsls r6, r6, #0x06
	adds r3, r7, r6
	bl sub_8163978
	ldr r1, [r5, #0x00]
	ldr r7, [sp, #0x01C]
	str r1, [r7, #0x00]
	movs r0, #0x04
	ldr r2, [sp, #0x020]
	subs r0, r0, r2
	adds r1, #0x50
	strh r0, [r1, #0x00]
	str r4, [r5, #0x00]
	movs r6, #0x01
	add r10, r6
_0816F498:
	ldr r7, [sp, #0x018]
	ldr r0, _0816F4E0 @ =0xFFFFE000
	adds r7, r7, r0
	str r7, [sp, #0x018]
	movs r1, #0x08
	negs r1, r1
	add r8, r1
	subs r5, #0x04
	movs r2, #0x02
	negs r2, r2
_0816F4AC:
	add r9, r2
	mov r6, r9
	cmp r6, #0x00
	bge _0816F404
	mov r7, r10
	cmp r7, #0x00
	beq _0816F4E4
	ldr r0, [sp, #0x008]
	bl sub_8171DF0
	ldr r0, [sp, #0x00C]
	lsls r1, r0, #0x02
	ldr r0, [sp, #0x008]
	adds r0, #0xA8
	adds r0, r0, r1
	movs r1, #0x08
	str r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	movs r0, #0x05
	orrs r0, r1
	b _0816F502
	.byte 0x00, 0x00
_0816F4DC: .4byte 0xFFFFF000
_0816F4E0: .4byte 0xFFFFE000
_0816F4E4:
	ldr r0, [sp, #0x008]
	bl sub_8171DD4
	ldr r2, [sp, #0x00C]
	lsls r1, r2, #0x02
	ldr r0, [sp, #0x008]
	adds r0, #0xA8
	adds r0, r0, r1
	mov r6, r10
	str r6, [r0, #0x00]
	ldr r2, [sp, #0x008]
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	ldr r0, _0816F514 @ =0x0000FF80
	ands r0, r1
_0816F502:
	strh r0, [r2, #0x00]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0816F514: .4byte 0x0000FF80
