	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r1, [r0, #0x28]
	adds r4, r1, #0x0
	adds r4, #0x14
	ldr r3, [r1, #0x38]
	adds r3, #0x0C
	ldr r1, [r4, #0x04]
	ldr r2, _08110ED0 @ =0xFFFFF200
	adds r2, r1, r2
	str r2, [sp, #0x000]
	ldr r2, [r4, #0x08]
	ldr r1, _08110ED4 @ =0xFFFFFF00
	adds r1, r2, r1
	str r1, [sp, #0x004]
	ldr r1, [r4, #0x0C]
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r4, r1, r4
	str r4, [sp, #0x008]
	ldr r1, [r3, #0x04]
	ldr r4, [sp, #0x000]
	subs r4, r1, r4
	mov r10, r4
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldr r1, [r3, #0x08]
	subs r1, r1, r2
	mov r9, r1
	ldr r1, [r3, #0x0C]
	ldr r2, [sp, #0x008]
	subs r2, r1, r2
	mov r8, r2
	adds r4, r0, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _08110EC0
	mov r7, r8
	mov r6, r9
	mov r5, r10
_08110E8A:
	adds r0, r5, #0x0
	movs r1, #0x06
	bl __divsi3
	ldr r1, [sp, #0x000]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	adds r0, r6, #0x0
	movs r1, #0x06
	bl __divsi3
	ldr r2, [sp, #0x004]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	adds r0, r7, #0x0
	movs r1, #0x06
	bl __divsi3
	ldr r1, [sp, #0x008]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	add r7, r8
	add r6, r9
	add r5, r10
	cmp r4, #0x00
	bne _08110E8A
_08110EC0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08110ED0: .4byte 0xFFFFF200
_08110ED4: .4byte 0xFFFFFF00
