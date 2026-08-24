	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x01C
	movs r0, #0x00
	mov r9, r0
	ldr r0, _0807C43C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x1B
	lsrs r6, r0, #0x1B
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	bne _0807C40E
	b _0807C538
_0807C40E:
	ldr r7, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807C440
	mov r9, r4
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	adds r5, r0, #0x0
	movs r3, #0x00
	mov r8, r3
	cmp r5, #0x00
	bne _0807C42E
	b _0807C530
_0807C42E:
	ldrb r2, [r4, #0x0C]
	movs r3, #0x1F
	movs r0, #0x1F
	ands r0, r2
	cmp r0, #0x00
	beq _0807C48E
	b _0807C470
_0807C43C: .4byte 0x03000FD8
_0807C440:
	mov r0, r9
	cmp r0, #0x00
	beq _0807C450
	str r7, [r0, #0x00]
	ldr r1, _0807C44C @ =0x03000FD8
	b _0807C45C
_0807C44C: .4byte 0x03000FD8
_0807C450:
	ldr r1, _0807C46C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r7, [r0, #0x00]
_0807C45C:
	ldr r1, [r1, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	b _0807C530
_0807C46C: .4byte 0x03000FD8
_0807C470:
	adds r1, r6, #0x0
	ands r1, r3
	movs r3, #0x20
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0C]
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_807F920
	subs r6, #0x01
	b _0807C496
_0807C48E:
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	bl sub_807F9A8
_0807C496:
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	beq _0807C522
_0807C49C:
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0807C51C
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _0807C4B2
	adds r0, #0xFF
_0807C4B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bge _0807C4BE
	adds r0, #0xFF
_0807C4BE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _0807C4CA
	adds r0, #0xFF
_0807C4CA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	add r1, sp, #0x00C
	add r2, sp, #0x010
	add r3, sp, #0x014
	bl sub_8082C58
	ldrb r1, [r4, #0x1B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldrb r0, [r4, #0x1B]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x008]
	add r0, sp, #0x018
	adds r1, r5, #0x0
	bl sub_807C564
	mov r3, r8
	cmp r3, #0x00
	bne _0807C51C
	ldr r0, _0807C560 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r8, r0
_0807C51C:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807C49C
_0807C522:
	mov r2, r8
	cmp r2, #0x00
	beq _0807C530
	ldr r0, _0807C560 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0807C530:
	adds r4, r7, #0x0
	cmp r4, #0x00
	beq _0807C538
	b _0807C40E
_0807C538:
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r0, #0x1F
	ands r6, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x07]
	add sp, #0x01C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C55C: .4byte 0x03000FD8
_0807C560: .4byte 0x03000D74
