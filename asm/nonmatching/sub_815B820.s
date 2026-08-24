	.syntax unified
	.text

	thumb_func_start sub_815B820
sub_815B820:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815B948 @ =0x08CDCE10
	str r0, [r5, #0x30]
	movs r1, #0x00
	movs r0, #0x00
	mov r8, r0
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	mov r1, r8
	strh r1, [r5, #0x36]
	mov r2, r8
	str r2, [r5, #0x38]
	str r2, [r5, #0x40]
	str r2, [r5, #0x3C]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r0, _0815B94C @ =0x00005008
	mov r10, r0
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	mov r1, r10
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x3C]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x1C
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x3C]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x3C]
	ldrb r0, [r1, #0x12]
	movs r2, #0x20
	mov r9, r2
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r5, #0x3C]
	adds r0, r5, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x0E]
	ldr r6, [r5, #0x3C]
	movs r0, #0x2D
	adds r0, r0, r5
	mov r12, r0
	ldrb r1, [r0, #0x00]
	subs r1, #0x01
	movs r3, #0x03
	ands r1, r3
	ldrb r2, [r6, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x1F]
	ldr r6, [r5, #0x3C]
	mov r2, r12
	ldrb r1, [r2, #0x00]
	subs r1, #0x01
	ands r1, r3
	lsls r1, r1, #0x02
	ldrb r2, [r6, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x1F]
	ldr r6, [r5, #0x3C]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	subs r1, #0x01
	ands r1, r3
	lsls r1, r1, #0x04
	ldrb r2, [r6, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x1F]
	ldr r3, [r5, #0x3C]
	mov r2, r12
	ldrb r1, [r2, #0x00]
	subs r1, #0x01
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	mov r1, r10
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x40]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x1B
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x40]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x40]
	ldrb r0, [r1, #0x12]
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x12]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0815B948: .4byte 0x08CDCE10
_0815B94C: .4byte 0x00005008
