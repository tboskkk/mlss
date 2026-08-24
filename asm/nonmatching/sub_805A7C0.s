	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r2, _0805A85C @ =0x083AFC5C
	ldrh r1, [r0, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	str r0, [sp, #0x004]
	movs r0, #0x00
	mov r9, r0
_0805A7E2:
	mov r1, r9
	lsls r0, r1, #0x01
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r0, r1
	ldr r3, _0805A860 @ =0x083AFF3C
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldr r2, _0805A864 @ =0x0000FFFF
	cmp r0, r2
	beq _0805A840
	movs r0, #0x00
	mov r3, r9
	lsls r3, r3, #0x09
	mov r10, r3
_0805A806:
	movs r4, #0x00
	lsls r6, r0, #0x10
	lsls r5, r0, #0x05
	adds r7, r0, #0x1
_0805A80E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r1, r10
	adds r0, r5, r1
	adds r0, r0, r4
	mov r3, r8
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	mov r1, r9
	asrs r3, r6, #0x10
	bl sub_805A868
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1F
	bls _0805A80E
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A806
_0805A840:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bls _0805A7E2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805A85C: .4byte 0x083AFC5C
_0805A860: .4byte 0x083AFF3C
_0805A864: .4byte 0x0000FFFF
