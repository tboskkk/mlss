	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	movs r6, #0x00
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r5, #0x00
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r3, #0x99
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r6, #0x9B
	lsls r6, r6, #0x02
	adds r1, r1, r6
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080267B8 @ =0x00008009
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	ldr r1, [r7, #0x1C]
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r9, r3
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	adds r5, r7, #0x0
	adds r5, #0x28
	adds r0, r5, r0
	ldr r0, [r0, #0x00]
	adds r6, #0xCC
	adds r1, r0, r6
	ldr r4, [r1, #0x00]
	movs r2, #0x10
	ldsh r1, [r4, r2]
	adds r0, r0, r1
	movs r3, #0xC8
	adds r3, r3, r7
	mov r8, r3
	ldr r1, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xCC
	str r6, [sp, #0x00C]
	ldr r2, [r6, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r10, r3
	ldr r6, [r3, #0x00]
	mov r12, r6
	ldr r4, [r4, #0x14]
	mov r3, r12
	bl _call_via_r4
	mov r1, r9
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r0, r1
	lsls r0, r0, #0x02
	adds r5, r5, r0
	ldr r5, [r5, #0x00]
	mov r9, r8
	ldr r2, [sp, #0x00C]
	mov r8, r2
	cmp r5, #0x00
	beq _08026724
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r4, [r0, #0x00]
	movs r6, #0x10
	ldsh r0, [r4, r6]
	adds r0, r5, r0
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	mov r5, r10
	ldr r3, [r5, #0x00]
	ldr r4, [r4, #0x14]
	bl _call_via_r4
_08026724:
	movs r6, #0x02
	ldr r1, _080267BC @ =0x0000010B
	adds r0, r7, r1
	adds r5, r7, #0x0
	adds r5, #0xA8
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	bge _08026776
	movs r2, #0x30
	adds r2, r2, r7
	mov r10, r2
_0802673A:
	mov r3, r10
	adds r3, #0x04
	mov r10, r3
	subs r3, #0x04
	ldm r3!, {r0}
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r4, [r1, #0x00]
	movs r3, #0x10
	ldsh r1, [r4, r3]
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	ldr r2, [r3, r7]
	mov r12, r2
	ldr r4, [r4, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x00]
	mov r3, r12
	bl _call_via_r4
	adds r6, #0x01
	ldr r1, _080267BC @ =0x0000010B
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0802673A
_08026776:
	ldr r0, [r5, #0x00]
	bl sub_804DFE8
	ldr r0, [r5, #0x04]
	bl sub_804DFE8
	ldr r0, [r5, #0x08]
	bl sub_804DFE8
	ldr r0, [r5, #0x0C]
	bl sub_804DFE8
	ldr r0, [r5, #0x10]
	bl sub_804DFE8
	ldr r0, [r5, #0x14]
	bl sub_804DFE8
	ldr r0, [r5, #0x18]
	bl sub_804DFE8
	ldr r0, [r5, #0x1C]
	bl sub_804DFE8
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080267B8: .4byte 0x00008009
_080267BC: .4byte 0x0000010B
