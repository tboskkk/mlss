	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r4, #0x01]
	str r1, [sp, #0x004]
	ldrb r3, [r4, #0x02]
	mov r12, r3
	ldrb r0, [r4, #0x03]
	mov r9, r0
	movs r1, #0x04
	mov r10, r1
	movs r2, #0x00
	cmp r2, r9
	bcs _0805C894
_0805C84E:
	ldr r3, [sp, #0x004]
	adds r1, r3, r2
	mov r3, r8
	ldrh r0, [r3, #0x26]
	muls r0, r1
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x00
	adds r7, r2, #0x1
	cmp r3, r12
	bcs _0805C88C
	mov r5, r8
	adds r5, #0x9C
_0805C86C:
	ldr r2, [r5, #0x00]
	adds r0, r6, r3
	adds r2, r2, r0
	mov r1, r10
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	adds r1, r4, r1
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r12
	bcc _0805C86C
_0805C88C:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r9
	bcc _0805C84E
_0805C894:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
