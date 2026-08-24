	.syntax unified
	.text

	thumb_func_start sub_8177180
sub_8177180:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
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
	mov r4, r8
	ldr r4, [r4, #0x08]
	str r4, [sp, #0x028]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r6, #0x00
	str r6, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x038]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x03C]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x040]
	movs r3, #0x04
	str r3, [sp, #0x034]
_081771D4:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	mov r4, r9
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _081771EC
	adds r0, #0xFF
_081771EC:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081771FA
	adds r0, #0xFF
_081771FA:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08177208
	adds r0, #0xFF
_08177208:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r6, _081772F0 @ =0x08198584
	adds r6, #0x4C
	mov r12, r6
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _0817721E
	adds r0, #0x3F
_0817721E:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _081772F4 @ =0x08198504
	mov r10, r6
	ldr r4, _081772F8 @ =0x08198550
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08177232
	adds r0, #0x3F
_08177232:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817723E
	adds r0, #0xFF
_0817723E:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	mov r1, r12
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _0817724E
	adds r0, #0x3F
_0817724E:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	ldr r3, _081772F8 @ =0x08198550
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _08177260
	adds r0, #0x3F
_08177260:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817726C
	adds r0, #0xFF
_0817726C:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r7, #0x0
	ldr r0, _081772F0 @ =0x08198584
	adds r0, #0x40
	mov r12, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08177282
	adds r0, #0x3F
_08177282:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r10
	adds r3, #0x40
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _08177294
	adds r0, #0x3F
_08177294:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081772A0
	adds r0, #0xFF
_081772A0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r12
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _081772B0
	adds r0, #0x3F
_081772B0:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081772C0
	adds r0, #0x3F
_081772C0:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081772CC
	adds r0, #0xFF
_081772CC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r6, r8
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081772FC
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081772E8
	adds r0, #0xFF
_081772E8:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817730E
	.byte 0x00, 0x00
_081772F0: .4byte word_8198584 @ =0x08198584
_081772F4: .4byte word_8198504 @ =0x08198504
_081772F8: .4byte word_8198550 @ =0x08198550
_081772FC:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817730A
	adds r0, #0xFF
_0817730A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817730E:
	str r0, [sp, #0x00C]
	mov r6, r8
	movs r0, #0x14
	ldsh r1, [r6, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817731E
	adds r0, #0xFF
_0817731E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08177332
	adds r0, #0xFF
_08177332:
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
	ldr r4, [sp, #0x030]
	cmp r4, #0x00
	bne _0817736E
	ldr r0, _081773B4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r6, #0x01
	str r6, [sp, #0x030]
_0817736E:
	ldr r0, [sp, #0x034]
	subs r0, #0x01
	str r0, [sp, #0x034]
	cmp r0, #0x00
	blt _0817737A
	b _081771D4
_0817737A:
	ldr r1, [sp, #0x030]
	cmp r1, #0x00
	beq _08177388
	ldr r0, _081773B4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08177388:
	ldr r2, [sp, #0x01C]
	add r9, r2
	lsls r0, r2, #0x02
	movs r1, #0x05
	bl __divsi3
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	ldr r4, [sp, #0x024]
	adds r3, r3, r4
	str r3, [sp, #0x020]
	adds r4, #0x01
	str r4, [sp, #0x024]
	mov r6, r8
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081773B8
	negs r0, r3
	b _081773BA
	.byte 0x00, 0x00
_081773B4: .4byte 0x03000D74
_081773B8:
	ldr r0, [sp, #0x020]
_081773BA:
	cmp r0, #0x00
	bge _081773C0
	adds r0, #0x07
_081773C0:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x08
	ldr r1, [sp, #0x028]
	strh r0, [r1, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldr r3, [sp, #0x020]
	subs r0, r0, r3
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r4, r8
	ldr r5, [r4, #0x0C]
	mov r6, r9
	stm r5!, {r6}
	ldr r0, [sp, #0x01C]
	stm r5!, {r0}
	stm r5!, {r3}
	ldr r1, [sp, #0x024]
	str r1, [r5, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
