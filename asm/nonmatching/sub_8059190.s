	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [sp, #0x034]
	ldr r4, [sp, #0x038]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r12, r4
	ldr r0, _08059204 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059208 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r9
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0805920C @ =0x0000FFFF
	cmp r1, r0
	beq _080592B6
	mov r2, r9
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r10, r1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bge _08059210
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r4, [sp, #0x010]
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	b _08059220
_08059204: .4byte 0x00000579
_08059208: .4byte room_solidity_index_table
_0805920C: .4byte 0x0000FFFF
_08059210:
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r7, [sp, #0x010]
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059224
	subs r0, r3, r0
_08059220:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08059224:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bge _08059240
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r2, [sp, #0x010]
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r1
	b _08059256
_08059240:
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r4, [sp, #0x010]
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r8, r1
	cmp r2, r0
	blt _08059256
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059256:
	movs r4, #0x00
	mov r7, r12
	lsls r7, r7, #0x10
	str r7, [sp, #0x00C]
	lsls r0, r3, #0x10
	mov r2, r9
	lsls r1, r2, #0x0B
	adds r3, r5, #0x0
	adds r3, #0x98
	str r3, [sp, #0x008]
	asrs r0, r0, #0x10
	mov r7, r10
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r1, r0
	mov r10, r1
_08059276:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x010]
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x004]
	adds r2, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	ldr r3, [sp, #0x008]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r9
	ldr r7, [sp, #0x00C]
	asrs r3, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x11
	bls _08059276
_080592B6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
