	.syntax unified
	.text

	thumb_func_start sub_81134A8
sub_81134A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081135A2
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081135B4 @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x60]
	adds r3, r2, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	ldr r1, _081135B8 @ =0x00000113
	mov r9, r1
	add r0, r9
	movs r5, #0x00
	strb r5, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r2, #0x0
	adds r1, #0xA4
	movs r6, #0x9C
	adds r6, r6, r4
	mov r8, r6
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r7, r4, #0x0
	adds r7, #0xA0
	str r7, [sp, #0x000]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0811352E
	ldr r0, [r4, #0x28]
	ldr r1, _081135B8 @ =0x00000113
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	adds r0, r3, #0x0
	bl sub_8113708
_0811352E:
	mov r7, r10
	ldr r0, [r7, #0x00]
	ldr r2, [r0, #0x64]
	adds r3, r2, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x28]
	add r0, r9
	strb r5, [r0, #0x00]
	ldr r5, [r4, #0x2C]
	str r5, [r3, #0x2C]
	adds r1, r2, #0x0
	adds r1, #0xA4
	mov r7, r8
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r7, [sp, #0x000]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _0811357E
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r0, #0x02
	lsls r0, r0, #0x02
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	str r0, [r3, #0x2C]
_0811357E:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0811359E
	ldr r0, [r4, #0x28]
	add r0, r9
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r0, r3, #0x0
	bl sub_81138B0
_0811359E:
	ldr r0, _081135BC @ =0x081141F9
	str r0, [r4, #0x4C]
_081135A2:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081135B4: .4byte 0x03000FD8
_081135B8: .4byte 0x00000113
_081135BC: .4byte sub_81141F8
