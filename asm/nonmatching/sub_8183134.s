	.syntax unified
	.text

	thumb_func_start sub_8183134
sub_8183134:
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
_08183188:
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
	bge _081831A0
	adds r0, #0xFF
_081831A0:
	asrs r6, r0, #0x08
	str r6, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081831AE
	adds r0, #0xFF
_081831AE:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _081831BC
	adds r0, #0xFF
_081831BC:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r0, _08183244 @ =0x08198584
	mov r12, r0
	movs r4, #0x18
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _081831D0
	adds r0, #0x3F
_081831D0:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r7, _08183248 @ =0x08198504
	movs r4, #0x18
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _081831E0
	adds r0, #0x3F
_081831E0:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081831EC
	adds r0, #0xFF
_081831EC:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r7, r12
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _081831FC
	adds r0, #0x3F
_081831FC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _08183248 @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r2, r7]
	cmp r0, #0x00
	bge _0818320E
	adds r0, #0x3F
_0818320E:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818321A
	adds r0, #0xFF
_0818321A:
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
	beq _0818324C
	movs r3, #0x12
	ldsh r1, [r2, r3]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0818323C
	adds r0, #0xFF
_0818323C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818325E
	.byte 0x00, 0x00
_08183244: .4byte 0x08198584
_08183248: .4byte 0x08198504
_0818324C:
	mov r4, r8
	movs r7, #0x12
	ldsh r1, [r4, r7]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0818325A
	adds r0, #0xFF
_0818325A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818325E:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818326E
	adds r0, #0xFF
_0818326E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08183282
	adds r0, #0xFF
_08183282:
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
	bne _081832BE
	ldr r0, _08183334 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x02C]
_081832BE:
	ldr r1, [sp, #0x030]
	subs r1, #0x01
	str r1, [sp, #0x030]
	cmp r1, #0x00
	blt _081832CA
	b _08183188
_081832CA:
	ldr r2, [sp, #0x02C]
	cmp r2, #0x00
	beq _081832D8
	ldr r0, _08183334 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081832D8:
	ldr r3, [sp, #0x01C]
	add r9, r3
	ldr r4, [sp, #0x020]
	add r10, r4
	adds r4, #0x40
	str r4, [sp, #0x020]
	mov r7, r10
	cmp r7, #0x00
	ble _0818330A
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
	ble _08183304
	movs r2, #0x00
	str r2, [sp, #0x024]
_08183304:
	ldr r3, [sp, #0x024]
	lsls r3, r3, #0x08
	str r3, [sp, #0x020]
_0818330A:
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
_08183334: .4byte 0x03000D74
