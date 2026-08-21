	.syntax unified
	.text

	thumb_func_start sub_815F97C
sub_815F97C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r7, [r6, #0x00]
	cmp r7, #0x00
	bne _0815FA34
	adds r1, r6, #0x0
	adds r1, #0x2A
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0815FA34
	adds r0, r6, #0x0
	adds r0, #0x27
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x2C
	ldrb r1, [r1, #0x00]
	strh r1, [r0, #0x0E]
	ldr r4, [r6, #0x00]
	movs r0, #0x2D
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r2, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r3, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r6, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r3, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r3, [r6, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	ands r2, r0
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1F]
	ldr r3, [r6, #0x00]
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r1, [r6, #0x00]
	ldr r0, [r6, #0x04]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r6, #0x08]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	ldr r0, [r6, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x2B
	ldrb r1, [r1, #0x00]
	str r7, [sp, #0x000]
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
_0815FA34:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
