	.syntax unified
	.text

	thumb_func_start sub_8135110
sub_8135110:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x198
	adds r7, r0, #0x0
	ldr r0, _081352A8 @ =0x08198504
	mov r8, r0
	movs r6, #0xFF
	ands r1, r6
	lsls r4, r1, #0x01
	adds r0, r4, r0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _08135134
	adds r1, #0x3F
_08135134:
	asrs r1, r1, #0x06
	mov r12, r1
	ldr r5, _081352AC @ =0x08198584
	adds r0, r4, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08135146
	adds r0, #0x3F
_08135146:
	asrs r0, r0, #0x06
	mov r9, r0
	ands r2, r6
	lsls r2, r2, #0x01
	mov r4, r8
	adds r0, r2, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _0813515C
	adds r1, #0x3F
_0813515C:
	asrs r1, r1, #0x06
	mov r10, r1
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0813516C
	adds r0, #0x3F
_0813516C:
	asrs r4, r0, #0x06
	ands r3, r6
	lsls r3, r3, #0x01
	mov r2, r8
	adds r0, r3, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _08135180
	adds r1, #0x3F
_08135180:
	asrs r1, r1, #0x06
	mov r8, r1
	adds r0, r3, r5
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _08135190
	adds r0, #0x3F
_08135190:
	asrs r3, r0, #0x06
	mov r0, r12
	negs r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r0, #0x00
	ldr r6, _081352B0 @ =0x08CDC470
	str r6, [sp, #0x040]
	str r2, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	mov r5, r9
	str r5, [sp, #0x014]
	mov r5, r12
	str r5, [sp, #0x018]
	str r0, [sp, #0x01C]
	str r0, [sp, #0x020]
	str r1, [sp, #0x024]
	mov r1, r9
	str r1, [sp, #0x028]
	str r0, [sp, #0x02C]
	str r0, [sp, #0x030]
	str r0, [sp, #0x034]
	str r0, [sp, #0x038]
	str r2, [sp, #0x03C]
	mov r5, r10
	negs r1, r5
	add r5, sp, #0x044
	str r6, [r5, #0x40]
	str r4, [sp, #0x044]
	str r0, [r5, #0x04]
	str r1, [sp, #0x04C]
	str r0, [r5, #0x0C]
	str r0, [r5, #0x10]
	str r2, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1C]
	mov r1, r10
	str r1, [sp, #0x064]
	str r0, [r5, #0x24]
	str r4, [sp, #0x06C]
	str r0, [r5, #0x2C]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	str r2, [r5, #0x3C]
	mov r4, r8
	negs r4, r4
	mov r9, r4
	add r4, sp, #0x088
	str r6, [r4, #0x40]
	str r3, [r4, #0x00]
	mov r1, r8
	str r1, [r4, #0x04]
	str r0, [r4, #0x08]
	str r0, [r4, #0x0C]
	mov r1, r9
	str r1, [r4, #0x10]
	str r3, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1C]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r2, [r4, #0x28]
	str r0, [r4, #0x2C]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	str r2, [r4, #0x3C]
	adds r2, #0x10
	add r2, sp
	mov r9, r2
	mov r0, r9
	adds r1, r4, #0x0
	mov r2, sp
	bl sub_8134CAC
	add r0, sp, #0x0CC
	mov r8, r0
	mov r1, r9
	adds r2, r5, #0x0
	bl sub_8134CAC
	add r0, sp, #0x154
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_8134CAC
	add r0, sp, #0x154
	ldr r1, [r0, #0x00]
	str r1, [r7, #0x00]
	ldr r1, [r0, #0x04]
	str r1, [r7, #0x04]
	ldr r1, [r0, #0x08]
	str r1, [r7, #0x08]
	ldr r1, [r0, #0x0C]
	str r1, [r7, #0x0C]
	ldr r1, [r0, #0x10]
	str r1, [r7, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [r7, #0x14]
	ldr r1, [r0, #0x18]
	str r1, [r7, #0x18]
	ldr r1, [r0, #0x1C]
	str r1, [r7, #0x1C]
	ldr r1, [r0, #0x20]
	str r1, [r7, #0x20]
	ldr r1, [r0, #0x24]
	str r1, [r7, #0x24]
	ldr r1, [r0, #0x28]
	str r1, [r7, #0x28]
	ldr r1, [r0, #0x2C]
	str r1, [r7, #0x2C]
	ldr r1, [r0, #0x30]
	str r1, [r7, #0x30]
	ldr r1, [r0, #0x34]
	str r1, [r7, #0x34]
	ldr r1, [r0, #0x38]
	str r1, [r7, #0x38]
	ldr r1, [r0, #0x3C]
	str r1, [r7, #0x3C]
	str r6, [r0, #0x40]
	mov r1, r8
	str r6, [r1, #0x40]
	mov r2, r9
	str r6, [r2, #0x40]
	str r6, [r4, #0x40]
	str r6, [r5, #0x40]
	str r6, [sp, #0x040]
	add sp, #0x198
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081352A8: .4byte word_8198504 @ =0x08198504
_081352AC: .4byte word_8198584 @ =0x08198584
_081352B0: .4byte dword_8CDC470 @ =0x08CDC470
