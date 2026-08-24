	.syntax unified
	.text

	thumb_func_start sub_817A204
sub_817A204:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r6, r0, #0x0
	ldr r7, [r6, #0x0C]
	ldm r7!, {r0}
	mov r8, r0
	ldm r7!, {r1}
	mov r10, r1
	ldr r0, [r6, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x01C]
	movs r2, #0x00
	str r2, [sp, #0x020]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x01C]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x028]
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x02C]
	mov r5, sp
	adds r5, #0x18
	str r5, [sp, #0x030]
	movs r0, #0x07
	str r0, [sp, #0x024]
_0817A24A:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r3, r8
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817A262
	adds r0, #0xFF
_0817A262:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _0817A270
	adds r0, #0xFF
_0817A270:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r8
	muls r0, r2
	cmp r0, #0x00
	bge _0817A27E
	adds r0, #0xFF
_0817A27E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _0817A360 @ =0x08198584
	mov r9, r4
	ldr r5, _0817A364 @ =0x08198604
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0817A294
	adds r0, #0x3F
_0817A294:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _0817A368 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817A2AA
	adds r0, #0x3F
_0817A2AA:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817A2B6
	adds r0, #0xFF
_0817A2B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r1, _0817A364 @ =0x08198604
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _0817A2C6
	adds r0, #0x3F
_0817A2C6:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0817A2D6
	adds r0, #0x3F
_0817A2D6:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817A2E2
	adds r0, #0xFF
_0817A2E2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	adds r1, r3, #0x0
	mov r5, r9
	adds r5, #0xC0
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0817A2F6
	adds r0, #0x3F
_0817A2F6:
	asrs r0, r0, #0x06
	adds r2, r1, #0x0
	muls r2, r0
	mov r4, r12
	adds r4, #0xC0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _0817A30A
	adds r0, #0x3F
_0817A30A:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x00C]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817A318
	adds r0, #0xFF
_0817A318:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0817A326
	adds r0, #0x3F
_0817A326:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817A334
	adds r0, #0x3F
_0817A334:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817A340
	adds r0, #0xFF
_0817A340:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817A36C
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817A35A
	adds r0, #0xFF
_0817A35A:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817A37C
_0817A360: .4byte word_8198584 @ =0x08198584
_0817A364: .4byte word_8198604 @ =0x08198604
_0817A368: .4byte word_8198504 @ =0x08198504
_0817A36C:
	movs r3, #0x12
	ldsh r1, [r6, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817A378
	adds r0, #0xFF
_0817A378:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817A37C:
	str r0, [sp, #0x00C]
	movs r4, #0x14
	ldsh r1, [r6, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817A38A
	adds r0, #0xFF
_0817A38A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r5, #0x16
	ldsh r1, [r6, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817A39C
	adds r0, #0xFF
_0817A39C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
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
	ldr r0, [sp, #0x030]
	ldr r1, [sp, #0x01C]
	bl sub_807C564
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _0817A3D8
	ldr r0, _0817A418 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x020]
_0817A3D8:
	ldr r2, [sp, #0x024]
	subs r2, #0x01
	str r2, [sp, #0x024]
	cmp r2, #0x00
	blt _0817A3E4
	b _0817A24A
_0817A3E4:
	ldr r3, [sp, #0x020]
	cmp r3, #0x00
	beq _0817A3F2
	ldr r0, _0817A418 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817A3F2:
	add r8, r10
	mov r4, r10
	lsls r0, r4, #0x03
	add r0, r10
	movs r1, #0x0A
	bl __divsi3
	ldr r7, [r6, #0x0C]
	mov r5, r8
	stm r7!, {r5}
	str r0, [r7, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817A418: .4byte 0x03000D74
