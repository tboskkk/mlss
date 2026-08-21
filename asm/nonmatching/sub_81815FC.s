	.syntax unified
	.text

	thumb_func_start sub_81815FC
sub_81815FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	ldr r0, [r0, #0x0C]
	ldm r0!, {r1}
	mov r8, r1
	str r0, [sp, #0x01C]
	mov r2, r9
	ldr r2, [r2, #0x08]
	str r2, [sp, #0x020]
	ldr r0, [r2, #0x34]
	str r0, [sp, #0x018]
	adds r0, r2, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r3, #0x00
	str r3, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x034]
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x038]
	mov r6, sp
	adds r6, #0x18
	str r6, [sp, #0x03C]
	mov r0, r8
	lsls r0, r0, #0x01
	str r0, [sp, #0x030]
	movs r1, #0x07
	str r1, [sp, #0x02C]
_0818164C:
	ldr r2, [sp, #0x01C]
	ldm r2!, {r1}
	str r1, [sp, #0x00C]
	ldm r2!, {r3}
	str r3, [sp, #0x010]
	ldm r2!, {r4}
	str r2, [sp, #0x01C]
	str r4, [sp, #0x014]
	ldr r0, [sp, #0x030]
	add r0, r8
	lsls r0, r0, #0x05
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r0, r5
	adds r0, r1, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181672
	adds r0, #0xFF
_08181672:
	asrs r1, r0, #0x08
	str r1, [sp, #0x00C]
	adds r0, r3, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181680
	adds r0, #0xFF
_08181680:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181690
	adds r0, #0xFF
_08181690:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r3, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x030]
	ands r0, r6
	lsls r2, r0, #0x01
	ldr r0, _081817EC @ =0x08198584
	adds r5, r2, r0
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _081816AC
	adds r0, #0x3F
_081816AC:
	asrs r0, r0, #0x06
	muls r3, r0
	ldr r0, _081817F0 @ =0x08198504
	mov r10, r0
	add r2, r10
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _081816C0
	adds r0, #0x3F
_081816C0:
	asrs r0, r0, #0x06
	muls r0, r1
	subs r0, r3, r0
	cmp r0, #0x00
	bge _081816CC
	adds r0, #0xFF
_081816CC:
	asrs r6, r0, #0x08
	str r6, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _081816DA
	adds r0, #0x3F
_081816DA:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _081816E8
	adds r0, #0x3F
_081816E8:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081816F4
	adds r0, #0xFF
_081816F4:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r2, r12
	movs r0, #0xFF
	mov r1, r8
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _081817EC @ =0x08198584
	adds r4, r1, r3
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08181710
	adds r0, #0x3F
_08181710:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r0, r10
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08181722
	adds r0, #0x3F
_08181722:
	asrs r0, r0, #0x06
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818172E
	adds r0, #0xFF
_0818172E:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0818173C
	adds r0, #0x3F
_0818173C:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0818174C
	adds r0, #0x3F
_0818174C:
	asrs r0, r0, #0x06
	mov r6, r12
	muls r6, r0
	adds r0, r6, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818175C
	adds r0, #0xFF
_0818175C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	mov r0, r8
	cmp r0, #0x00
	bge _0818176A
	adds r0, #0x03
_0818176A:
	asrs r0, r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r0, _081817EC @ =0x08198584
	adds r4, r1, r0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	bge _08181780
	adds r0, #0x3F
_08181780:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r6, r10
	adds r3, r1, r6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08181792
	adds r0, #0x3F
_08181792:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818179E
	adds r0, #0xFF
_0818179E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _081817AC
	adds r0, #0x3F
_081817AC:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081817BC
	adds r0, #0x3F
_081817BC:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081817C8
	adds r0, #0xFF
_081817C8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r5, r9
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081817F4
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081817E4
	adds r0, #0xFF
_081817E4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08181806
	.byte 0x00, 0x00
_081817EC: .4byte 0x08198584
_081817F0: .4byte 0x08198504
_081817F4:
	mov r0, r9
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08181802
	adds r0, #0xFF
_08181802:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08181806:
	str r0, [sp, #0x00C]
	mov r4, r9
	movs r5, #0x14
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08181816
	adds r0, #0xFF
_08181816:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r6, r9
	movs r0, #0x16
	ldsh r1, [r6, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818182A
	adds r0, #0xFF
_0818182A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x034]
	ldr r2, [sp, #0x038]
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
	ldr r0, [sp, #0x03C]
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	bne _08181866
	ldr r0, _081818A8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x028]
_08181866:
	ldr r3, [sp, #0x02C]
	subs r3, #0x01
	str r3, [sp, #0x02C]
	cmp r3, #0x00
	blt _08181872
	b _0818164C
_08181872:
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	beq _08181880
	ldr r0, _081818A8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08181880:
	movs r5, #0x02
	add r8, r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r6, [sp, #0x020]
	strh r0, [r6, #0x04]
	strh r0, [r6, #0x06]
	mov r0, r9
	ldr r0, [r0, #0x0C]
	mov r1, r8
	str r1, [r0, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081818A8: .4byte 0x03000D74
