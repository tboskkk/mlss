	.syntax unified
	.text

	thumb_func_start sub_813E20C
sub_813E20C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r6, r1, #0x0
	mov r8, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r2, r6, r1
	movs r3, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r1, [r5, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r4
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1, #0x12]
	ldr r0, _0813E2A0 @ =0x08142E29
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E2A0: .4byte sub_8142E28
