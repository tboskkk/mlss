	.syntax unified
	.text

	thumb_func_start sub_817C4CC
sub_817C4CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	mov r9, r0
	ldm r5!, {r1}
	str r1, [sp, #0x01C]
	ldm r5!, {r2}
	str r2, [sp, #0x020]
	ldm r5!, {r3}
	str r3, [sp, #0x024]
	ldm r5!, {r4}
	mov r10, r4
	ldm r5!, {r0}
	str r0, [sp, #0x028]
	mov r1, r8
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x02C]
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r2, #0x00
	str r2, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x03C]
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x040]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x044]
	movs r1, #0x04
	str r1, [sp, #0x038]
_0817C528:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817C540
	adds r0, #0xFF
_0817C540:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817C550
	adds r0, #0xFF
_0817C550:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817C55E
	adds r0, #0xFF
_0817C55E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r7, _0817C5E4 @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _0817C570
	adds r0, #0x3F
_0817C570:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _0817C5E8 @ =0x08198504
	movs r4, #0x18
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _0817C580
	adds r0, #0x3F
_0817C580:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817C58C
	adds r0, #0xFF
_0817C58C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0817C59A
	adds r0, #0x3F
_0817C59A:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x18
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0817C5AA
	adds r0, #0x3F
_0817C5AA:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817C5B6
	adds r0, #0xFF
_0817C5B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x024]
	add r2, r12
	str r2, [sp, #0x00C]
	mov r3, r10
	adds r0, r4, r3
	str r0, [sp, #0x010]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817C5EC
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817C5DE
	adds r0, #0xFF
_0817C5DE:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817C5FE
_0817C5E4: .4byte word_8198584 @ =0x08198584
_0817C5E8: .4byte word_8198504 @ =0x08198504
_0817C5EC:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817C5FA
	adds r0, #0xFF
_0817C5FA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817C5FE:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817C60E
	adds r0, #0xFF
_0817C60E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817C622
	adds r0, #0xFF
_0817C622:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x040]
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
	ldr r0, [sp, #0x044]
	ldr r1, [sp, #0x030]
	bl sub_807C564
	ldr r0, [sp, #0x034]
	cmp r0, #0x00
	bne _0817C65E
	ldr r0, _0817C6C0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x034]
_0817C65E:
	ldr r2, [sp, #0x038]
	subs r2, #0x01
	str r2, [sp, #0x038]
	cmp r2, #0x00
	blt _0817C66A
	b _0817C528
_0817C66A:
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	beq _0817C678
	ldr r0, _0817C6C0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817C678:
	movs r4, #0x80
	lsls r4, r4, #0x03
	add r9, r4
	ldr r0, [sp, #0x028]
	add r10, r0
	adds r0, #0x60
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x020]
	adds r1, r1, r2
	adds r2, #0x01
	movs r0, #0xA0
	subs r0, r0, r1
	ldr r3, [sp, #0x02C]
	strh r0, [r3, #0x04]
	strh r0, [r3, #0x06]
	mov r4, r8
	ldr r5, [r4, #0x0C]
	mov r0, r9
	stm r5!, {r0}
	stm r5!, {r1}
	stm r5!, {r2}
	ldr r1, [sp, #0x024]
	stm r5!, {r1}
	mov r2, r10
	stm r5!, {r2}
	ldr r3, [sp, #0x028]
	str r3, [r5, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817C6C0: .4byte 0x03000D74
