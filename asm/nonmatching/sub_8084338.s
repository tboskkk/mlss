	.syntax unified
	.text

	thumb_func_start sub_8084338
sub_8084338:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x00C
	adds r4, r0, #0x0
	mov r8, r1
	adds r6, r2, #0x0
	mov r9, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	adds r1, r4, #0x0
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_8020DD0
	adds r4, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r8
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x03
	adds r2, r6, #0x0
	ands r2, r0
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	lsls r3, r2, #0x02
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	lsls r2, r2, #0x04
	subs r1, #0x24
	ands r0, r1
	orrs r0, r2
	lsls r6, r6, #0x06
	movs r1, #0x3F
	ands r0, r1
	orrs r0, r6
	strb r0, [r4, #0x1F]
	mov r0, r9
	cmp r0, #0x01
	bne _080843AE
	adds r0, r4, #0x0
	bl sub_80842D8
_080843AE:
	adds r0, r4, #0x0
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
