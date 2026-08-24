	.syntax unified
	.text

	thumb_func_start sub_817547C
sub_817547C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	mov r10, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	str r0, [sp, #0x01C]
	ldm r7!, {r1}
	str r1, [sp, #0x020]
	ldm r7!, {r2}
	str r2, [sp, #0x024]
	ldm r7!, {r3}
	str r3, [sp, #0x028]
	ldm r7!, {r5}
	str r5, [sp, #0x02C]
	mov r0, r10
	ldr r0, [r0, #0x08]
	str r0, [sp, #0x030]
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x030]
	bl sub_80841B8
	str r0, [sp, #0x034]
	movs r1, #0x00
	str r1, [sp, #0x038]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x034]
	bl sub_807F9A8
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x040]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x044]
	mov r5, sp
	adds r5, #0x18
	str r5, [sp, #0x048]
	movs r0, #0x04
	str r0, [sp, #0x03C]
_081754D4:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _081754EA
	adds r0, #0xFF
_081754EA:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _081754FA
	adds r0, #0xFF
_081754FA:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0817550C
	adds r0, #0xFF
_0817550C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _08175654 @ =0x08198584
	mov r9, r3
	movs r0, #0xFF
	ldr r1, [sp, #0x02C]
	ands r0, r1
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817552A
	adds r0, #0x3F
_0817552A:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08175658 @ =0x08198504
	mov r8, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0817553E
	adds r0, #0x3F
_0817553E:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817554A
	adds r0, #0xFF
_0817554A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08175558
	adds r0, #0x3F
_08175558:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175568
	adds r0, #0x3F
_08175568:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08175574
	adds r0, #0xFF
_08175574:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	mov r3, r9
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175586
	adds r0, #0x3F
_08175586:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r8
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175596
	adds r0, #0x3F
_08175596:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081755A2
	adds r0, #0xFF
_081755A2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r1, r9
	movs r5, #0x20
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081755B2
	adds r0, #0x3F
_081755B2:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	movs r5, #0x20
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _081755C4
	adds r0, #0x3F
_081755C4:
	asrs r0, r0, #0x06
	mov r2, r12
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081755D4
	adds r0, #0xFF
_081755D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r4, #0x0
	mov r6, r9
	adds r6, #0x48
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _081755E8
	adds r0, #0x3F
_081755E8:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r8
	adds r5, #0x48
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _081755FA
	adds r0, #0x3F
_081755FA:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08175606
	adds r0, #0xFF
_08175606:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08175614
	adds r0, #0x3F
_08175614:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08175624
	adds r0, #0x3F
_08175624:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08175630
	adds r0, #0xFF
_08175630:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r5, r10
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817565C
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817564C
	adds r0, #0xFF
_0817564C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817566E
	.byte 0x00, 0x00
_08175654: .4byte word_8198584 @ =0x08198584
_08175658: .4byte word_8198504 @ =0x08198504
_0817565C:
	mov r3, r10
	movs r5, #0x12
	ldsh r1, [r3, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817566A
	adds r0, #0xFF
_0817566A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817566E:
	str r0, [sp, #0x00C]
	mov r0, r10
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817567E
	adds r0, #0xFF
_0817567E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r10
	movs r5, #0x16
	ldsh r1, [r3, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08175692
	adds r0, #0xFF
_08175692:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x040]
	ldr r2, [sp, #0x044]
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
	ldr r0, [sp, #0x048]
	ldr r1, [sp, #0x034]
	bl sub_807C564
	ldr r0, [sp, #0x038]
	cmp r0, #0x00
	bne _081756CE
	ldr r0, _08175720 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x038]
_081756CE:
	ldr r2, [sp, #0x03C]
	subs r2, #0x01
	str r2, [sp, #0x03C]
	cmp r2, #0x00
	blt _081756DA
	b _081754D4
_081756DA:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	beq _081756E8
	ldr r0, _08175720 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081756E8:
	ldr r5, [sp, #0x01C]
	ldr r0, [sp, #0x020]
	adds r5, r5, r0
	str r5, [sp, #0x01C]
	lsls r0, r0, #0x02
	movs r1, #0x05
	bl __divsi3
	str r0, [sp, #0x020]
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x028]
	adds r1, r1, r2
	str r1, [sp, #0x024]
	adds r2, #0x01
	str r2, [sp, #0x028]
	ldr r3, [sp, #0x02C]
	adds r3, #0x06
	str r3, [sp, #0x02C]
	mov r5, r10
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08175724
	ldr r1, [sp, #0x024]
	negs r0, r1
	b _08175726
	.byte 0x00, 0x00
_08175720: .4byte 0x03000D74
_08175724:
	ldr r0, [sp, #0x024]
_08175726:
	cmp r0, #0x00
	bge _0817572C
	adds r0, #0x07
_0817572C:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x030]
	strh r0, [r2, #0x0C]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	ldr r5, [sp, #0x024]
	subs r0, r0, r5
	strh r0, [r2, #0x04]
	strh r0, [r2, #0x06]
	mov r0, r10
	ldr r7, [r0, #0x0C]
	ldr r1, [sp, #0x01C]
	stm r7!, {r1}
	ldr r2, [sp, #0x020]
	stm r7!, {r2}
	stm r7!, {r5}
	ldr r3, [sp, #0x028]
	stm r7!, {r3}
	ldr r5, [sp, #0x02C]
	str r5, [r7, #0x00]
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
