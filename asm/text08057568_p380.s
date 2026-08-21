	.include "asm/macros.inc"

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
_0805C254: .4byte 0x08198504
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
_0805C2EC: .4byte 0x08198504
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
_0805C434: .4byte 0x08198504
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
_0805C5E0: .4byte 0x08198504
_0805C5E4: .4byte 0x03000E08
_0805C5E8: .4byte 0x0000058E
_0805C5EC: .4byte 0x00000594
_0805C5F0: .4byte 0x00000596
	thumb_func_start sub_805C5F4
sub_805C5F4:
	push {r4, r5, lr}
	ldr r2, _0805C62C @ =0x04000014
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r4, _0805C630 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x08]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x0A]
	ldr r0, _0805C634 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C638 @ =0x040000B0
	ldr r1, _0805C63C @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C640 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
_0805C62C: .4byte 0x04000014
_0805C630: .4byte 0x03000E0C
_0805C634: .4byte 0x03000E08
_0805C638: .4byte 0x040000B0
_0805C63C: .4byte 0x040000BA
_0805C640: .4byte 0xA6400001
	thumb_func_start sub_805C644
sub_805C644:
	push {r4, r5, lr}
	ldr r0, _0805C694 @ =0x03000DD0
	ldrb r1, [r0, #0x0B]
	movs r0, #0x1F
	ands r0, r1
	ldr r1, _0805C698 @ =0x083B8658
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	ldr r1, _0805C69C @ =0x04000014
	adds r5, r0, r1
	ldr r4, _0805C6A0 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	strh r2, [r5, #0x00]
	ldr r2, _0805C6A4 @ =0x04000016
	adds r0, r0, r2
	ldrh r2, [r1, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _0805C6A8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C6AC @ =0x040000B0
	ldr r1, _0805C6B0 @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C6B4 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C694: .4byte 0x03000DD0
_0805C698: .4byte 0x083B8658
_0805C69C: .4byte 0x04000014
_0805C6A0: .4byte 0x03000E0C
_0805C6A4: .4byte 0x04000016
_0805C6A8: .4byte 0x03000E08
_0805C6AC: .4byte 0x040000B0
_0805C6B0: .4byte 0x040000BA
_0805C6B4: .4byte 0xA6400001
	thumb_func_start sub_805C6B8
sub_805C6B8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0805C6F0 @ =0x040000BA
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r0, _0805C6F4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6D6
	bl free_heap_8018D9C
_0805C6D6:
	ldr r0, _0805C6F8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6E2
	bl free_heap_8018D9C
_0805C6E2:
	ldr r1, _0805C6FC @ =0x00000584
	adds r0, r4, r1
	strb r5, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C6F0: .4byte 0x040000BA
_0805C6F4: .4byte 0x03000E0C
_0805C6F8: .4byte 0x03000E08
_0805C6FC: .4byte 0x00000584
	.byte 0x10, 0xB5, 0xA0, 0x24, 0xE4, 0x04, 0x08, 0x48, 0x01, 0x68, 0x08, 0x88, 0x20, 0x80, 0x07, 0x4A
	.byte 0x07, 0x4B, 0x00, 0x20, 0x18, 0x80, 0x02, 0x31, 0x11, 0x60, 0x54, 0x60, 0x05, 0x48, 0x90, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x04, 0x0E, 0x00, 0x03, 0xB0, 0x00, 0x00, 0x04
	.byte 0xBA, 0x00, 0x00, 0x04, 0x01, 0x00, 0x40, 0xA2, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_805C73C
sub_805C73C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _0805C77C @ =0x08CDC2B8
	str r0, [r5, #0x18]
	ldr r0, _0805C780 @ =0x040000BA
	movs r4, #0x00
	strh r4, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	strb r4, [r5, #0x1C]
	ldr r0, _0805C784 @ =0x03000E04
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C762
	bl free_heap_8018D9C
_0805C762:
	ldr r0, _0805C788 @ =0x03000E00
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C76E
	bl free_heap_8018D9C
_0805C76E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805C77C: .4byte 0x08CDC2B8
_0805C780: .4byte 0x040000BA
_0805C784: .4byte 0x03000E04
_0805C788: .4byte 0x03000E00
	thumb_func_start sub_805C78C
sub_805C78C:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0805C7B0 @ =0x0000057C
	adds r3, r0, r4
	ldr r3, [r3, #0x00]
	adds r4, #0x04
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_8115048
	pop {r4}
	pop {r0}
	bx r0
_0805C7B0: .4byte 0x0000057C
	thumb_func_start sub_805C7B4
sub_805C7B4:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0805C814 @ =0x0000057C
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0805C80A
	ldr r0, _0805C818 @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805C81C @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0805C80A
	lsls r0, r4, #0x02
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805C80A
	ldrb r2, [r2, #0x01]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	orrs r2, r0
	ldr r0, _0805C820 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r5, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805C80A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C814: .4byte 0x0000057C
_0805C818: .4byte 0x03000DD0
_0805C81C: .4byte 0x083B79C4
_0805C820: .4byte 0x0000FFFF
	thumb_func_start sub_805C824
sub_805C824:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r4, #0x01]
	str r1, [sp, #0x004]
	ldrb r3, [r4, #0x02]
	mov r12, r3
	ldrb r0, [r4, #0x03]
	mov r9, r0
	movs r1, #0x04
	mov r10, r1
	movs r2, #0x00
	cmp r2, r9
	bcs _0805C894
_0805C84E:
	ldr r3, [sp, #0x004]
	adds r1, r3, r2
	mov r3, r8
	ldrh r0, [r3, #0x26]
	muls r0, r1
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x00
	adds r7, r2, #0x1
	cmp r3, r12
	bcs _0805C88C
	mov r5, r8
	adds r5, #0x9C
_0805C86C:
	ldr r2, [r5, #0x00]
	adds r0, r6, r3
	adds r2, r2, r0
	mov r1, r10
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	adds r1, r4, r1
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r12
	bcc _0805C86C
_0805C88C:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r9
	bcc _0805C84E
_0805C894:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805C8A4
sub_805C8A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C900 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C8F6
	ldr r1, _0805C904 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C8C2:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C8DE
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C8DE:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C8C2
_0805C8F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C900: .4byte 0x03000DD0
_0805C904: .4byte 0x083B7108
	thumb_func_start sub_805C908
sub_805C908:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C964 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C95A
	ldr r1, _0805C968 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C926:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	lsls r0, r0, #0x09
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C942
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C942:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C926
_0805C95A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C964: .4byte 0x03000DD0
_0805C968: .4byte 0x083B7108
	.byte 0x70, 0xB5, 0x1E, 0x1C, 0x12, 0x04, 0x89, 0x04, 0x0D, 0x0C, 0x00, 0x23, 0x92, 0x0B, 0x93, 0x42
	.byte 0x0E, 0xDA, 0x04, 0x1C, 0xA8, 0x34, 0xE9, 0x18, 0x20, 0x68, 0x49, 0x00, 0x09, 0x18, 0x58, 0x00
	.byte 0x80, 0x19, 0x00, 0x88, 0x08, 0x80, 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x93, 0x42, 0xF2, 0xDB
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805C9A4
sub_805C9A4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805C9D4 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805C9D8 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C9D4: .4byte 0x08940C9C
_0805C9D8: .4byte 0x06004000
	thumb_func_start sub_805C9DC
sub_805C9DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x008]
	ldrb r7, [r0, #0x0A]
	cmp r7, #0x00
	beq _0805C9FA
	movs r0, #0x00
	b _0805CB10
_0805C9FA:
	movs r6, #0x80
	lsls r6, r6, #0x02
	ldr r2, _0805CB20 @ =0x081E2830
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r4, _0805CB24 @ =0x083A7894
	ldr r2, [sp, #0x008]
	lsls r5, r2, #0x04
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _0805CB28 @ =0x01000080
	add r0, sp, #0x004
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _0805CB2C @ =0x06003E00
	movs r2, #0x02
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0xA0
	lsls r0, r0, #0x03
	ldr r2, _0805CB30 @ =0x081E2838
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	str r7, [sp, #0x004]
	ldr r2, _0805CB34 @ =0x01000140
	add r0, sp, #0x004
	bl CpuFastSet
	adds r4, #0x04
	adds r5, r5, r4
	ldr r5, [r5, #0x00]
	mov r10, r5
	movs r1, #0x00
	mov r7, r8
	ldr r6, [r7, #0x00]
_0805CA62:
	movs r4, #0x00
	lsls r0, r1, #0x04
	adds r2, r1, #0x1
	mov r9, r2
	lsls r7, r1, #0x05
	str r7, [sp, #0x00C]
	subs r0, r0, r1
	mov r12, r0
	movs r2, #0x13
	subs r0, r2, r1
	lsls r5, r0, #0x05
_0805CA78:
	ldr r7, [sp, #0x00C]
	adds r1, r7, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r0, r12
	adds r3, r0, r4
	add r3, r10
	ldr r2, _0805CB38 @ =0x0000F1F0
	adds r0, r2, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	subs r2, #0x1D
	ldr r0, [sp, #0x00C]
	subs r1, r0, r2
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB3C @ =0x0000F5F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r1, r5, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB40 @ =0x0000F9F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r2, r5, r2
	lsls r2, r2, #0x01
	adds r2, r2, r6
	ldr r1, _0805CB44 @ =0x0000FDF0
	adds r0, r1, #0x0
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0E
	bls _0805CA78
	mov r2, r9
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x09
	bls _0805CA62
	ldr r1, _0805CB48 @ =0x06003000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _0805CB4C @ =0x02000008
	movs r7, #0xC0
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805CB50 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r1, sp
	ldrb r2, [r1, #0x08]
	mov r1, r8
	strb r2, [r1, #0x0B]
	strh r0, [r1, #0x08]
	movs r0, #0x01
	strb r0, [r1, #0x0A]
_0805CB10:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CB20: .4byte 0x081E2830
_0805CB24: .4byte 0x083A7894
_0805CB28: .4byte 0x01000080
_0805CB2C: .4byte 0x06003E00
_0805CB30: .4byte 0x081E2838
_0805CB34: .4byte 0x01000140
_0805CB38: .4byte 0x0000F1F0
_0805CB3C: .4byte 0x0000F5F0
_0805CB40: .4byte 0x0000F9F0
_0805CB44: .4byte 0x0000FDF0
_0805CB48: .4byte 0x06003000
_0805CB4C: .4byte 0x02000008
_0805CB50: .4byte 0x02000010
	thumb_func_start sub_805CB54
sub_805CB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x0A]
	cmp r0, #0x00
	bne _0805CB6A
_0805CB66:
	movs r0, #0x00
	b _0805CC6E
_0805CB6A:
	ldr r1, _0805CBC0 @ =0x083A7894
	ldrb r0, [r4, #0x0B]
	lsls r0, r0, #0x04
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x00
	ldr r6, [r4, #0x04]
_0805CB7C:
	ldrh r0, [r4, #0x08]
	adds r2, r1, #0x1
	mov r8, r2
	cmp r1, r0
	bhi _0805CC02
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x0F
	bls _0805CB92
	movs r7, #0x0F
_0805CB92:
	movs r3, #0x00
	movs r0, #0x03
	mov r12, r0
	lsls r5, r1, #0x05
_0805CB9A:
	lsrs r0, r3, #0x02
	lsls r0, r0, #0x04
	adds r0, r0, r7
	add r0, r9
	ldrb r2, [r0, #0x00]
	mov r0, r12
	bics r0, r3
	lsls r0, r0, #0x01
	asrs r2, r0
	mov r1, r12
	ands r2, r1
	cmp r2, #0x01
	beq _0805CBD8
	cmp r2, #0x01
	bgt _0805CBC4
	cmp r2, #0x00
	beq _0805CBCE
	b _0805CBF6
	.byte 0x00, 0x00
_0805CBC0: .4byte 0x083A7894
_0805CBC4:
	cmp r2, #0x02
	beq _0805CBE2
	cmp r2, #0x03
	beq _0805CBEC
	b _0805CBF6
_0805CBCE:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0805CBF6
_0805CBD8:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x90
	b _0805CBF4
_0805CBE2:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x09
	b _0805CBF4
_0805CBEC:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x99
_0805CBF4:
	strb r1, [r0, #0x00]
_0805CBF6:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r6, [r4, #0x04]
	cmp r3, #0x1F
	bls _0805CB9A
_0805CC02:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x0F
	bls _0805CB7C
	ldr r1, _0805CC5C @ =0x06003E00
	movs r2, #0x80
	lsls r2, r2, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805CC6C
	movs r0, #0x00
	strb r0, [r4, #0x0A]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0805CC3A
	bl free_heap_8018D9C
_0805CC3A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805CC44
	bl free_heap_8018D9C
_0805CC44:
	ldr r0, _0805CC60 @ =0x083A7894
	ldrb r1, [r4, #0x0B]
	lsls r1, r1, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _0805CB66
	ldr r1, _0805CC64 @ =0x02000008
	ldr r2, _0805CC68 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	b _0805CB66
_0805CC5C: .4byte 0x06003E00
_0805CC60: .4byte 0x083A7894
_0805CC64: .4byte 0x02000008
_0805CC68: .4byte 0x00001508
_0805CC6C:
	movs r0, #0x01
_0805CC6E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x72, 0x60, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7
	.byte 0x87, 0xF8, 0x20, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7, 0x82, 0xF8, 0x06, 0x48, 0xE1, 0x7A
	.byte 0x09, 0x01, 0x09, 0x18, 0x08, 0x7B, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x49, 0x04, 0x4A, 0x10, 0x1C
	.byte 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x78, 0x3A, 0x08, 0x08, 0x00, 0x00, 0x02
	.byte 0x08, 0x15, 0x00, 0x00
