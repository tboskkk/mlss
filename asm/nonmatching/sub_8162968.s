	.syntax unified
	.text

	thumb_func_start sub_8162968
sub_8162968:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r5, _08162A24 @ =0x00005005
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	movs r3, #0x01
	bl sub_80213A0
	movs r0, #0x04
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	movs r3, #0x01
	bl sub_80214A4
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x04
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r7, #0x00
	movs r1, #0x00
	mov r8, r1
_081629B0:
	lsls r0, r7, #0x02
	mov r5, r9
	adds r5, #0x04
	adds r5, r5, r0
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _08162A28 @ =0x08212814
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x00
	bl sub_8161C28
	adds r4, r0, #0x0
	str r4, [r5, #0x00]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08162A24 @ =0x00005005
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x10]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x10]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x10]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
	ldr r0, [r4, #0x10]
	mov r1, r8
	strh r1, [r0, #0x0E]
	mov r0, r8
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	bl sprite_hide_8021F20
	adds r7, #0x01
	cmp r7, #0x02
	ble _081629B0
	mov r0, r9
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08162A24: .4byte 0x00005005
_08162A28: .4byte 0x08212814
