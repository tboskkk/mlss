	.syntax unified
	.text

	thumb_func_start sub_817D1F0
sub_817D1F0:
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
	str r4, [sp, #0x028]
	ldm r5!, {r7}
	str r7, [sp, #0x02C]
	mov r0, r8
	ldr r0, [r0, #0x08]
	mov r10, r0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	mov r0, r10
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r1, #0x00
	str r1, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x03C]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x040]
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0x044]
	movs r7, #0x08
	str r7, [sp, #0x038]
_0817D24C:
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
	bge _0817D264
	adds r0, #0xFF
_0817D264:
	asrs r6, r0, #0x08
	str r6, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817D272
	adds r0, #0xFF
_0817D272:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817D280
	adds r0, #0xFF
_0817D280:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _0817D308 @ =0x08198584
	mov r12, r4
	movs r7, #0x18
	ldsh r0, [r4, r7]
	cmp r0, #0x00
	bge _0817D294
	adds r0, #0x3F
_0817D294:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r4, _0817D30C @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r4, r7]
	cmp r0, #0x00
	bge _0817D2A4
	adds r0, #0x3F
_0817D2A4:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817D2B0
	adds r0, #0xFF
_0817D2B0:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r1, r12
	movs r7, #0x18
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _0817D2C0
	adds r0, #0x3F
_0817D2C0:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _0817D30C @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r2, r7]
	cmp r0, #0x00
	bge _0817D2D2
	adds r0, #0x3F
_0817D2D2:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817D2DE
	adds r0, #0xFF
_0817D2DE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x024]
	adds r0, r4, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817D310
	movs r3, #0x12
	ldsh r1, [r2, r3]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817D300
	adds r0, #0xFF
_0817D300:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817D322
	.byte 0x00, 0x00
_0817D308: .4byte word_8198584 @ =0x08198584
_0817D30C: .4byte word_8198504 @ =0x08198504
_0817D310:
	mov r4, r8
	movs r7, #0x12
	ldsh r1, [r4, r7]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817D31E
	adds r0, #0xFF
_0817D31E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817D322:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817D332
	adds r0, #0xFF
_0817D332:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817D346
	adds r0, #0xFF
_0817D346:
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
	ldr r7, [sp, #0x034]
	cmp r7, #0x00
	bne _0817D382
	ldr r0, _0817D3E4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x034]
_0817D382:
	ldr r1, [sp, #0x038]
	subs r1, #0x01
	str r1, [sp, #0x038]
	cmp r1, #0x00
	blt _0817D38E
	b _0817D24C
_0817D38E:
	ldr r2, [sp, #0x034]
	cmp r2, #0x00
	beq _0817D39C
	ldr r0, _0817D3E4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817D39C:
	movs r3, #0x80
	lsls r3, r3, #0x03
	add r9, r3
	ldr r4, [sp, #0x024]
	ldr r7, [sp, #0x028]
	adds r4, r4, r7
	str r4, [sp, #0x024]
	adds r0, r7, #0x0
	adds r0, #0x60
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x020]
	adds r1, r1, r2
	str r1, [sp, #0x01C]
	adds r2, #0x01
	str r2, [sp, #0x020]
	movs r3, #0xA0
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	subs r0, r0, r1
	mov r4, r10
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	ldr r7, [sp, #0x02C]
	adds r7, #0x06
	str r7, [sp, #0x02C]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817D3E8
	negs r0, r7
	lsls r0, r0, #0x08
	b _0817D3EC
	.byte 0x00, 0x00
_0817D3E4: .4byte 0x03000D74
_0817D3E8:
	ldr r1, [sp, #0x02C]
	lsls r0, r1, #0x08
_0817D3EC:
	mov r2, r10
	strh r0, [r2, #0x0C]
	mov r3, r8
	ldr r5, [r3, #0x0C]
	mov r4, r9
	stm r5!, {r4}
	ldr r7, [sp, #0x01C]
	stm r5!, {r7}
	ldr r0, [sp, #0x020]
	stm r5!, {r0}
	ldr r1, [sp, #0x024]
	stm r5!, {r1}
	ldr r2, [sp, #0x028]
	stm r5!, {r2}
	ldr r3, [sp, #0x02C]
	str r3, [r5, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
