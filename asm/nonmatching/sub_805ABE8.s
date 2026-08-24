	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x004]
	str r2, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x010]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	mov r10, r2
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r6, #0x02
	movs r2, #0x00
	cmp r2, r8
	bcs _0805AC88
_0805AC24:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x09
	ldr r1, [sp, #0x014]
	adds r3, r1, r2
	lsls r1, r3, #0x05
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0x00
	adds r2, #0x01
	mov r9, r2
	cmp r4, r10
	bcs _0805AC7E
	lsls r5, r3, #0x10
_0805AC44:
	lsls r0, r6, #0x01
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805AC6E
	adds r0, r7, r4
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r2, r1, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805A868
_0805AC6E:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r10
	bcc _0805AC44
_0805AC7E:
	mov r2, r9
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r8
	bcc _0805AC24
_0805AC88:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
