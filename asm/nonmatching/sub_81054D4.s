	.syntax unified
	.text

	thumb_func_start sub_81054D4
sub_81054D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r5, _0810566C @ =0x03000FF4
	ldr r1, [r5, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r7, #0x7E
	ldrb r1, [r7, r2]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r7, r2]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _08105528
	adds r1, r0, #0x0
_08105528:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r5, #0x83
	lsls r5, r5, #0x01
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	movs r7, #0x81
	lsls r7, r7, #0x01
	mov r10, r7
	mov r5, r10
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	adds r7, #0x02
	mov r9, r7
	mov r5, r9
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	adds r7, #0x04
	mov r8, r7
	mov r5, r8
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r7, #0x23
	adds r1, r2, r7
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r6, #0x96
	lsls r6, r6, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _08105670 @ =0x0000012D
	adds r1, r2, r5
	strb r0, [r1, #0x00]
	ldr r1, _08105668 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08105648
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r7, _0810566C @ =0x03000FF4
	ldr r1, [r7, #0x00]
	subs r4, r1, r0
	adds r3, r4, #0x0
	subs r3, #0x3C
	movs r0, #0x7E
	adds r0, r0, r2
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x0C
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x0E]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081055EA
	adds r1, r0, #0x0
_081055EA:
	adds r0, r2, #0x0
	adds r0, #0xF6
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x12]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x20]
	movs r7, #0x83
	lsls r7, r7, #0x01
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x1C]
	mov r7, r10
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x24]
	mov r7, r9
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x28]
	mov r7, r8
	adds r0, r2, r7
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r3, #0x18]
	adds r1, r2, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	subs r0, r4, #0x7
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _08105674 @ =0x0000012B
	adds r1, r2, r3
	strb r0, [r1, #0x00]
	subs r0, r4, #0x5
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r6
	strb r0, [r1, #0x00]
	subs r0, r4, #0x4
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r2, r5
	strb r0, [r1, #0x00]
_08105648:
	movs r0, #0x10
	bl sub_80F7538
	movs r0, #0x01
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x10]
	ldr r0, _08105678 @ =0x0810567D
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105668: .4byte 0x03000FD8
_0810566C: .4byte 0x03000FF4
_08105670: .4byte 0x0000012D
_08105674: .4byte 0x0000012B
_08105678: .4byte sub_810567C
