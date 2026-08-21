	.syntax unified
	.text

	thumb_func_start sub_8163ADC
sub_8163ADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	adds r0, r1, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	ldr r7, [sp, #0x024]
	ldr r5, [sp, #0x028]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r3, r4, #0x0
	bl sub_8020DD0
	mov r1, r8
	str r0, [r1, #0x10]
	movs r6, #0x00
	str r6, [sp, #0x000]
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r1, r8
	ldr r0, [r1, #0x10]
	bl sprite_show_8020CBC
	mov r0, r8
	ldr r3, [r0, #0x10]
	lsls r2, r5, #0x06
	ldrb r1, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	movs r1, #0x03
	ands r5, r1
	lsls r2, r5, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x02
	adds r1, #0x24
	ands r0, r1
	orrs r0, r2
	adds r1, #0x09
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x1F]
	mov r1, r8
	ldr r0, [r1, #0x10]
	strh r6, [r0, #0x0E]
	str r6, [r1, #0x14]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
