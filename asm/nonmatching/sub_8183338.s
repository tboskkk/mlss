	.syntax unified
	.text

	thumb_func_start sub_8183338
sub_8183338:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	mov r9, r0
	ldm r5!, {r1}
	str r1, [sp, #0x01C]
	ldm r5!, {r2}
	mov r10, r2
	ldm r5!, {r3}
	str r3, [sp, #0x020]
	ldm r5!, {r4}
	str r4, [sp, #0x024]
	mov r7, r8
	ldr r0, [r7, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r0, #0x00
	str r0, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x028]
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x034]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x038]
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x03C]
	ldr r4, [sp, #0x02C]
	str r4, [sp, #0x030]
_0818338C:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	mov r7, r9
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _081833A4
	adds r0, #0xFF
_081833A4:
	asrs r6, r0, #0x08
	str r6, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081833B2
	adds r0, #0xFF
_081833B2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _081833C0
	adds r0, #0xFF
_081833C0:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r0, _08183448 @ =0x08198584
	mov r12, r0
	movs r4, #0x18
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _081833D4
	adds r0, #0x3F
_081833D4:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r7, _0818344C @ =0x08198504
	movs r4, #0x18
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _081833E4
	adds r0, #0x3F
_081833E4:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081833F0
	adds r0, #0xFF
_081833F0:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r7, r12
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _08183400
	adds r0, #0x3F
_08183400:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _0818344C @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r2, r7]
	cmp r0, #0x00
	bge _08183412
	adds r0, #0x3F
_08183412:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818341E
	adds r0, #0xFF
_0818341E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r1, r10
	adds r0, r4, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08183450
	movs r3, #0x12
	ldsh r1, [r2, r3]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _08183440
	adds r0, #0xFF
_08183440:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08183462
	.byte 0x00, 0x00
_08183448: .4byte 0x08198584
_0818344C: .4byte 0x08198504
_08183450:
	mov r4, r8
	movs r7, #0x12
	ldsh r1, [r4, r7]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0818345E
	adds r0, #0xFF
_0818345E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08183462:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08183472
	adds r0, #0xFF
_08183472:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08183486
	adds r0, #0xFF
_08183486:
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
	ldr r7, [sp, #0x02C]
	cmp r7, #0x00
	bne _081834C2
	ldr r0, _08183538 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x02C]
_081834C2:
	ldr r1, [sp, #0x030]
	subs r1, #0x01
	str r1, [sp, #0x030]
	cmp r1, #0x00
	blt _081834CE
	b _0818338C
_081834CE:
	ldr r2, [sp, #0x02C]
	cmp r2, #0x00
	beq _081834DC
	ldr r0, _08183538 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081834DC:
	ldr r3, [sp, #0x01C]
	add r9, r3
	ldr r4, [sp, #0x020]
	add r10, r4
	adds r4, #0x40
	str r4, [sp, #0x020]
	mov r7, r10
	cmp r7, #0x00
	ble _0818350E
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	str r0, [sp, #0x01C]
	movs r0, #0x00
	mov r10, r0
	ldr r1, [sp, #0x024]
	adds r1, #0x01
	str r1, [sp, #0x024]
	cmp r1, #0x00
	ble _08183508
	movs r2, #0x00
	str r2, [sp, #0x024]
_08183508:
	ldr r3, [sp, #0x024]
	lsls r3, r3, #0x08
	str r3, [sp, #0x020]
_0818350E:
	mov r4, r8
	ldr r5, [r4, #0x0C]
	mov r7, r9
	stm r5!, {r7}
	ldr r0, [sp, #0x01C]
	stm r5!, {r0}
	mov r1, r10
	stm r5!, {r1}
	ldr r2, [sp, #0x020]
	stm r5!, {r2}
	ldr r3, [sp, #0x024]
	str r3, [r5, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08183538: .4byte 0x03000D74
