	.syntax unified
	.text

	thumb_func_start sub_801DC4C
sub_801DC4C:
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
	ldr r6, [sp, #0x058]
	mov r8, r6
	ldr r6, [sp, #0x05C]
	mov r9, r6
	add r6, sp, #0x060
	mov r10, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x004]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x010]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	str r0, [sp, #0x014]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x018]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x01C]
	ldr r2, [sp, #0x054]
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x020]
	mov r6, r8
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x024]
	mov r2, r10
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	beq _0801DCF2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	subs r2, r0, r2
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	subs r3, r3, r0
	mov r0, r12
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	subs r1, r4, r1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r1, #0x0
	muls r0, r3
	subs r2, r2, r0
	cmp r2, #0x00
	blt _0801DD70
_0801DCF2:
	ldr r0, [r7, #0x08]
	ldr r1, [r7, #0x18]
	bl _call_via_r1
	ldr r2, [sp, #0x004]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r10, r2
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r9, r0
	ldr r2, [sp, #0x010]
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x014]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_801D680
	ldr r2, [sp, #0x020]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	str r6, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	mov r3, r8
	bl sub_801D680
	ldr r0, [sp, #0x018]
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	ldr r2, [sp, #0x01C]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	adds r2, r6, #0x0
	adds r3, r5, #0x0
	bl sub_801D680
	mov r6, r9
	str r6, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	mov r3, r10
	bl sub_801D680
	adds r0, r7, #0x0
	ldr r1, [sp, #0x024]
	bl sub_801DA4C
_0801DD70:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
