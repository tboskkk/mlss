	.syntax unified
	.text

	thumb_func_start sub_8179460
sub_8179460:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r7, r0, #0x0
	ldr r6, [r7, #0x0C]
	ldm r6!, {r0}
	mov r8, r0
	ldm r6!, {r1}
	str r1, [sp, #0x01C]
	ldm r6!, {r2}
	mov r10, r2
	ldr r3, [r7, #0x08]
	str r3, [sp, #0x020]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r5, sp
	adds r5, #0x10
	str r5, [sp, #0x030]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x038]
	movs r2, #0x07
	str r2, [sp, #0x02C]
_081794AE:
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r3, r8
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081794C6
	adds r0, #0xFF
_081794C6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _081794D4
	adds r0, #0xFF
_081794D4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r8
	muls r0, r2
	cmp r0, #0x00
	bge _081794E2
	adds r0, #0xFF
_081794E2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _081795C8 @ =0x08198584
	mov r9, r4
	ldr r5, _081795CC @ =0x08198604
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _081794F8
	adds r0, #0x3F
_081794F8:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _081795D0 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817950E
	adds r0, #0x3F
_0817950E:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817951A
	adds r0, #0xFF
_0817951A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r1, _081795CC @ =0x08198604
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _0817952A
	adds r0, #0x3F
_0817952A:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0817953A
	adds r0, #0x3F
_0817953A:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08179546
	adds r0, #0xFF
_08179546:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	adds r1, r3, #0x0
	mov r5, r9
	adds r5, #0xA4
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0817955A
	adds r0, #0x3F
_0817955A:
	asrs r0, r0, #0x06
	adds r2, r1, #0x0
	muls r2, r0
	mov r4, r12
	adds r4, #0xA4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _0817956E
	adds r0, #0x3F
_0817956E:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x00C]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817957C
	adds r0, #0xFF
_0817957C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0817958A
	adds r0, #0x3F
_0817958A:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08179598
	adds r0, #0x3F
_08179598:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081795A4
	adds r0, #0xFF
_081795A4:
	asrs r0, r0, #0x08
	mov r1, r10
	adds r2, r0, r1
	str r2, [sp, #0x00C]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081795D4
	movs r3, #0x12
	ldsh r1, [r7, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081795C2
	adds r0, #0xFF
_081795C2:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081795E4
_081795C8: .4byte 0x08198584
_081795CC: .4byte 0x08198604
_081795D0: .4byte 0x08198504
_081795D4:
	movs r4, #0x12
	ldsh r1, [r7, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081795E0
	adds r0, #0xFF
_081795E0:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081795E4:
	str r0, [sp, #0x00C]
	movs r5, #0x14
	ldsh r1, [r7, r5]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081795F2
	adds r0, #0xFF
_081795F2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08179604
	adds r0, #0xFF
_08179604:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
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
	ldr r0, [sp, #0x038]
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	bne _08179640
	ldr r0, _08179698 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x028]
_08179640:
	ldr r3, [sp, #0x02C]
	subs r3, #0x01
	str r3, [sp, #0x02C]
	cmp r3, #0x00
	blt _0817964C
	b _081794AE
_0817964C:
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	beq _0817965A
	ldr r0, _08179698 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817965A:
	ldr r5, [sp, #0x01C]
	add r8, r5
	lsls r0, r5, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x01C]
	movs r0, #0x80
	negs r0, r0
	add r10, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	ldr r6, [r7, #0x0C]
	mov r2, r8
	stm r6!, {r2}
	ldr r3, [sp, #0x01C]
	stm r6!, {r3}
	mov r4, r10
	str r4, [r6, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08179698: .4byte 0x03000D74
