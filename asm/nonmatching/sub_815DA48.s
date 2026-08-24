	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r10, r0
	movs r0, #0x00
	str r0, [sp, #0x00C]
	movs r1, #0x50
	str r1, [sp, #0x014]
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815DBB8 @ =0x00005005
	movs r2, #0x01
	movs r3, #0x01
	negs r3, r3
	bl sub_8020DD0
	mov r3, r10
	str r0, [r3, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0x3C
	strh r0, [r1, #0x02]
	ldr r0, [r3, #0x00]
	ldr r2, [sp, #0x00C]
	str r2, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	mov r3, r10
	ldr r0, [r3, #0x00]
	bl sprite_show_8020CBC
	mov r0, sp
	ldrh r1, [r0, #0x0C]
	mov r0, r10
	strh r1, [r0, #0x14]
	mov r2, sp
	ldrh r2, [r2, #0x0C]
	strh r2, [r0, #0x28]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r0, #0x1E]
	movs r0, #0x05
	str r0, [sp, #0x010]
	mov r7, r10
	adds r7, #0x04
	movs r1, #0x60
	str r1, [sp, #0x014]
	movs r2, #0x01
	str r2, [sp, #0x00C]
_0815DAC4:
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815DBB8 @ =0x00005005
	movs r2, #0x01
	bl sub_8020DD0
	str r0, [r7, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0x3C
	strh r2, [r0, #0x02]
	ldr r0, [r7, #0x00]
	ldr r1, [sp, #0x00C]
	adds r1, #0x05
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r2, #0x01
	negs r2, r2
	bl sub_801E150
	ldr r0, [r7, #0x00]
	bl sprite_show_8020CBC
	ldr r0, [sp, #0x00C]
	lsls r1, r0, #0x01
	movs r2, #0x14
	add r2, r10
	mov r8, r2
	adds r0, r2, r1
	movs r3, #0x00
	strh r3, [r0, #0x00]
	mov r6, r10
	adds r6, #0x28
	adds r0, r6, r1
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r0, #0x00]
	mov r5, r10
	adds r5, #0x1E
	adds r1, r5, r1
	strh r3, [r1, #0x00]
	ldr r3, [sp, #0x010]
	adds r3, #0x05
	str r3, [sp, #0x018]
	ldr r0, [sp, #0x014]
	adds r0, #0x10
	mov r9, r0
	ldr r4, [sp, #0x00C]
	adds r4, #0x01
	movs r1, #0x01
	negs r1, r1
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815DBB8 @ =0x00005005
	movs r2, #0x01
	movs r3, #0x01
	negs r3, r3
	bl sub_8020DD0
	str r0, [r7, #0x04]
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r0, [r7, #0x04]
	movs r3, #0x3C
	strh r3, [r0, #0x02]
	ldr r0, [r7, #0x04]
	ldr r1, [sp, #0x00C]
	adds r1, #0x06
	movs r2, #0x00
	str r2, [sp, #0x000]
	subs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x04]
	bl sprite_show_8020CBC
	lsls r4, r4, #0x01
	add r8, r4
	movs r0, #0x00
	mov r3, r8
	strh r0, [r3, #0x00]
	adds r6, r6, r4
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r6, #0x00]
	adds r5, r5, r4
	strh r0, [r5, #0x00]
	ldr r2, [sp, #0x010]
	adds r2, #0x0A
	str r2, [sp, #0x010]
	adds r7, #0x08
	ldr r3, [sp, #0x014]
	adds r3, #0x20
	str r3, [sp, #0x014]
	ldr r0, [sp, #0x00C]
	adds r0, #0x02
	str r0, [sp, #0x00C]
	cmp r0, #0x04
	ble _0815DAC4
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x3A]
	movs r0, #0x5A
	strh r0, [r1, #0x3C]
	mov r0, r10
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0815DBB8: .4byte 0x00005005
