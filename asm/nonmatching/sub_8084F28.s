	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r0, r3, #0x0
	ldr r1, [sp, #0x020]
	mov r10, r1
	ldr r3, [sp, #0x024]
	ldr r5, [sp, #0x028]
	ldr r7, [sp, #0x02C]
	cmp r5, #0x00
	beq _08085006
	lsls r1, r4, #0x02
	adds r1, r1, r4
	lsls r1, r1, #0x07
	lsls r0, r0, #0x05
	adds r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xA2
	lsls r0, r0, #0x02
	add r0, r8
	lsls r2, r1, #0x01
	ldr r0, [r0, #0x00]
	adds r6, r0, r2
	subs r4, r3, #0x1
	lsls r2, r4, #0x05
	add r2, r10
	mov r0, r8
	bl sub_8084614
	adds r3, r4, #0x0
	cmp r3, #0x00
	blt _08085006
_08084F74:
	mov r4, r10
	subs r4, #0x01
	subs r3, #0x01
	mov r9, r3
	movs r0, #0x40
	adds r0, r0, r6
	mov r12, r0
	movs r1, #0x40
	adds r1, r1, r5
	mov r8, r1
	cmp r4, #0x00
	blt _08084FFC
	lsls r0, r4, #0x01
	adds r3, r0, r5
	adds r2, r0, r6
	movs r0, #0x03
	bics r0, r4
	cmp r4, #0x00
	blt _08084FBE
	cmp r0, #0x00
	beq _08084FCE
	cmp r0, #0x03
	bge _08084FBE
	cmp r0, #0x02
	bge _08084FB2
	ldrh r0, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
	subs r3, #0x02
	subs r2, #0x02
	subs r4, #0x01
_08084FB2:
	ldrh r0, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
	subs r3, #0x02
	subs r2, #0x02
	subs r4, #0x01
_08084FBE:
	ldrh r0, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
	subs r3, #0x02
	subs r2, #0x02
	subs r4, #0x01
	cmp r4, #0x00
	blt _08084FFC
_08084FCE:
	ldrh r0, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
	subs r0, r3, #0x2
	subs r1, r2, #0x2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r0, r3, #0x4
	subs r1, r2, #0x4
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r0, r3, #0x6
	subs r1, r2, #0x6
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r3, #0x08
	subs r2, #0x08
	subs r4, #0x04
	cmp r4, #0x00
	bge _08084FCE
_08084FFC:
	mov r6, r12
	mov r5, r8
	mov r3, r9
	cmp r3, #0x00
	bge _08084F74
_08085006:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
