	.syntax unified
	.text

	thumb_func_start sub_817F234
sub_817F234:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r5, #0x00
	str r5, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x028]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x03C]
	movs r3, #0x07
	str r3, [sp, #0x030]
_0817F29A:
	mov r4, r8
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	ldr r5, [sp, #0x01C]
	muls r0, r5
	cmp r0, #0x00
	bge _0817F2B8
	adds r0, #0xFF
_0817F2B8:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _0817F2C8
	adds r0, #0xFF
_0817F2C8:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r4, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _0817F2DA
	adds r0, #0xFF
_0817F2DA:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _0817F3CC @ =0x08198584
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817F2F6
	adds r0, #0x3F
_0817F2F6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0817F3D0 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0817F30A
	adds r0, #0x3F
_0817F30A:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817F316
	adds r0, #0xFF
_0817F316:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0817F324
	adds r0, #0x3F
_0817F324:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0817F334
	adds r0, #0x3F
_0817F334:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817F340
	adds r0, #0xFF
_0817F340:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r2, _0817F3CC @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _0817F352
	adds r0, #0x3F
_0817F352:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r10
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0817F362
	adds r0, #0x3F
_0817F362:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817F36E
	adds r0, #0xFF
_0817F36E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r4, _0817F3CC @ =0x08198584
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817F37E
	adds r0, #0x3F
_0817F37E:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817F390
	adds r0, #0x3F
_0817F390:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817F3A0
	adds r0, #0xFF
_0817F3A0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, _0817F3D4 @ =0xFFFFF800
	adds r0, r2, r5
	str r0, [sp, #0x010]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817F3D8
	mov r2, r9
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817F3C4
	adds r0, #0xFF
_0817F3C4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817F3EA
	.byte 0x00, 0x00
_0817F3CC: .4byte 0x08198584
_0817F3D0: .4byte 0x08198504
_0817F3D4: .4byte 0xFFFFF800
_0817F3D8:
	mov r5, r9
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817F3E6
	adds r0, #0xFF
_0817F3E6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817F3EA:
	str r0, [sp, #0x00C]
	mov r2, r9
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817F3FA
	adds r0, #0xFF
_0817F3FA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r9
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817F40E
	adds r0, #0xFF
_0817F40E:
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
	ldr r1, [sp, #0x028]
	bl sub_807C564
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _0817F44A
	ldr r0, _0817F4A0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x02C]
_0817F44A:
	ldr r2, [sp, #0x030]
	subs r2, #0x01
	str r2, [sp, #0x030]
	cmp r2, #0x00
	blt _0817F456
	b _0817F29A
_0817F456:
	ldr r3, [sp, #0x02C]
	cmp r3, #0x00
	beq _0817F464
	ldr r0, _0817F4A0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817F464:
	ldr r4, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	adds r4, r4, r5
	str r4, [sp, #0x01C]
	lsls r0, r5, #0x03
	subs r0, r0, r5
	cmp r0, #0x00
	bge _0817F476
	adds r0, #0x07
_0817F476:
	asrs r0, r0, #0x03
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	adds r0, #0x12
	mov r1, r9
	ldr r1, [r1, #0x0C]
	mov r8, r1
	ldr r2, [sp, #0x01C]
	mov r3, r8
	stm r3!, {r2}
	ldr r4, [sp, #0x020]
	stm r3!, {r4}
	str r0, [r3, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817F4A0: .4byte 0x03000D74
