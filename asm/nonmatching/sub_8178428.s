	.syntax unified
	.text

	thumb_func_start sub_8178428
sub_8178428:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x054
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	str r0, [sp, #0x01C]
	ldm r5!, {r1}
	str r1, [sp, #0x020]
	ldm r5!, {r2}
	str r2, [sp, #0x024]
	ldm r5!, {r3}
	str r3, [sp, #0x028]
	ldm r5!, {r4}
	str r4, [sp, #0x02C]
	ldm r5!, {r6}
	str r6, [sp, #0x030]
	ldm r5!, {r0}
	str r0, [sp, #0x034]
	mov r1, r8
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x038]
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	str r0, [sp, #0x03C]
	movs r2, #0x00
	str r2, [sp, #0x040]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x03C]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x048]
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x04C]
	mov r6, sp
	adds r6, #0x18
	str r6, [sp, #0x050]
	movs r0, #0x03
	str r0, [sp, #0x044]
_08178488:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _0817849E
	adds r0, #0xFF
_0817849E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	ldr r4, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _081784AE
	adds r0, #0xFF
_081784AE:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	ldr r6, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _081784BE
	adds r0, #0xFF
_081784BE:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r0, _081785AC @ =0x08198584
	mov r10, r0
	movs r4, #0x50
	add r4, r10
	mov r12, r4
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _081784D8
	adds r0, #0x3F
_081784D8:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _081785B0 @ =0x08198504
	mov r9, r0
	ldr r4, _081785B4 @ =0x08198554
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _081784EC
	adds r0, #0x3F
_081784EC:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081784F8
	adds r0, #0xFF
_081784F8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	mov r1, r12
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _08178508
	adds r0, #0x3F
_08178508:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	ldr r3, _081785B4 @ =0x08198554
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _0817851A
	adds r0, #0x3F
_0817851A:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178526
	adds r0, #0xFF
_08178526:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r7, #0x0
	mov r2, r10
	movs r6, #0x20
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _08178538
	adds r0, #0x3F
_08178538:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r2, r9
	movs r6, #0x20
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _08178548
	adds r0, #0x3F
_08178548:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08178554
	adds r0, #0xFF
_08178554:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	mov r1, r10
	movs r6, #0x20
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _08178564
	adds r0, #0x3F
_08178564:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	mov r4, r9
	movs r6, #0x20
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08178576
	adds r0, #0x3F
_08178576:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178582
	adds r0, #0xFF
_08178582:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x024]
	adds r0, r2, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081785B8
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081785A4
	adds r0, #0xFF
_081785A4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081785CA
	.byte 0x00, 0x00
_081785AC: .4byte 0x08198584
_081785B0: .4byte 0x08198504
_081785B4: .4byte 0x08198554
_081785B8:
	mov r6, r8
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081785C6
	adds r0, #0xFF
_081785C6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081785CA:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081785DA
	adds r0, #0xFF
_081785DA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r6, #0x16
	ldsh r1, [r4, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081785EE
	adds r0, #0xFF
_081785EE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x048]
	ldr r2, [sp, #0x04C]
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
	ldr r0, [sp, #0x050]
	ldr r1, [sp, #0x03C]
	bl sub_807C564
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	bne _0817862A
	ldr r0, _081786A4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x040]
_0817862A:
	ldr r2, [sp, #0x044]
	subs r2, #0x01
	str r2, [sp, #0x044]
	cmp r2, #0x00
	blt _08178636
	b _08178488
_08178636:
	ldr r3, [sp, #0x040]
	cmp r3, #0x00
	beq _08178644
	ldr r0, _081786A4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08178644:
	ldr r4, [sp, #0x01C]
	ldr r6, [sp, #0x020]
	adds r4, r4, r6
	str r4, [sp, #0x01C]
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	adds r0, r0, r1
	str r0, [sp, #0x024]
	adds r1, #0x60
	str r1, [sp, #0x028]
	cmp r0, #0x00
	ble _0817868A
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	str r0, [sp, #0x020]
	movs r2, #0x00
	str r2, [sp, #0x024]
	ldr r3, [sp, #0x02C]
	adds r3, #0x02
	str r3, [sp, #0x02C]
	cmp r3, #0x00
	ble _08178676
	movs r4, #0x00
	str r4, [sp, #0x02C]
_08178676:
	ldr r6, [sp, #0x02C]
	lsls r6, r6, #0x08
	str r6, [sp, #0x028]
	ldr r0, [sp, #0x034]
	subs r0, #0x02
	str r0, [sp, #0x034]
	cmp r0, #0x00
	bge _0817868A
	movs r1, #0x00
	str r1, [sp, #0x034]
_0817868A:
	ldr r2, [sp, #0x030]
	ldr r3, [sp, #0x034]
	adds r2, r2, r3
	str r2, [sp, #0x030]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081786A8
	negs r0, r2
	lsls r0, r0, #0x08
	b _081786AC
_081786A4: .4byte 0x03000D74
_081786A8:
	ldr r6, [sp, #0x030]
	lsls r0, r6, #0x08
_081786AC:
	ldr r1, [sp, #0x038]
	strh r0, [r1, #0x0C]
	movs r0, #0xB9
	lsls r0, r0, #0x01
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r2, r8
	ldr r5, [r2, #0x0C]
	ldr r3, [sp, #0x01C]
	stm r5!, {r3}
	ldr r4, [sp, #0x020]
	stm r5!, {r4}
	ldr r6, [sp, #0x024]
	stm r5!, {r6}
	ldr r0, [sp, #0x028]
	stm r5!, {r0}
	ldr r1, [sp, #0x02C]
	stm r5!, {r1}
	ldr r2, [sp, #0x030]
	stm r5!, {r2}
	ldr r3, [sp, #0x034]
	str r3, [r5, #0x00]
	add sp, #0x054
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
