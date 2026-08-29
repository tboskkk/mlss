	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r1, #0x0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x030]
	movs r0, #0x00
	str r0, [sp, #0x034]
	ldr r5, _08117B2C @ =0x03000FF4
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r1, sp, #0x004
	mov r9, r1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x31
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x05
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x33
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x06
	strb r1, [r0, #0x00]
	mov r0, sp
	mov r1, r9
	movs r2, #0x03
	bl memcpy
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	add r4, sp, #0x008
	strb r0, [r4, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x6D
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x09
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x6F
	ldrb r1, [r0, #0x00]
	mov r0, sp
	adds r0, #0x0A
	strb r1, [r0, #0x00]
	mov r0, r9
	adds r1, r4, #0x0
	movs r2, #0x03
	bl memcpy
	add r2, sp, #0x00C
	mov r10, r2
	ldr r1, [r5, #0x00]
	movs r7, #0xB9
	lsls r7, r7, #0x01
	adds r0, r1, r7
	str r0, [sp, #0x018]
	movs r2, #0x9D
	lsls r2, r2, #0x01
	adds r0, r1, r2
	str r0, [sp, #0x01C]
	adds r7, #0x38
	adds r0, r1, r7
	str r0, [sp, #0x020]
	add r7, sp, #0x018
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x0C
	bl memcpy
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xF2
	str r0, [sp, #0x024]
	subs r0, #0x38
	str r0, [sp, #0x028]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r1, r2
	str r0, [sp, #0x02C]
	add r1, sp, #0x024
	adds r0, r7, #0x0
	movs r2, #0x0C
	bl memcpy
	ldr r1, _08117B30 @ =0x08201F36
	adds r0, r4, #0x0
	movs r2, #0x03
	bl memcpy
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	adds r2, r6, r0
	mov r12, r2
	movs r5, #0x00
	ldr r1, [sp, #0x034]
	cmp r1, r0
	bge _08117ADE
	mov r2, r8
	lsls r0, r2, #0x02
	mov r1, r10
	adds r4, r1, r0
	ldr r2, [r4, #0x00]
	str r2, [sp, #0x038]
	adds r0, r7, r0
	str r0, [sp, #0x03C]
	mov r7, r9
	add r7, r8
	mov r10, r7
_08117A52:
	ldr r0, [sp, #0x038]
	adds r1, r0, r5
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08117AD0
	adds r2, r0, #0x0
	ldr r1, [sp, #0x03C]
	ldr r3, [r1, #0x00]
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08117AD0
	cmp r0, #0xFF
	beq _08117AD0
	ldr r7, [sp, #0x030]
	cmp r7, #0x01
	bne _08117AB8
	mov r1, sp
	add r1, r8
	adds r0, r2, #0x0
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	bne _08117A9A
	ldrb r1, [r1, #0x00]
	mov r7, r10
	ldrb r7, [r7, #0x00]
	cmp r0, r7
	bne _08117A92
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08117AD0
_08117A92:
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08117AD0
_08117A9A:
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	mov r1, r9
	add r1, r8
	ldrb r0, [r0, #0x00]
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	bne _08117AB8
	ldrb r0, [r1, #0x00]
	ldr r7, [sp, #0x03C]
	ldr r1, [r7, #0x00]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08117AD0
_08117AB8:
	ldr r0, [sp, #0x034]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x034]
	cmp r6, #0x00
	beq _08117AD0
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	strb r0, [r6, #0x00]
	adds r6, #0x01
_08117AD0:
	adds r5, #0x01
	mov r0, sp
	add r0, r8
	adds r0, #0x08
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	blt _08117A52
_08117ADE:
	cmp r6, r12
	bcs _08117B1A
	movs r2, #0xFF
	mov r0, r12
	subs r1, r0, r6
	movs r0, #0x03
	ands r1, r0
	cmp r6, r12
	bge _08117B04
	cmp r1, #0x00
	beq _08117B0C
	cmp r1, #0x01
	ble _08117B04
	cmp r1, #0x02
	ble _08117B00
	strb r2, [r6, #0x00]
	adds r6, #0x01
_08117B00:
	strb r2, [r6, #0x00]
	adds r6, #0x01
_08117B04:
	strb r2, [r6, #0x00]
	adds r6, #0x01
	cmp r6, r12
	bcs _08117B1A
_08117B0C:
	strb r2, [r6, #0x00]
	strb r2, [r6, #0x01]
	strb r2, [r6, #0x02]
	strb r2, [r6, #0x03]
	adds r6, #0x04
	cmp r6, r12
	bcc _08117B0C
_08117B1A:
	ldr r0, [sp, #0x034]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08117B2C: .4byte 0x03000FF4
_08117B30: .4byte 0x08201F36
