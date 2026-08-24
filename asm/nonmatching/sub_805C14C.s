	.syntax unified
	.text

	thumb_func_start sub_805C14C
sub_805C14C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r1, _0805C238 @ =0x00000585
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	movs r3, #0x00
_0805C180:
	lsls r0, r3, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9F
	bls _0805C180
	ldr r7, _0805C240 @ =0x0000058E
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	mov r9, r0
	ldr r1, _0805C244 @ =0x00000594
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	str r0, [sp, #0x000]
	ldr r2, _0805C248 @ =0x00000597
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805C258
	ldr r3, _0805C24C @ =0x00000586
	adds r0, r4, r3
	ldrb r3, [r0, #0x00]
	ldr r5, _0805C250 @ =0x00000587
	adds r0, r4, r5
	ldrb r7, [r0, #0x00]
	cmp r3, r7
	bls _0805C1C0
	b _0805C598
_0805C1C0:
	subs r1, #0x0F
	adds r1, r1, r4
	mov r10, r1
	subs r2, #0x0D
	adds r2, r2, r4
	mov r8, r2
	adds r5, #0x05
	adds r5, r5, r4
	mov r12, r5
	adds r7, r0, #0x0
_0805C1D4:
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r2, r10
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r2, r2, r0
	mov r1, r8
	ldrh r0, [r1, #0x00]
	muls r0, r2
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _0805C254 @ =0x08198504
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0805C212
	adds r1, #0x3F
_0805C212:
	asrs r1, r1, #0x06
	mov r2, r12
	ldrh r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C220
	adds r0, #0xFF
_0805C220:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r5, [r7, #0x00]
	cmp r3, r5
	bls _0805C1D4
	b _0805C598
	.byte 0x00, 0x00
_0805C238: .4byte 0x00000585
_0805C23C: .4byte 0x03000E08
_0805C240: .4byte 0x0000058E
_0805C244: .4byte 0x00000594
_0805C248: .4byte 0x00000597
_0805C24C: .4byte 0x00000586
_0805C250: .4byte 0x00000587
_0805C254: .4byte word_8198504 @ =0x08198504
_0805C258:
	cmp r0, #0x01
	bne _0805C2F8
	ldr r7, _0805C2E0 @ =0x00000586
	adds r0, r4, r7
	ldrb r2, [r0, #0x00]
	ldr r1, _0805C2E4 @ =0x00000587
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	cmp r2, r3
	bls _0805C26E
	b _0805C598
_0805C26E:
	ldr r5, _0805C2E8 @ =0x00000585
	adds r5, r5, r4
	mov r8, r5
	ldr r7, _0805C2EC @ =0x08198504
	mov r10, r7
	adds r1, #0x03
	adds r1, r1, r4
	mov r12, r1
	ldr r3, _0805C2F0 @ =0x0000058C
	adds r3, r4, r3
	str r3, [sp, #0x00C]
	adds r6, r0, #0x0
_0805C286:
	ldr r5, _0805C2F4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r2, #0x02
	adds r5, r0, r1
	mov r7, r8
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r3, r1, r0
	mov r0, r9
	adds r1, r2, r0
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r1, r1, r0
	mov r7, r12
	ldrh r0, [r7, #0x00]
	muls r0, r1
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r1, [r0, r7]
	cmp r1, #0x00
	bge _0805C2BC
	adds r1, #0x3F
_0805C2BC:
	asrs r1, r1, #0x06
	ldr r7, [sp, #0x00C]
	ldrh r0, [r7, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C2CA
	adds r0, #0xFF
_0805C2CA:
	asrs r0, r0, #0x08
	ldrh r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r5, #0x02]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r6, #0x00]
	cmp r2, r0
	bls _0805C286
	b _0805C598
_0805C2E0: .4byte 0x00000586
_0805C2E4: .4byte 0x00000587
_0805C2E8: .4byte 0x00000585
_0805C2EC: .4byte word_8198504 @ =0x08198504
_0805C2F0: .4byte 0x0000058C
_0805C2F4: .4byte 0x03000E08
_0805C2F8:
	cmp r0, #0x02
	beq _0805C2FE
	b _0805C448
_0805C2FE:
	ldr r1, _0805C338 @ =0x00000585
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C344
	ldr r7, _0805C33C @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r3, _0805C340 @ =0x00000587
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C354
	.byte 0x00, 0x00
_0805C338: .4byte 0x00000585
_0805C33C: .4byte 0x00000586
_0805C340: .4byte 0x00000587
_0805C344:
	ldr r7, _0805C428 @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C354:
	ldr r2, _0805C428 @ =0x00000586
	adds r0, r4, r2
	ldrb r3, [r0, #0x00]
	ldr r7, _0805C42C @ =0x00000587
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C366
	b _0805C598
_0805C366:
	ldr r0, _0805C430 @ =0x00000585
	adds r0, r0, r4
	mov r12, r0
	ldr r1, _0805C434 @ =0x08198504
	mov r10, r1
	str r5, [sp, #0x00C]
	movs r2, #0xFF
	mov r8, r2
	ldr r5, _0805C438 @ =0x0000058A
	adds r5, r4, r5
	str r5, [sp, #0x004]
_0805C37C:
	ldr r7, _0805C43C @ =0x03000E08
	ldr r1, [r7, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r7, r9
	adds r2, r3, r7
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x004]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C3B6
	adds r0, #0x3F
_0805C3B6:
	asrs r0, r0, #0x06
	ldr r2, _0805C440 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C3C6
	adds r0, #0xFF
_0805C3C6:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C3FE
	adds r0, #0x3F
_0805C3FE:
	asrs r0, r0, #0x06
	ldr r7, _0805C444 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C40E
	adds r0, #0xFF
_0805C40E:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C37C
	b _0805C598
_0805C428: .4byte 0x00000586
_0805C42C: .4byte 0x00000587
_0805C430: .4byte 0x00000585
_0805C434: .4byte word_8198504 @ =0x08198504
_0805C438: .4byte 0x0000058A
_0805C43C: .4byte 0x03000E08
_0805C440: .4byte 0x0000058C
_0805C444: .4byte 0x00000592
_0805C448:
	ldr r3, _0805C480 @ =0x00000585
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C488
	ldr r7, _0805C484 @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	adds r3, #0x02
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C498
_0805C480: .4byte 0x00000585
_0805C484: .4byte 0x00000586
_0805C488:
	ldr r7, _0805C5CC @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C498:
	movs r2, #0xB3
	lsls r2, r2, #0x03
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1D
	bls _0805C4C8
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r3, _0805C5D4 @ =0x00000592
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0805C4C4
	ldr r7, _0805C5D8 @ =0x0000058C
	adds r1, r4, r7
	ldrh r0, [r1, #0x00]
	cmp r0, #0x01
	bhi _0805C4C8
_0805C4C4:
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0805C4C8:
	ldr r1, _0805C5CC @ =0x00000586
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	ldr r2, _0805C5D0 @ =0x00000587
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bhi _0805C598
	ldr r7, _0805C5DC @ =0x00000585
	adds r7, r7, r4
	mov r12, r7
	ldr r0, _0805C5E0 @ =0x08198504
	mov r10, r0
	str r5, [sp, #0x00C]
	movs r1, #0xFF
	mov r8, r1
	adds r2, #0x03
	adds r2, r4, r2
	str r2, [sp, #0x008]
_0805C4EE:
	ldr r5, _0805C5E4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r7, r12
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	ldr r7, [sp, #0x00C]
	adds r1, r7, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x008]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C528
	adds r0, #0x3F
_0805C528:
	asrs r0, r0, #0x06
	ldr r2, _0805C5D8 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C538
	adds r0, #0xFF
_0805C538:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C570
	adds r0, #0x3F
_0805C570:
	asrs r0, r0, #0x06
	ldr r7, _0805C5D4 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C580
	adds r0, #0xFF
_0805C580:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C4EE
_0805C598:
	ldr r3, _0805C5E8 @ =0x0000058E
	adds r2, r4, r3
	movs r5, #0xB1
	lsls r5, r5, #0x03
	adds r1, r4, r5
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r7, _0805C5EC @ =0x00000594
	adds r2, r4, r7
	ldr r0, _0805C5F0 @ =0x00000596
	adds r1, r4, r0
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C5CC: .4byte 0x00000586
_0805C5D0: .4byte 0x00000587
_0805C5D4: .4byte 0x00000592
_0805C5D8: .4byte 0x0000058C
_0805C5DC: .4byte 0x00000585
_0805C5E0: .4byte word_8198504 @ =0x08198504
_0805C5E4: .4byte 0x03000E08
_0805C5E8: .4byte 0x0000058E
_0805C5EC: .4byte 0x00000594
_0805C5F0: .4byte 0x00000596
