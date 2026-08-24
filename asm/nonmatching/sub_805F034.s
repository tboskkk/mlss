	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r6, r4, #0x0
	adds r6, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	subs r1, r0, r1
	str r1, [r6, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	ldr r2, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F082
	adds r0, #0xFF
_0805F082:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _0805F0C8 @ =0x000007FF
	cmp r1, r0
	bgt _0805F0B6
	ldr r0, _0805F0CC @ =0x0805F0D1
	str r0, [r4, #0x4C]
_0805F0B6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F0C8: .4byte 0x000007FF
_0805F0CC: .4byte sub_805F0D0
