	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	subs r2, r2, r1
	str r2, [r6, #0x00]
	adds r0, #0x06
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, _0805EB74 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bge _0805EB64
	ldr r0, _0805EB78 @ =0x0805EB7D
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x30
	strh r0, [r1, #0x00]
_0805EB64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EB74: .4byte 0xFFFFD000
_0805EB78: .4byte sub_805EB7C
