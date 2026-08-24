	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	strh r1, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x02
_08059540:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x004]
	cmp r2, #0x02
	beq _08059634
	adds r0, r7, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	cmp r0, #0x00
	bne _08059634
	lsls r6, r2, #0x01
	movs r0, #0x4E
	adds r0, r0, r7
	mov r8, r0
	adds r0, r0, r6
	mov r12, r0
	adds r1, r7, #0x0
	adds r1, #0x72
	adds r1, r1, r6
	movs r2, #0x5E
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	adds r0, r7, #0x0
	adds r0, #0x7E
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x54
	adds r2, r4, r6
	str r2, [sp, #0x008]
	adds r1, r7, #0x0
	adds r1, #0x78
	adds r1, r1, r6
	adds r3, r7, #0x0
	adds r3, #0x64
	movs r5, #0x00
	ldsh r2, [r3, r5]
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r2, r12
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r5, r4, #0x0
	str r3, [sp, #0x000]
	cmp r0, #0x00
	bge _080595D2
	mov r0, r10
	strh r0, [r2, #0x00]
	b _080595EA
_080595D2:
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080595EA
	mov r3, r12
	strh r1, [r3, #0x00]
_080595EA:
	ldr r0, [sp, #0x004]
	asrs r3, r0, #0x0F
	adds r2, r5, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080595FE
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08059612
_080595FE:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08059612
	strh r1, [r2, #0x00]
_08059612:
	ldr r2, [sp, #0x004]
	asrs r1, r2, #0x0F
	adds r4, r7, #0x0
	adds r4, #0x5A
	adds r2, r4, r1
	mov r3, r8
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x60
	adds r2, r3, r1
	adds r1, r5, r1
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r5, r3, #0x0
	b _08059670
_08059634:
	ldr r5, [sp, #0x004]
	asrs r2, r5, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r7, #0x22]
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r1, [r7, #0x24]
	strh r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x5A
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r2, r1, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r2, #0x00]
	movs r0, #0x5E
	adds r0, r0, r7
	mov r9, r0
	adds r2, r7, #0x0
	adds r2, #0x64
	str r2, [sp, #0x000]
	adds r4, r3, #0x0
	adds r5, r1, #0x0
_08059670:
	ldr r3, [sp, #0x004]
	asrs r1, r3, #0x10
	lsls r2, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x66
	adds r0, r0, r2
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x6C
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	subs r1, #0x01
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r1, #0x00
	blt _08059694
	b _08059540
_08059694:
	ldr r3, _080596F0 @ =0x02000014
	ldrh r2, [r4, #0x00]
	ldr r1, _080596F4 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	adds r0, r7, #0x0
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _080596F8 @ =0x0200001C
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080596FC @ =0x02000016
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x000]
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_80584F8
	ldr r0, _08059700 @ =0x00000579
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080596F0: .4byte 0x02000014
_080596F4: .4byte 0x000001FF
_080596F8: .4byte 0x0200001C
_080596FC: .4byte 0x02000016
_08059700: .4byte 0x00000579
