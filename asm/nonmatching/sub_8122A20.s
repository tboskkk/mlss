	.syntax unified
	.text

	thumb_func_start sub_8122A20
sub_8122A20:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [sp, #0x048]
	ldr r4, [sp, #0x04C]
	ldr r5, [sp, #0x050]
	ldr r6, [sp, #0x054]
	mov r12, r6
	ldr r6, [sp, #0x058]
	mov r8, r6
	ldr r6, [sp, #0x05C]
	mov r9, r6
	ldr r6, [sp, #0x060]
	mov r10, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x010]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x014]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x018]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x01C]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x020]
	mov r0, r12
	lsls r6, r0, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x024]
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	mov r2, r9
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	mov r5, r10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08122AF8 @ =0x08202F58
	mov r0, sp
	movs r2, #0x0C
	bl memcpy
	ldr r1, [sp, #0x010]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	bge _08122AA6
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x02
	adds r0, r4, r0
	add r0, sp
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _08122AE6
_08122AA6:
	movs r3, #0xFF
	ldr r0, [sp, #0x010]
	ands r3, r0
	ldr r1, [sp, #0x00C]
	lsls r4, r1, #0x17
	lsrs r4, r4, #0x17
	lsls r1, r5, #0x04
	lsls r0, r6, #0x03
	orrs r1, r0
	lsls r1, r1, #0x18
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x0E
	ldr r5, [sp, #0x014]
	lsls r2, r5, #0x0A
	orrs r0, r2
	orrs r3, r0
	strh r3, [r7, #0x00]
	ldr r6, [sp, #0x01C]
	lsls r0, r6, #0x0E
	lsrs r1, r1, #0x0F
	orrs r0, r1
	orrs r4, r0
	strh r4, [r7, #0x02]
	mov r1, r8
	lsls r0, r1, #0x0C
	ldr r2, [sp, #0x024]
	lsls r1, r2, #0x0A
	orrs r0, r1
	ldr r5, [sp, #0x020]
	orrs r0, r5
	strh r0, [r7, #0x04]
	adds r7, #0x08
_08122AE6:
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08122AF8: .4byte 0x08202F58
