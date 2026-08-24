	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _08199640
	ldrb r0, [r0, #0x00]
	mov r8, r0
	cmp r0, #0x00
	bne _08199644
_08199640:
	movs r0, #0x00
	b _08199878
_08199644:
	ldrb r1, [r5, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081996BC
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	movs r2, #0x14
	bl memcpy
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	ldr r3, [sp, #0x018]
	bl sub_8199A28
	adds r2, r0, #0x0
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1C
	adds r0, r2, r0
	ldrb r1, [r5, #0x0D]
	adds r0, r0, r1
	strb r0, [r5, #0x0D]
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _08199696
	cmp r0, #0x01
	bcc _08199692
	cmp r0, #0x02
	beq _081996AC
	b _081996BC
_08199692:
	ldrb r0, [r5, #0x0E]
	b _081996BA
_08199696:
	ldrb r0, [r5, #0x13]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x03
	ldrb r3, [r5, #0x0E]
	adds r0, r0, r3
	ldrb r1, [r5, #0x0F]
	subs r0, r0, r1
	lsrs r1, r2, #0x10
	subs r0, r0, r1
	lsrs r0, r0, #0x01
	b _081996BA
_081996AC:
	ldrb r0, [r5, #0x13]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x03
	ldrb r1, [r5, #0x0F]
	subs r0, r0, r1
	lsrs r1, r2, #0x10
	subs r0, r0, r1
_081996BA:
	strb r0, [r5, #0x0C]
_081996BC:
	mov r4, r8
	cmp r4, #0xFF
	bne _081996E2
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x01]
	mov r8, r1
	movs r2, #0xFF
	lsls r2, r2, #0x08
	adds r1, r2, #0x0
	mov r3, r8
	orrs r3, r1
	mov r8, r3
	adds r0, #0x02
	str r0, [r5, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8199888
	b _08199876
_081996E2:
	mov r4, r8
	cmp r4, #0x20
	bne _081996F4
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldrb r1, [r5, #0x0C]
	adds r0, r0, r1
	b _0819986E
_081996F4:
	movs r0, #0xFF
	mov r2, r8
	subs r0, r0, r2
	ldr r1, [r5, #0x04]
	cmp r0, #0x05
	bgt _08199722
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _08199722
	lsls r2, r2, #0x18
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x1
	str r0, [r5, #0x08]
	ldrb r0, [r1, #0x01]
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r4, r8
	orrs r4, r0
	mov r8, r4
	str r3, [sp, #0x020]
	b _08199726
_08199722:
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x020]
_08199726:
	mov r0, r8
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	str r0, [sp, #0x024]
	ldr r2, [sp, #0x020]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	str r3, [sp, #0x030]
	lsrs r0, r0, #0x1C
	str r0, [sp, #0x034]
	lsls r2, r0, #0x02
	str r2, [sp, #0x028]
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x02
	ldr r4, [sp, #0x020]
	adds r1, r1, r4
	ldr r0, [sp, #0x024]
	movs r3, #0x07
	ands r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x04]
	lsrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	adds r1, #0x01
	str r1, [sp, #0x02C]
	ldrb r4, [r5, #0x0C]
	mov r9, r4
	ldrb r4, [r5, #0x12]
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0x00
	bne _0819977A
	subs r0, r2, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	add r0, r9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
_0819977A:
	ldrb r1, [r5, #0x13]
	ldrb r3, [r5, #0x11]
	lsls r2, r4, #0x1F
	lsrs r2, r2, #0x1F
	add r0, sp, #0x044
	strb r2, [r0, #0x00]
	lsls r0, r4, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	str r0, [sp, #0x038]
	ldr r6, [r5, #0x00]
	lsrs r1, r1, #0x02
	mov r12, r1
	ldrb r4, [r5, #0x0D]
	lsrs r7, r3, #0x04
	movs r0, #0x0F
	ldr r1, [sp, #0x030]
	ands r0, r1
	lsls r2, r0, #0x02
	mov r10, r2
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x034]
	adds r3, r1, #0x0
	muls r3, r2
	muls r0, r3
	lsls r0, r0, #0x02
	adds r0, #0x84
	ldr r3, [sp, #0x020]
	adds r0, r3, r0
	str r0, [sp, #0x03C]
	mov r0, r10
	subs r4, r4, r0
	ldr r1, [sp, #0x038]
	add r2, sp, #0x044
	ldrb r2, [r2, #0x00]
	orrs r1, r2
	str r1, [sp, #0x038]
	add r3, sp, #0x044
	ldrb r3, [r3, #0x00]
	cmp r3, #0x00
	beq _081997CE
	subs r4, r4, r0
_081997CE:
	movs r1, #0x08
	negs r1, r1
	mov r0, r9
	ands r0, r1
	lsls r0, r0, #0x02
	adds r6, r6, r0
	adds r0, r4, #0x0
	movs r2, #0x07
	ands r0, r2
	lsls r0, r0, #0x02
	adds r6, r6, r0
	ands r4, r1
	mov r0, r12
	muls r0, r4
	lsls r0, r0, #0x02
	adds r6, r6, r0
	mov r0, r12
	subs r0, #0x01
	lsls r0, r0, #0x05
	mov r12, r0
	movs r3, #0x07
	mov r4, r9
	ands r3, r4
	cmp r7, #0x0D
	bls _08199802
	movs r7, #0x0E
_08199802:
	lsls r0, r7, #0x04
	adds r0, r0, r7
	lsls r1, r0, #0x08
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r7, r0, r1
	ldr r2, _0819985C @ =0x03001040
	movs r0, #0xF0
	ldr r1, [sp, #0x030]
	ands r0, r1
	subs r0, #0x20
	ldr r4, [sp, #0x038]
	lsls r1, r4, #0x02
	orrs r1, r0
	adds r1, r1, r2
	lsls r3, r3, #0x02
	mov r0, r12
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x03C]
	str r2, [sp, #0x004]
	ldr r0, _08199860 @ =0x11111111
	str r0, [sp, #0x008]
	ldr r4, [r1, #0x00]
	adds r0, r6, #0x0
	mov r1, r10
	adds r2, r7, #0x0
	bl _call_via_r4
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	ldrb r3, [r5, #0x0C]
	adds r2, r0, r3
	strb r2, [r5, #0x0C]
	ldrb r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08199864
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	ldr r4, [sp, #0x02C]
	lsls r4, r0
	adds r0, r2, r4
	b _0819986E
_0819985C: .4byte 0x03001040
_08199860: .4byte 0x11111111
_08199864:
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x028]
	lsls r1, r0
	adds r0, r2, r1
_0819986E:
	strb r0, [r5, #0x0C]
	ldr r0, [r5, #0x08]
	adds r0, #0x01
	str r0, [r5, #0x08]
_08199876:
	mov r0, r8
_08199878:
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
