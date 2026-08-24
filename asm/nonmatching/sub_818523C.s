	.syntax unified
	.text

	thumb_func_start sub_818523C
sub_818523C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
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
	ldr r3, [r3, #0x08]
	str r3, [sp, #0x020]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
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
	movs r3, #0x03
	str r3, [sp, #0x02C]
_0818529A:
	mov r4, r9
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r9, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081852BA
	adds r0, #0xFF
_081852BA:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _081852C8
	adds r0, #0xFF
_081852C8:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _081852D6
	adds r0, #0xFF
_081852D6:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r6, _081853B8 @ =0x08198584
	adds r6, #0x80
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _081852EA
	adds r0, #0x3F
_081852EA:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _081853BC @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x80
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08185300
	adds r0, #0x3F
_08185300:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818530C
	adds r0, #0xFF
_0818530C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0818531A
	adds r0, #0x3F
_0818531A:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0818532A
	adds r0, #0x3F
_0818532A:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08185336
	adds r0, #0xFF
_08185336:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r7, #0x0
	ldr r5, _081853B8 @ =0x08198584
	adds r5, #0x40
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _0818534A
	adds r0, #0x3F
_0818534A:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r12
	adds r3, #0x40
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _0818535C
	adds r0, #0x3F
_0818535C:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08185368
	adds r0, #0xFF
_08185368:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08185376
	adds r0, #0x3F
_08185376:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _08185386
	adds r0, #0x3F
_08185386:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08185392
	adds r0, #0xFF
_08185392:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081853C0
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081853B0
	adds r0, #0xFF
_081853B0:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081853D2
	.byte 0x00, 0x00
_081853B8: .4byte word_8198584 @ =0x08198584
_081853BC: .4byte word_8198504 @ =0x08198504
_081853C0:
	mov r0, r8
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081853CE
	adds r0, #0xFF
_081853CE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081853D2:
	str r0, [sp, #0x00C]
	mov r4, r8
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081853E2
	adds r0, #0xFF
_081853E2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081853F6
	adds r0, #0xFF
_081853F6:
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
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	bne _08185432
	ldr r0, _08185488 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x028]
_08185432:
	ldr r1, [sp, #0x02C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r1, #0x00
	blt _0818543E
	b _0818529A
_0818543E:
	ldr r2, [sp, #0x028]
	cmp r2, #0x00
	beq _0818544C
	ldr r0, _08185488 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818544C:
	ldr r3, [sp, #0x01C]
	add r10, r3
	lsls r0, r3, #0x03
	subs r0, r0, r3
	cmp r0, #0x00
	bge _0818545A
	adds r0, #0x07
_0818545A:
	asrs r0, r0, #0x03
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r4, [sp, #0x020]
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	mov r0, r8
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r10
	mov r2, r9
	stm r2!, {r1}
	ldr r3, [sp, #0x01C]
	str r3, [r2, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08185488: .4byte 0x03000D74
