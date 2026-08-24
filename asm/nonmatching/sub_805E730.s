	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	subs r0, #0x01
	strh r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _0805E7A2
	ldr r0, _0805E7B0 @ =0x0805E7B9
	str r0, [r7, #0x4C]
	ldr r0, _0805E7B4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E7A2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E7B0: .4byte sub_805E7B8
_0805E7B4: .4byte 0x0000010F
