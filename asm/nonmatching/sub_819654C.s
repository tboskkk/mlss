	.syntax unified
	.text

	thumb_func_start sub_819654C
sub_819654C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r0}
	str r0, [sp, #0x01C]
	ldm r4!, {r7}
	ldm r4!, {r1}
	str r1, [sp, #0x020]
	ldr r6, [r5, #0x08]
	ldr r0, [r6, #0x34]
	str r0, [sp, #0x018]
	adds r0, r6, #0x0
	bl sub_80841B8
	mov r8, r0
	movs r0, #0x00
	mov r10, r0
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x024]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x028]
	adds r1, #0x08
	str r1, [sp, #0x02C]
	mov r9, r10
_08196592:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r0}
	str r0, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081965BA
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081965B4
	adds r0, #0xFF
_081965B4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081965CA
_081965BA:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081965C6
	adds r0, #0xFF
_081965C6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081965CA:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081965D8
	adds r0, #0xFF
_081965D8:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081965EA
	adds r0, #0xFF
_081965EA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x028]
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
	ldr r0, [sp, #0x02C]
	mov r1, r8
	bl sub_807C564
	mov r1, r10
	cmp r1, #0x00
	bne _08196626
	ldr r0, _08196664 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r10, r0
_08196626:
	movs r1, #0x01
	negs r1, r1
	add r9, r1
	mov r0, r9
	cmp r0, #0x00
	bge _08196592
	mov r1, r10
	cmp r1, #0x00
	beq _08196640
	ldr r0, _08196664 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08196640:
	ldr r0, [sp, #0x01C]
	adds r7, r7, r0
	strh r7, [r6, #0x04]
	adds r0, r7, #0x0
	movs r1, #0x03
	bl __divsi3
	strh r0, [r6, #0x06]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08196668
	ldr r1, [sp, #0x020]
	negs r0, r1
	lsls r0, r0, #0x08
	b _0819666C
	.byte 0x00, 0x00
_08196664: .4byte 0x03000D74
_08196668:
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x08
_0819666C:
	strh r0, [r6, #0x0C]
	ldr r4, [r5, #0x0C]
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	stm r4!, {r7}
	ldr r1, [sp, #0x020]
	str r1, [r4, #0x00]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
