	.syntax unified
	.text

	thumb_func_start sub_81733E4
sub_81733E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	adds r7, r0, #0x0
	ldr r6, [r7, #0x0C]
	ldm r6!, {r0}
	mov r9, r0
	ldm r6!, {r1}
	str r1, [sp, #0x01C]
	ldm r6!, {r2}
	mov r10, r2
	ldm r6!, {r3}
	str r3, [sp, #0x020]
	ldm r6!, {r4}
	str r4, [sp, #0x024]
	ldr r5, [r7, #0x08]
	str r5, [sp, #0x028]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x018]
	adds r0, r5, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r0, #0x00
	str r0, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x03C]
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x040]
	movs r4, #0x04
	str r4, [sp, #0x034]
_0817343A:
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r5, r9
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _08173452
	adds r0, #0xFF
_08173452:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _08173460
	adds r0, #0xFF
_08173460:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817346E
	adds r0, #0xFF
_0817346E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r0, _081735B8 @ =0x08198584
	mov r8, r0
	ldr r4, _081735BC @ =0x081985E4
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08173484
	adds r0, #0x3F
_08173484:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _081735C0 @ =0x08198504
	mov r12, r0
	mov r4, r12
	adds r4, #0x60
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817349A
	adds r0, #0x3F
_0817349A:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081734A6
	adds r0, #0xFF
_081734A6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r1, _081735BC @ =0x081985E4
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081734B6
	adds r0, #0x3F
_081734B6:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _081734C6
	adds r0, #0x3F
_081734C6:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081734D2
	adds r0, #0xFF
_081734D2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	adds r1, r3, #0x0
	mov r5, r8
	adds r5, #0xA4
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _081734E6
	adds r0, #0x3F
_081734E6:
	asrs r0, r0, #0x06
	adds r2, r1, #0x0
	muls r2, r0
	mov r4, r12
	adds r4, #0xA4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _081734FA
	adds r0, #0x3F
_081734FA:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x00C]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08173508
	adds r0, #0xFF
_08173508:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08173516
	adds r0, #0x3F
_08173516:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08173524
	adds r0, #0x3F
_08173524:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08173530
	adds r0, #0xFF
_08173530:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r2, r3, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	add r8, r1
	mov r4, r8
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817354C
	adds r0, #0x3F
_0817354C:
	asrs r0, r0, #0x06
	muls r2, r0
	add r12, r1
	mov r1, r12
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _0817355E
	adds r0, #0x3F
_0817355E:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x010]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817356C
	adds r0, #0xFF
_0817356C:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	mov r5, r8
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0817357C
	adds r0, #0x3F
_0817357C:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r12
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0817358C
	adds r0, #0x3F
_0817358C:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08173598
	adds r0, #0xFF
_08173598:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081735C4
	movs r5, #0x12
	ldsh r1, [r7, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081735B2
	adds r0, #0xFF
_081735B2:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081735D4
_081735B8: .4byte word_8198584 @ =0x08198584
_081735BC: .4byte word_81985E4 @ =0x081985E4
_081735C0: .4byte word_8198504 @ =0x08198504
_081735C4:
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081735D0
	adds r0, #0xFF
_081735D0:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081735D4:
	str r0, [sp, #0x00C]
	movs r2, #0x14
	ldsh r1, [r7, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081735E2
	adds r0, #0xFF
_081735E2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r3, #0x16
	ldsh r1, [r7, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081735F4
	adds r0, #0xFF
_081735F4:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x038]
	ldr r2, [sp, #0x03C]
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
	ldr r0, [sp, #0x040]
	ldr r1, [sp, #0x02C]
	bl sub_807C564
	ldr r4, [sp, #0x030]
	cmp r4, #0x00
	bne _08173630
	ldr r0, _08173678 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r5, #0x01
	str r5, [sp, #0x030]
_08173630:
	ldr r0, [sp, #0x034]
	subs r0, #0x01
	str r0, [sp, #0x034]
	cmp r0, #0x00
	blt _0817363C
	b _0817343A
_0817363C:
	ldr r1, [sp, #0x030]
	cmp r1, #0x00
	beq _0817364A
	ldr r0, _08173678 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817364A:
	ldr r2, [sp, #0x01C]
	add r9, r2
	lsls r0, r2, #0x02
	movs r1, #0x05
	bl __divsi3
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	add r10, r3
	adds r3, #0x01
	str r3, [sp, #0x020]
	ldr r4, [sp, #0x024]
	adds r4, #0x06
	str r4, [sp, #0x024]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817367C
	mov r5, r10
	negs r0, r5
	b _0817367E
	.byte 0x00, 0x00
_08173678: .4byte 0x03000D74
_0817367C:
	mov r0, r10
_0817367E:
	cmp r0, #0x00
	bge _08173684
	adds r0, #0x07
_08173684:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x08
	ldr r1, [sp, #0x028]
	strh r0, [r1, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	mov r3, r10
	subs r0, r0, r3
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	ldr r6, [r7, #0x0C]
	mov r4, r9
	stm r6!, {r4}
	ldr r5, [sp, #0x01C]
	stm r6!, {r5}
	stm r6!, {r3}
	ldr r0, [sp, #0x020]
	stm r6!, {r0}
	ldr r1, [sp, #0x024]
	str r1, [r6, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
