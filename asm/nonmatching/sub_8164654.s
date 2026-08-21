	.syntax unified
	.text

	thumb_func_start sub_8164654
sub_8164654:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x004]
	ldr r1, [r0, #0x24]
	ldr r2, _081647E4 @ =0x05000048
	mov r0, sp
	bl CpuSet
	ldr r0, [sp, #0x008]
	adds r0, #0x20
	ldr r2, [sp, #0x004]
	ldr r1, [r2, #0x24]
	movs r2, #0x08
	bl CpuFastSet
	ldr r0, [sp, #0x008]
	adds r0, #0x40
	ldr r2, [sp, #0x004]
	ldr r1, [r2, #0x24]
	adds r1, #0x80
	movs r2, #0x08
	bl CpuFastSet
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x24]
	mov r12, r0
	movs r1, #0x0F
	mov r10, r1
	mov r4, r12
	adds r4, #0x60
	mov r7, r12
	adds r7, #0x40
	ldr r2, [sp, #0x008]
	str r2, [sp, #0x010]
	adds r0, r2, #0x0
	adds r0, #0x3C
	str r0, [sp, #0x014]
	movs r1, #0x00
	str r1, [sp, #0x018]
	movs r2, #0x07
	str r2, [sp, #0x00C]
_081646B6:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x24]
	ldr r2, [sp, #0x018]
	adds r0, r2, r0
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x20]
	adds r0, #0xA0
	ldr r1, [r2, #0x20]
	str r1, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	ldr r1, [sp, #0x018]
	mov r8, r1
	ldr r5, [sp, #0x008]
	adds r5, #0x20
	movs r2, #0x07
	lsls r6, r2, #0x02
_081646DA:
	mov r0, r9
	lsls r2, r0, #0x02
	ldr r0, [r5, #0x00]
	mov r1, r8
	lsrs r0, r1
	mov r1, r10
	ands r0, r1
	lsls r0, r2
	ldr r1, [r7, #0x00]
	orrs r1, r0
	str r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	mov r1, r8
	lsrs r0, r1
	mov r1, r10
	ands r0, r1
	lsls r0, r6
	ldr r1, [r4, #0x00]
	orrs r1, r0
	str r1, [r4, #0x00]
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x40]
	lsrs r0, r2
	mov r2, r10
	ands r0, r2
	lsls r0, r6
	ldr r1, [r4, #0x60]
	orrs r1, r0
	str r1, [r4, #0x60]
	subs r3, r6, #0x4
	mov r2, r9
	adds r2, #0x01
	lsls r2, r2, #0x02
	ldr r0, [r5, #0x04]
	mov r1, r8
	lsrs r0, r1
	mov r1, r10
	ands r0, r1
	lsls r0, r2
	ldr r1, [r7, #0x00]
	orrs r1, r0
	str r1, [r7, #0x00]
	ldr r0, [r5, #0x04]
	mov r1, r8
	lsrs r0, r1
	mov r1, r10
	ands r0, r1
	lsls r0, r3
	ldr r1, [r4, #0x00]
	orrs r1, r0
	str r1, [r4, #0x00]
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x40]
	lsrs r0, r2
	mov r2, r10
	ands r0, r2
	lsls r0, r3
	ldr r1, [r4, #0x60]
	orrs r1, r0
	str r1, [r4, #0x60]
	adds r5, #0x08
	subs r6, #0x08
	movs r0, #0x02
	add r9, r0
	mov r1, r9
	cmp r1, #0x07
	ble _081646DA
	adds r4, #0x04
	adds r7, #0x04
	ldr r2, [sp, #0x010]
	adds r2, #0x04
	str r2, [sp, #0x010]
	ldr r0, [sp, #0x014]
	subs r0, #0x04
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x018]
	adds r1, #0x04
	str r1, [sp, #0x018]
	ldr r2, [sp, #0x00C]
	subs r2, #0x01
	str r2, [sp, #0x00C]
	cmp r2, #0x00
	bge _081646B6
	mov r0, r12
	adds r0, #0xDC
	mov r1, r12
	adds r1, #0xE0
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xCC
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xC8
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	stm r1!, {r0}
	mov r0, r12
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [sp, #0x008]
	movs r2, #0x08
	bl CpuFastSet
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081647E4: .4byte 0x05000048
