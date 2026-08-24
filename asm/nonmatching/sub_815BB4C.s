	.syntax unified
	.text

	thumb_func_start sub_815BB4C
sub_815BB4C:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815BC30 @ =0x08CDCDD0
	str r0, [r4, #0x30]
	movs r1, #0x00
	movs r0, #0x00
	mov r8, r0
	strh r5, [r4, #0x34]
	adds r0, r4, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	mov r1, r8
	strh r1, [r4, #0x36]
	mov r0, r8
	str r0, [r4, #0x40]
	str r0, [r4, #0x3C]
	adds r0, r4, #0x0
	bl sub_815F3CC
	ldr r1, _0815BC34 @ =0x00005008
	mov r9, r1
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x3C]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x20
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r4, #0x3C]
	mov r1, r8
	strh r1, [r0, #0x0E]
	ldr r2, [r4, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r6, #0x20
	orrs r0, r6
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x3C]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	mov r1, r9
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x40]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x1B
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x40]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x40]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	adds r0, r4, #0x0
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815BC30: .4byte 0x08CDCDD0
_0815BC34: .4byte 0x00005008
