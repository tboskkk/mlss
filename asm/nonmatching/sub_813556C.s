	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	str r1, [sp, #0x000]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0813558C
	movs r1, #0x03
	bl sub_813556C
	movs r0, #0x00
	str r0, [r4, #0x04]
_0813558C:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0813559C
	movs r1, #0x03
	bl sub_813556C
	movs r0, #0x00
	str r0, [r4, #0x08]
_0813559C:
	adds r0, r4, #0x0
	adds r0, #0xD4
	ldr r2, [r0, #0x00]
	adds r6, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xDC
	movs r0, #0x8C
	adds r0, r0, r4
	mov r8, r0
	adds r7, r4, #0x0
	adds r7, #0x48
	movs r1, #0x34
	adds r1, r1, r4
	mov r10, r1
	movs r0, #0x20
	adds r0, r0, r4
	mov r9, r0
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [sp, #0x004]
	cmp r2, #0x00
	beq _081355F0
	subs r0, r2, #0x4
	ldr r1, [r0, #0x00]
	movs r0, #0x34
	muls r0, r1
	adds r1, r2, r0
	cmp r2, r1
	beq _081355E4
	ldr r3, _08135654 @ =0x08CDC480
	adds r0, r2, #0x0
_081355DA:
	subs r1, #0x34
	str r3, [r1, #0x24]
	str r3, [r1, #0x10]
	cmp r0, r1
	bne _081355DA
_081355E4:
	ldr r0, [r6, #0x00]
	subs r0, #0x04
	bl free_heap_8018D9C
	movs r0, #0x00
	str r0, [r6, #0x00]
_081355F0:
	ldr r2, [r5, #0x00]
	cmp r2, #0x00
	beq _0813561E
	subs r0, r2, #0x4
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r1, r2, r0
	cmp r2, r1
	beq _08135612
	ldr r3, _08135654 @ =0x08CDC480
	adds r0, r2, #0x0
_0813560A:
	subs r1, #0x24
	str r3, [r1, #0x20]
	cmp r0, r1
	bne _0813560A
_08135612:
	ldr r0, [r5, #0x00]
	subs r0, #0x04
	bl free_heap_8018D9C
	movs r0, #0x00
	str r0, [r5, #0x00]
_0813561E:
	ldr r0, _08135658 @ =0x08CDC470
	mov r1, r8
	str r0, [r1, #0x40]
	str r0, [r7, #0x40]
	ldr r0, _08135654 @ =0x08CDC480
	mov r1, r10
	str r0, [r1, #0x10]
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x10]
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	ands r0, r1
	cmp r0, #0x00
	beq _08135644
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08135644:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08135654: .4byte 0x08CDC480
_08135658: .4byte 0x08CDC470
