	.syntax unified
	.text

	thumb_func_start sub_80E05B0
sub_80E05B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	ldr r0, _080E0718 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E05CE
	b _080E0708
_080E05CE:
	ldr r0, _080E071C @ =0x03000FDC
	ldr r5, [r0, #0x00]
	ldr r7, _080E0720 @ =0x000052F0
	adds r7, r7, r5
	mov r9, r7
	adds r3, #0x10
	adds r0, r1, r3
	ldrb r6, [r0, #0x00]
	ldr r1, _080E0724 @ =0x08198584
	movs r0, #0xFF
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _080E05F2
	adds r0, #0x3F
_080E05F2:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _080E0728 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080E0604
	adds r0, #0x3F
_080E0604:
	asrs r7, r0, #0x06
	cmp r6, #0x00
	ble _080E06C6
	ldr r2, _080E072C @ =0x000052F4
	adds r2, r2, r5
	mov r12, r2
	adds r4, r6, #0x0
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _080E0658
	ldr r1, [r2, #0x00]
	ldr r3, [r2, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E062E
	adds r0, #0xFF
_080E062E:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x00]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0644
	adds r0, #0xFF
_080E0644:
	asrs r0, r0, #0x08
	mov r3, r12
	str r0, [r3, #0x04]
	movs r0, #0xA6
	lsls r0, r0, #0x07
	adds r0, r0, r5
	mov r12, r0
	subs r4, r6, #0x1
	cmp r4, #0x00
	beq _080E06C6
_080E0658:
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r3, [r2, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E066E
	adds r0, #0xFF
_080E066E:
	asrs r0, r0, #0x08
	mov r5, r12
	str r0, [r5, #0x00]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0684
	adds r0, #0xFF
_080E0684:
	asrs r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x04]
	mov r5, r12
	adds r5, #0x0C
	ldr r1, [r1, #0x0C]
	ldr r3, [r5, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E06A2
	adds r0, #0xFF
_080E06A2:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x0C]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E06B8
	adds r0, #0xFF
_080E06B8:
	asrs r0, r0, #0x08
	str r0, [r5, #0x04]
	movs r3, #0x18
	add r12, r3
	subs r4, #0x02
	cmp r4, #0x00
	bne _080E0658
_080E06C6:
	mov r5, r8
	cmp r5, #0x00
	bge _080E0708
	movs r4, #0x00
	subs r6, #0x01
	cmp r4, r6
	bge _080E0708
	lsls r0, r6, #0x01
	adds r0, r0, r6
	lsls r0, r0, #0x02
	add r0, r9
	mov r8, r0
	mov r2, r9
_080E06E0:
	mov r1, sp
	adds r0, r2, #0x0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	adds r1, r2, #0x0
	mov r0, r8
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	mov r1, r8
	mov r0, sp
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	adds r2, #0x0C
	adds r4, #0x01
	movs r7, #0x0C
	negs r7, r7
	add r8, r7
	subs r6, #0x01
	cmp r4, r6
	blt _080E06E0
_080E0708:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E0718: .4byte 0x03000FD8
_080E071C: .4byte 0x03000FDC
_080E0720: .4byte 0x000052F0
_080E0724: .4byte word_8198584 @ =0x08198584
_080E0728: .4byte word_8198504 @ =0x08198504
_080E072C: .4byte 0x000052F4
