	.syntax unified
	.text

	thumb_func_start sub_80DF5EC
sub_80DF5EC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _080DF676
_080DF5FA:
	ldr r4, [r6, #0x0C]
	ldrh r2, [r4, #0x00]
	mov r12, r2
	ldr r0, _080DF620 @ =0x0000FFFD
	cmp r12, r0
	bne _080DF624
	movs r0, #0x02
	ldsh r1, [r4, r0]
	movs r0, #0x04
	ldsh r2, [r4, r0]
	movs r0, #0x06
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r12
	bl sub_80DF024
	b _080DF666
	.byte 0x00, 0x00
_080DF620: .4byte 0x0000FFFD
_080DF624:
	movs r1, #0x12
	ldsh r5, [r6, r1]
	ldr r7, [r6, #0x08]
	cmp r7, #0x00
	beq _080DF642
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080DF642
	movs r2, #0x02
	ldsh r0, [r4, r2]
	subs r5, r5, r0
	b _080DF648
_080DF642:
	movs r1, #0x02
	ldsh r0, [r4, r1]
	adds r5, r5, r0
_080DF648:
	movs r0, #0x14
	ldsh r2, [r6, r0]
	movs r1, #0x04
	ldsh r0, [r4, r1]
	adds r2, r2, r0
	movs r0, #0x16
	ldsh r3, [r6, r0]
	movs r1, #0x06
	ldsh r0, [r4, r1]
	adds r3, r3, r0
	str r7, [sp, #0x000]
	mov r0, r12
	adds r1, r5, #0x0
	bl sub_80DF024
_080DF666:
	ldrh r1, [r4, #0x08]
	strh r1, [r6, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x0A
	str r0, [r6, #0x0C]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	beq _080DF5FA
_080DF676:
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _080DF686
	movs r0, #0x00
	str r0, [r6, #0x04]
	b _080DF68A
_080DF686:
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
_080DF68A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
