	.syntax unified
	.text

	thumb_func_start sub_81773F8
sub_81773F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r8, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	mov r10, r0
	ldm r7!, {r1}
	str r1, [sp, #0x01C]
	ldm r7!, {r2}
	str r2, [sp, #0x020]
	ldm r7!, {r3}
	str r3, [sp, #0x024]
	ldm r7!, {r4}
	str r4, [sp, #0x028]
	mov r5, r8
	ldr r5, [r5, #0x08]
	str r5, [sp, #0x02C]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x018]
	adds r0, r5, #0x0
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r6, #0x00
	str r6, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x03C]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x040]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x044]
	movs r3, #0x04
	str r3, [sp, #0x038]
_08177450:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r4, r10
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08177468
	adds r0, #0xFF
_08177468:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _08177476
	adds r0, #0xFF
_08177476:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _08177486
	adds r0, #0xFF
_08177486:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x028]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _08177570 @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _081774A2
	adds r0, #0x3F
_081774A2:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08177574 @ =0x08198504
	mov r9, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _081774B6
	adds r0, #0x3F
_081774B6:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081774C2
	adds r0, #0xFF
_081774C2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _081774D0
	adds r0, #0x3F
_081774D0:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _081774E0
	adds r0, #0x3F
_081774E0:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081774EC
	adds r0, #0xFF
_081774EC:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08177570 @ =0x08198584
	adds r5, #0x40
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _08177500
	adds r0, #0x3F
_08177500:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r9
	adds r4, #0x40
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08177512
	adds r0, #0x3F
_08177512:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817751E
	adds r0, #0xFF
_0817751E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0817752C
	adds r0, #0x3F
_0817752C:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0817753C
	adds r0, #0x3F
_0817753C:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817754C
	adds r0, #0xFF
_0817754C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08177578
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08177568
	adds r0, #0xFF
_08177568:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817758A
	.byte 0x00, 0x00
_08177570: .4byte 0x08198584
_08177574: .4byte 0x08198504
_08177578:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08177586
	adds r0, #0xFF
_08177586:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817758A:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817759A
	adds r0, #0xFF
_0817759A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081775AE
	adds r0, #0xFF
_081775AE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x040]
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
	ldr r0, [sp, #0x044]
	ldr r1, [sp, #0x030]
	bl sub_807C564
	ldr r0, [sp, #0x034]
	cmp r0, #0x00
	bne _081775EA
	ldr r0, _08177638 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x034]
_081775EA:
	ldr r2, [sp, #0x038]
	subs r2, #0x01
	str r2, [sp, #0x038]
	cmp r2, #0x00
	blt _081775F6
	b _08177450
_081775F6:
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	beq _08177604
	ldr r0, _08177638 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08177604:
	ldr r4, [sp, #0x01C]
	add r10, r4
	lsls r0, r4, #0x01
	adds r0, r0, r4
	cmp r0, #0x00
	bge _08177612
	adds r0, #0x03
_08177612:
	asrs r0, r0, #0x02
	str r0, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	ldr r6, [sp, #0x024]
	adds r5, r5, r6
	str r5, [sp, #0x020]
	adds r6, #0x01
	str r6, [sp, #0x024]
	ldr r0, [sp, #0x028]
	adds r0, #0x06
	str r0, [sp, #0x028]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817763C
	negs r0, r5
	b _0817763E
_08177638: .4byte 0x03000D74
_0817763C:
	ldr r0, [sp, #0x020]
_0817763E:
	cmp r0, #0x00
	bge _08177644
	adds r0, #0x07
_08177644:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x02C]
	strh r0, [r3, #0x0C]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r4, #0x0
	ldr r5, [sp, #0x020]
	subs r0, r0, r5
	strh r0, [r3, #0x04]
	strh r0, [r3, #0x06]
	mov r6, r8
	ldr r7, [r6, #0x0C]
	mov r0, r10
	stm r7!, {r0}
	ldr r1, [sp, #0x01C]
	stm r7!, {r1}
	stm r7!, {r5}
	ldr r2, [sp, #0x024]
	stm r7!, {r2}
	ldr r3, [sp, #0x028]
	str r3, [r7, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
