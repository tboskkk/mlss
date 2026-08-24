	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	orrs r0, r1
	ldr r1, _0816DF80 @ =0x0000FE80
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	movs r0, #0x08
	adds r0, r0, r3
	mov r9, r0
	adds r3, #0xC0
	mov r10, r3
_0816DEDA:
	lsls r0, r1, #0x01
	adds r2, r1, #0x1
	mov r8, r2
	adds r0, r0, r1
	lsls r0, r0, #0x03
	movs r6, #0x8C
	lsls r6, r6, #0x07
	mov r2, r9
	adds r4, r0, r2
	movs r2, #0x06
	subs r0, r2, r1
	lsls r5, r0, #0x04
	movs r7, #0x05
_0816DEF4:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0816DF10
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x9A
	lsls r3, r3, #0x08
	bl sub_8163978
_0816DF10:
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r6, r0
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0816DF32
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r1, r3, #0x0
	movs r2, #0x00
	movs r3, #0x9A
	lsls r3, r3, #0x08
	bl sub_8163978
_0816DF32:
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r3, r6, r1
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0816DF54
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r1, r3, #0x0
	movs r2, #0x00
	movs r3, #0x9A
	lsls r3, r3, #0x08
	bl sub_8163978
_0816DF54:
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r6, r6, r2
	adds r4, #0x0C
	subs r7, #0x03
	cmp r7, #0x00
	bge _0816DEF4
	mov r1, r8
	cmp r1, #0x05
	ble _0816DEDA
	movs r0, #0x01
	mov r4, r10
	str r0, [r4, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816DF80: .4byte 0x0000FE80
