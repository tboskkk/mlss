	.syntax unified
	.text

	thumb_func_start sub_8104F10
sub_8104F10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	ldr r4, [r0, #0x0C]
	mov r5, sp
	adds r5, #0x0E
	add r6, sp, #0x010
	movs r0, #0xD8
	adds r0, r0, r4
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x18]
	subs r3, r3, r0
	movs r1, #0xDC
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x1C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r7, r4, #0x0
	adds r7, #0xE0
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x008]
	add r0, sp, #0x00C
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087968
	movs r1, #0x90
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _08104F86
	add r0, sp, #0x00C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x1C]
	adds r0, r0, r1
	str r0, [r4, #0x1C]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x20]
	b _08104FDA
_08104F86:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r1, r9
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x18]
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x1C]
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x20]
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x04]
_08104FDA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
