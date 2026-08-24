	.syntax unified
	.text

	thumb_func_start sub_81723C0
sub_81723C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r6, r0, #0x0
	ldr r0, [r6, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r9, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	mov r10, r2
	ldr r0, [r6, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x01C]
	movs r3, #0x00
	str r3, [sp, #0x020]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x01C]
	bl sub_807F9A8
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x028]
	mov r7, sp
	adds r7, #0x14
	str r7, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x030]
	movs r1, #0x01
	str r1, [sp, #0x024]
_08172418:
	mov r2, r8
	ldm r2!, {r0}
	str r0, [sp, #0x00C]
	ldm r2!, {r1}
	str r1, [sp, #0x010]
	adds r3, r2, #0x0
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r4, r9
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817243A
	adds r0, #0xFF
_0817243A:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _08172448
	adds r0, #0xFF
_08172448:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08172456
	adds r0, #0xFF
_08172456:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r7, _081724DC @ =0x08198584
	mov r12, r7
	mov r4, r12
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r0, #0x00
	bge _0817246C
	adds r0, #0x3F
_0817246C:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r4, _081724E0 @ =0x08198504
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r0, #0x00
	bge _0817247C
	adds r0, #0x3F
_0817247C:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08172488
	adds r0, #0xFF
_08172488:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r1, r12
	movs r7, #0x00
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _08172498
	adds r0, #0x3F
_08172498:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _081724E0 @ =0x08198504
	movs r7, #0x00
	ldsh r0, [r2, r7]
	cmp r0, #0x00
	bge _081724AA
	adds r0, #0x3F
_081724AA:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081724B6
	adds r0, #0xFF
_081724B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, _081724E4 @ =0xFFFFFC00
	adds r0, r4, r1
	str r0, [sp, #0x010]
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081724E8
	movs r2, #0x12
	ldsh r1, [r6, r2]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _081724D6
	adds r0, #0xFF
_081724D6:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081724F8
_081724DC: .4byte 0x08198584
_081724E0: .4byte 0x08198504
_081724E4: .4byte 0xFFFFFC00
_081724E8:
	movs r3, #0x12
	ldsh r1, [r6, r3]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _081724F4
	adds r0, #0xFF
_081724F4:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081724F8:
	str r0, [sp, #0x00C]
	movs r4, #0x14
	ldsh r1, [r6, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08172506
	adds r0, #0xFF
_08172506:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r7, #0x16
	ldsh r1, [r6, r7]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08172518
	adds r0, #0xFF
_08172518:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
	movs r3, #0x00
	bl sub_807FBD8
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x030]
	ldr r1, [sp, #0x01C]
	bl sub_807C564
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _08172554
	ldr r0, _081725A0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x020]
_08172554:
	ldr r2, [sp, #0x024]
	subs r2, #0x01
	str r2, [sp, #0x024]
	cmp r2, #0x00
	blt _08172560
	b _08172418
_08172560:
	ldr r3, [sp, #0x020]
	cmp r3, #0x00
	beq _0817256E
	ldr r0, _081725A0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817256E:
	add r9, r10
	mov r4, r10
	lsls r0, r4, #0x01
	add r0, r10
	cmp r0, #0x00
	bge _0817257C
	adds r0, #0x03
_0817257C:
	asrs r0, r0, #0x02
	mov r10, r0
	ldr r6, [r6, #0x0C]
	mov r8, r6
	mov r7, r9
	mov r0, r8
	stm r0!, {r7}
	mov r1, r10
	str r1, [r0, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081725A0: .4byte 0x03000D74
