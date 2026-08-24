	.syntax unified
	.text

	thumb_func_start sub_818A328
sub_818A328:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	mov r8, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	mov r9, r0
	ldm r7!, {r1}
	str r1, [sp, #0x01C]
	ldm r7!, {r2}
	str r2, [sp, #0x020]
	ldm r7!, {r3}
	str r3, [sp, #0x024]
	mov r4, r8
	ldr r4, [r4, #0x08]
	str r4, [sp, #0x028]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r5, #0x00
	str r5, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x038]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x03C]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x040]
	movs r2, #0x05
	str r2, [sp, #0x034]
_0818A37C:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818A394
	adds r0, #0xFF
_0818A394:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0818A3A2
	adds r0, #0xFF
_0818A3A2:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0818A3B2
	adds r0, #0xFF
_0818A3B2:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x020]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _0818A49C @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0818A3CE
	adds r0, #0x3F
_0818A3CE:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0818A4A0 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0818A3E2
	adds r0, #0x3F
_0818A3E2:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818A3EE
	adds r0, #0xFF
_0818A3EE:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0818A3FC
	adds r0, #0x3F
_0818A3FC:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818A40C
	adds r0, #0x3F
_0818A40C:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818A418
	adds r0, #0xFF
_0818A418:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _0818A49C @ =0x08198584
	adds r5, #0x80
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _0818A42C
	adds r0, #0x3F
_0818A42C:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	adds r4, #0x80
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _0818A43E
	adds r0, #0x3F
_0818A43E:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818A44A
	adds r0, #0xFF
_0818A44A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818A458
	adds r0, #0x3F
_0818A458:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0818A468
	adds r0, #0x3F
_0818A468:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818A478
	adds r0, #0xFF
_0818A478:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818A4A4
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818A494
	adds r0, #0xFF
_0818A494:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818A4B6
	.byte 0x00, 0x00
_0818A49C: .4byte word_8198584 @ =0x08198584
_0818A4A0: .4byte word_8198504 @ =0x08198504
_0818A4A4:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818A4B2
	adds r0, #0xFF
_0818A4B2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818A4B6:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818A4C6
	adds r0, #0xFF
_0818A4C6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818A4DA
	adds r0, #0xFF
_0818A4DA:
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
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bne _0818A516
	ldr r0, _0818A57C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x030]
_0818A516:
	ldr r2, [sp, #0x034]
	subs r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x00
	blt _0818A522
	b _0818A37C
_0818A522:
	ldr r3, [sp, #0x030]
	cmp r3, #0x00
	beq _0818A530
	ldr r0, _0818A57C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818A530:
	ldr r4, [sp, #0x01C]
	add r9, r4
	ldr r5, [sp, #0x020]
	subs r5, #0x03
	str r5, [sp, #0x020]
	ldr r6, [sp, #0x024]
	adds r6, #0x08
	str r6, [sp, #0x024]
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r6, r0
	ble _0818A54A
	str r0, [sp, #0x024]
_0818A54A:
	mov r0, sp
	ldrh r1, [r0, #0x24]
	ldr r0, [sp, #0x028]
	strh r1, [r0, #0x04]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x06]
	mov r3, r8
	ldr r7, [r3, #0x0C]
	mov r4, r9
	stm r7!, {r4}
	ldr r5, [sp, #0x01C]
	stm r7!, {r5}
	ldr r6, [sp, #0x020]
	stm r7!, {r6}
	ldr r0, [sp, #0x024]
	str r0, [r7, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0818A57C: .4byte 0x03000D74
