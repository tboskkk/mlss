	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	mov r10, r1
	adds r4, r3, #0x0
	ldr r0, [sp, #0x034]
	ldr r5, [sp, #0x038]
	ldr r6, [sp, #0x03C]
	lsls r2, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x010]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsrs r7, r2, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8139BB0
	mov r0, sp
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r5, r0, #0x08
	mov r0, sp
	movs r3, #0x02
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	mov r0, sp
	movs r1, #0x06
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r12, r0
	mov r0, sp
	movs r1, #0x04
	ldsh r0, [r0, r1]
	lsls r6, r0, #0x08
	movs r2, #0x00
	mov r1, r9
	lsls r0, r1, #0x18
	lsls r4, r4, #0x18
	cmp r0, r4
	bge _0813AF44
	mov r4, r8
	ldr r1, [r4, #0x0C]
	mov r4, r10
	ldr r0, [r4, #0x0C]
	cmp r1, r0
	blt _0813AF3C
	subs r0, r1, r7
	cmp r0, r5
	blt _0813AF44
	movs r2, #0x08
	b _0813AF44
_0813AF3C:
	adds r0, r1, r7
	cmp r0, r3
	bgt _0813AF44
	movs r2, #0x02
_0813AF44:
	mov r0, r9
	lsls r1, r0, #0x18
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x18
	cmp r1, r0
	bge _0813AF76
	mov r4, r8
	ldr r1, [r4, #0x10]
	mov r3, r10
	ldr r0, [r3, #0x10]
	cmp r1, r0
	blt _0813AF68
	subs r0, r1, r7
	cmp r0, r12
	blt _0813AF76
	movs r0, #0x01
	orrs r2, r0
	b _0813AF76
_0813AF68:
	adds r0, r1, r7
	cmp r0, r6
	bgt _0813AF76
	movs r0, #0x04
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_0813AF76:
	cmp r2, #0x00
	beq _0813AF80
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	b _0813AF82
_0813AF80:
	movs r0, #0xFF
_0813AF82:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
