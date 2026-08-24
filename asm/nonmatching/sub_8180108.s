	.syntax unified
	.text

	thumb_func_start sub_8180108
sub_8180108:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r5, #0x00
	str r5, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x034]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x038]
	movs r3, #0x07
	str r3, [sp, #0x02C]
_0818016E:
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
	mov r5, r10
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0818018E
	adds r0, #0xFF
_0818018E:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _0818019C
	adds r0, #0xFF
_0818019C:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _081801AC
	adds r0, #0xFF
_081801AC:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x020]
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _0818029C @ =0x08198584
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _081801C8
	adds r0, #0x3F
_081801C8:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _081802A0 @ =0x08198504
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _081801DA
	adds r0, #0x3F
_081801DA:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081801E6
	adds r0, #0xFF
_081801E6:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _081801F4
	adds r0, #0x3F
_081801F4:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08180204
	adds r0, #0x3F
_08180204:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180210
	adds r0, #0xFF
_08180210:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r2, _0818029C @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _08180222
	adds r0, #0x3F
_08180222:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _081802A0 @ =0x08198504
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08180232
	adds r0, #0x3F
_08180232:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818023E
	adds r0, #0xFF
_0818023E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r4, _0818029C @ =0x08198584
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0818024E
	adds r0, #0x3F
_0818024E:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r4, _081802A0 @ =0x08198504
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08180260
	adds r0, #0x3F
_08180260:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180270
	adds r0, #0xFF
_08180270:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x020]
	adds r0, r2, r5
	str r0, [sp, #0x010]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081802A4
	mov r2, r9
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08180294
	adds r0, #0xFF
_08180294:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081802B6
	.byte 0x00, 0x00
_0818029C: .4byte word_8198584 @ =0x08198584
_081802A0: .4byte word_8198504 @ =0x08198504
_081802A4:
	mov r5, r9
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081802B2
	adds r0, #0xFF
_081802B2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081802B6:
	str r0, [sp, #0x00C]
	mov r2, r9
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081802C6
	adds r0, #0xFF
_081802C6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r9
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081802DA
	adds r0, #0xFF
_081802DA:
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
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _08180316
	ldr r0, _08180368 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x028]
_08180316:
	ldr r2, [sp, #0x02C]
	subs r2, #0x01
	str r2, [sp, #0x02C]
	cmp r2, #0x00
	blt _08180322
	b _0818016E
_08180322:
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	beq _08180330
	ldr r0, _08180368 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08180330:
	ldr r4, [sp, #0x01C]
	add r10, r4
	mov r0, r10
	cmp r0, #0x00
	bge _0818033C
	adds r0, #0x7F
_0818033C:
	asrs r0, r0, #0x07
	ldr r5, [sp, #0x01C]
	subs r5, r5, r0
	ldr r0, [sp, #0x020]
	adds r0, #0x04
	mov r1, r9
	ldr r1, [r1, #0x0C]
	mov r8, r1
	mov r2, r10
	mov r3, r8
	stm r3!, {r2}
	stm r3!, {r5}
	str r0, [r3, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08180368: .4byte 0x03000D74
