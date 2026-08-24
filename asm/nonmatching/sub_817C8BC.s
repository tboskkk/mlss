	.syntax unified
	.text

	thumb_func_start sub_817C8BC
sub_817C8BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	str r0, [sp, #0x01C]
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x020]
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x024]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x028]
	mov r4, r8
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x02C]
	ldr r5, [sp, #0x01C]
	ldr r0, [r5, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r0, #0x00
	str r0, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x03C]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x040]
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x044]
	movs r4, #0x03
	str r4, [sp, #0x038]
_0817C92E:
	mov r5, r8
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	adds r5, #0x04
	mov r8, r5
	subs r5, #0x04
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x020]
	muls r0, r3
	cmp r0, #0x00
	bge _0817C94C
	adds r0, #0xFF
_0817C94C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r4, [sp, #0x020]
	adds r0, r1, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _0817C95C
	adds r0, #0xFF
_0817C95C:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x020]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0817C96E
	adds r0, #0xFF
_0817C96E:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _0817CB0C @ =0x08198584
	mov r10, r3
	movs r0, #0xFF
	ldr r1, [sp, #0x028]
	ands r0, r1
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817C98C
	adds r0, #0x3F
_0817C98C:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0817CB10 @ =0x08198504
	mov r9, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0817C9A0
	adds r0, #0x3F
_0817C9A0:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817C9AC
	adds r0, #0xFF
_0817C9AC:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0817C9BA
	adds r0, #0x3F
_0817C9BA:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0817C9CA
	adds r0, #0x3F
_0817C9CA:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817C9D6
	adds r0, #0xFF
_0817C9D6:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	mov r2, r10
	movs r3, #0x18
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _0817C9E8
	adds r0, #0x3F
_0817C9E8:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r9
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0817C9F8
	adds r0, #0x3F
_0817C9F8:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817CA04
	adds r0, #0xFF
_0817CA04:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	mov r3, r10
	movs r5, #0x18
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0817CA14
	adds r0, #0x3F
_0817CA14:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r3, r9
	movs r5, #0x18
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0817CA26
	adds r0, #0x3F
_0817CA26:
	asrs r0, r0, #0x06
	mov r3, r12
	muls r3, r0
	adds r0, r3, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817CA36
	adds r0, #0xFF
_0817CA36:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	ldr r5, [sp, #0x02C]
	adds r2, r2, r5
	str r2, [sp, #0x010]
	ldr r0, [sp, #0x01C]
	movs r5, #0x12
	ldsh r1, [r0, r5]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817CA4E
	adds r0, #0xFF
_0817CA4E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x01C]
	movs r4, #0x14
	ldsh r1, [r0, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817CA62
	adds r0, #0xFF
_0817CA62:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x01C]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817CA76
	adds r0, #0xFF
_0817CA76:
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
	ldr r1, [sp, #0x034]
	cmp r1, #0x00
	bne _0817CAB2
	ldr r0, _0817CB14 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x034]
_0817CAB2:
	ldr r3, [sp, #0x038]
	subs r3, #0x01
	str r3, [sp, #0x038]
	cmp r3, #0x00
	blt _0817CABE
	b _0817C92E
_0817CABE:
	ldr r4, [sp, #0x034]
	cmp r4, #0x00
	beq _0817CACC
	ldr r0, _0817CB14 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817CACC:
	ldr r5, [sp, #0x020]
	ldr r0, [sp, #0x024]
	subs r5, r5, r0
	adds r0, #0x28
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	adds r1, #0x08
	str r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
	ldr r3, _0817CB18 @ =0xFFFFFE00
	adds r2, r2, r3
	str r2, [sp, #0x02C]
	ldr r4, [sp, #0x01C]
	ldr r4, [r4, #0x0C]
	mov r8, r4
	mov r0, r8
	stm r0!, {r5}
	ldr r1, [sp, #0x024]
	stm r0!, {r1}
	ldr r2, [sp, #0x028]
	stm r0!, {r2}
	ldr r3, [sp, #0x02C]
	str r3, [r0, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817CB0C: .4byte word_8198584 @ =0x08198584
_0817CB10: .4byte word_8198504 @ =0x08198504
_0817CB14: .4byte 0x03000D74
_0817CB18: .4byte 0xFFFFFE00
