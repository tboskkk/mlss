	.syntax unified
	.text

	thumb_func_start sub_818E1FC
sub_818E1FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r4, #0x00
	str r4, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x034]
	movs r2, #0x03
	str r2, [sp, #0x028]
_0818E256:
	mov r3, r9
	ldm r3!, {r0}
	str r0, [sp, #0x00C]
	ldm r3!, {r1}
	str r1, [sp, #0x010]
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r4, r10
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0818E276
	adds r0, #0xFF
_0818E276:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _0818E284
	adds r0, #0xFF
_0818E284:
	asrs r6, r0, #0x08
	str r6, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _0818E292
	adds r0, #0xFF
_0818E292:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r7, _0818E370 @ =0x08198584
	adds r7, #0x40
	movs r4, #0x00
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _0818E2A6
	adds r0, #0x3F
_0818E2A6:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _0818E374 @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x40
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0818E2BC
	adds r0, #0x3F
_0818E2BC:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818E2C8
	adds r0, #0xFF
_0818E2C8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0818E2D6
	adds r0, #0x3F
_0818E2D6:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _0818E2E6
	adds r0, #0x3F
_0818E2E6:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818E2F2
	adds r0, #0xFF
_0818E2F2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r6, #0x0
	ldr r5, _0818E370 @ =0x08198584
	adds r5, #0x80
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x00
	bge _0818E306
	adds r0, #0x3F
_0818E306:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r12
	adds r3, #0x80
	movs r7, #0x00
	ldsh r0, [r3, r7]
	cmp r0, #0x00
	bge _0818E318
	adds r0, #0x3F
_0818E318:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818E324
	adds r0, #0xFF
_0818E324:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818E332
	adds r0, #0x3F
_0818E332:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0818E342
	adds r0, #0x3F
_0818E342:
	asrs r0, r0, #0x06
	muls r0, r6
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818E34E
	adds r0, #0xFF
_0818E34E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r7, r8
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818E378
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818E36A
	adds r0, #0xFF
_0818E36A:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818E38A
_0818E370: .4byte word_8198584 @ =0x08198584
_0818E374: .4byte word_8198504 @ =0x08198504
_0818E378:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818E386
	adds r0, #0xFF
_0818E386:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818E38A:
	str r0, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x14
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818E39A
	adds r0, #0xFF
_0818E39A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818E3AE
	adds r0, #0xFF
_0818E3AE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
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
	ldr r0, [sp, #0x034]
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r4, [sp, #0x024]
	cmp r4, #0x00
	bne _0818E3EA
	ldr r0, _0818E434 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r7, #0x01
	str r7, [sp, #0x024]
_0818E3EA:
	ldr r0, [sp, #0x028]
	subs r0, #0x01
	str r0, [sp, #0x028]
	cmp r0, #0x00
	blt _0818E3F6
	b _0818E256
_0818E3F6:
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	beq _0818E404
	ldr r0, _0818E434 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818E404:
	ldr r2, [sp, #0x01C]
	add r10, r2
	lsls r0, r2, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x01C]
	mov r3, r8
	ldr r3, [r3, #0x0C]
	mov r9, r3
	mov r4, r10
	mov r7, r9
	stm r7!, {r4}
	ldr r0, [sp, #0x01C]
	str r0, [r7, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818E434: .4byte 0x03000D74
