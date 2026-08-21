	.syntax unified
	.text

	thumb_func_start sub_8138364
sub_8138364:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r1, _08138478 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138466
	ldr r2, _0813847C @ =0x000002DE
	adds r1, r7, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	subs r2, #0x12
	adds r2, r7, r2
	str r2, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383A2
	adds r0, #0x03
_081383A2:
	asrs r3, r0, #0x02
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r10, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383BE
	adds r0, #0x03
_081383BE:
	asrs r5, r0, #0x02
	adds r0, r3, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _08138420
	ldr r0, _08138480 @ =0x03001038
	mov r9, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	mov r8, r0
	ldr r4, _08138484 @ =0x0819832C
	ldr r0, _08138488 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r6, r7, r1
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r3, [sp, #0x004]
	muls r0, r3
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x0C]
	adds r1, r1, r0
	str r1, [r7, #0x0C]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0x00
	ldsh r0, [r6, r1]
	muls r0, r5
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
_08138420:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r3, r7, r2
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08138466
	ldr r0, _0813848C @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	negs r0, r0
	ldr r2, _08138490 @ =0x0000023E
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	cmp r0, r1
	blt _08138466
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x0C]
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x10]
_08138466:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138478: .4byte 0x00000216
_0813847C: .4byte 0x000002DE
_08138480: .4byte 0x03001038
_08138484: .4byte 0x0819832C
_08138488: .4byte 0x08198220
_0813848C: .4byte 0x0000020D
_08138490: .4byte 0x0000023E
