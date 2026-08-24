	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r12, r0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	add r1, r12
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r7, #0x00
	ldr r0, _0805AF94 @ =0x083AFC5C
	mov r10, r0
	movs r1, #0x4C
	mov r9, r1
	movs r3, #0x00
	ldr r2, _0805AF98 @ =0x000002B2
	add r2, r12
	mov r8, r2
	ldr r5, _0805AF9C @ =0x000002D2
	add r5, r12
_0805AEF6:
	mov r2, r9
	muls r2, r7
	mov r4, r12
	adds r1, r4, r2
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	strb r3, [r1, #0x00]
	movs r4, #0x00
	adds r6, r7, #0x1
_0805AF30:
	lsls r0, r4, #0x01
	adds r0, r0, r2
	mov r7, r8
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	adds r0, r5, r0
	strh r3, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _0805AF30
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805AEF6
	mov r1, r12
	ldrh r0, [r1, #0x1E]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r10
	ldrb r0, [r1, #0x04]
	lsls r0, r0, #0x02
	ldr r2, _0805AFA0 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B054
	movs r7, #0x00
_0805AF6E:
	lsls r0, r7, #0x03
	ldr r4, [sp, #0x000]
	adds r3, r0, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFA4
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B03E
_0805AF94: .4byte 0x083AFC5C
_0805AF98: .4byte 0x000002B2
_0805AF9C: .4byte 0x000002D2
_0805AFA0: .4byte 0x083B283C
_0805AFA4:
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	add r2, r12
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r1, r2, r4
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	movs r1, #0xAB
	lsls r1, r1, #0x02
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r5, [r3, #0x04]
	movs r4, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	mov r10, r2
	ldr r0, _0805B064 @ =0x000002B2
	add r0, r12
	mov r9, r0
	adds r1, #0x26
	add r1, r12
	mov r8, r1
_0805AFF0:
	adds r3, r4, #0x0
	lsls r2, r3, #0x01
	add r2, r10
	mov r0, r9
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r2, r8
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B068 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFF0
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	ldr r2, _0805B06C @ =0x000002AE
	adds r1, r0, r2
	strb r4, [r1, #0x00]
	ldr r4, _0805B070 @ =0x000002AF
	adds r1, r0, r4
	movs r2, #0x00
	strb r2, [r1, #0x00]
	adds r4, #0x01
	adds r0, r0, r4
	strb r2, [r0, #0x00]
_0805B03E:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r0, [sp, #0x000]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805AF6E
_0805B054:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B064: .4byte 0x000002B2
_0805B068: .4byte 0x00007FFF
_0805B06C: .4byte 0x000002AE
_0805B070: .4byte 0x000002AF
