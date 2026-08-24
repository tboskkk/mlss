	.syntax unified
	.text

	thumb_func_start sub_8168D74
sub_8168D74:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	movs r1, #0x03
	bl sub_8161C28
	ldr r0, _08168E9C @ =0x08CDD1D8
	str r0, [r5, #0x0C]
	ldr r2, _08168EA0 @ =0x00005006
	movs r0, #0x05
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8163ADC
	ldr r2, [r5, #0x10]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x10]
	movs r0, #0x00
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x8E
	mov r1, r9
	strh r1, [r0, #0x00]
	subs r0, #0x04
	strh r1, [r0, #0x00]
	str r4, [r5, #0x7C]
	str r4, [r5, #0x78]
	subs r0, #0x0A
	ldr r2, [sp, #0x024]
	str r2, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [sp, #0x028]
	str r1, [r0, #0x00]
	adds r0, #0x0C
	mov r2, r9
	strh r2, [r0, #0x00]
	adds r0, #0x08
	strh r2, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	bl sub_8163EE4
	adds r1, r5, #0x0
	adds r1, #0x88
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x6C
	adds r1, r7, #0x0
	movs r2, #0x00
	mov r3, r8
	bl sub_8163FB8
	ldr r1, _08168EA4 @ =0x08198504
	movs r0, #0xFF
	ands r0, r4
	lsls r2, r0, #0x01
	adds r6, r2, r1
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08168E12
	adds r0, #0x3F
_08168E12:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x024]
	muls r0, r1
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _08168EA8 @ =0x08198584
	adds r4, r2, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08168E2A
	adds r0, #0x3F
_08168E2A:
	asrs r0, r0, #0x06
	ldr r2, [sp, #0x028]
	adds r3, r0, #0x0
	muls r3, r2
	lsls r3, r3, #0x01
	add r3, r8
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8163A64
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08168E48
	adds r0, #0x3F
_08168E48:
	asrs r0, r0, #0x06
	ldr r2, [sp, #0x024]
	muls r0, r2
	adds r2, r7, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _08168E5A
	adds r0, #0x3F
_08168E5A:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x028]
	adds r3, r0, #0x0
	muls r3, r1
	add r3, r8
	ldr r0, [sp, #0x02C]
	adds r0, #0x3C
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	bl sub_8163978
	ldr r1, _08168EAC @ =0x08216A94
	adds r0, r5, #0x0
	bl sub_81639D4
	adds r0, r5, #0x0
	adds r0, #0x8C
	mov r2, r9
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08168E9C: .4byte dword_8CDD1D8 @ =0x08CDD1D8
_08168EA0: .4byte 0x00005006
_08168EA4: .4byte word_8198504 @ =0x08198504
_08168EA8: .4byte word_8198584 @ =0x08198584
_08168EAC: .4byte dword_8216A94 @ =0x08216A94
