	.syntax unified
	.text

	thumb_func_start sub_818A6AC
sub_818A6AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r9
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r8
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
	movs r3, #0x09
	str r3, [sp, #0x030]
_0818A712:
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
	ldr r5, [sp, #0x01C]
	muls r0, r5
	cmp r0, #0x00
	bge _0818A730
	adds r0, #0xFF
_0818A730:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _0818A740
	adds r0, #0xFF
_0818A740:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	ldr r4, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _0818A750
	adds r0, #0xFF
_0818A750:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r0, _0818A838 @ =0x08198584
	mov r10, r0
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	mov r3, r10
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0818A770
	adds r0, #0x3F
_0818A770:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0818A83C @ =0x08198504
	mov r12, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0818A784
	adds r0, #0x3F
_0818A784:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818A790
	adds r0, #0xFF
_0818A790:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0818A79E
	adds r0, #0x3F
_0818A79E:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818A7AE
	adds r0, #0x3F
_0818A7AE:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818A7BA
	adds r0, #0xFF
_0818A7BA:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r7, #0x0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0818A7CC
	adds r0, #0x3F
_0818A7CC:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r12
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0818A7DC
	adds r0, #0x3F
_0818A7DC:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818A7E8
	adds r0, #0xFF
_0818A7E8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r10
	movs r4, #0x18
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _0818A7F8
	adds r0, #0x3F
_0818A7F8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r5, r12
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0818A80A
	adds r0, #0x3F
_0818A80A:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818A816
	adds r0, #0xFF
_0818A816:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818A840
	movs r5, #0x12
	ldsh r1, [r4, r5]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818A832
	adds r0, #0xFF
_0818A832:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818A852
_0818A838: .4byte word_8198584 @ =0x08198584
_0818A83C: .4byte word_8198504 @ =0x08198504
_0818A840:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818A84E
	adds r0, #0xFF
_0818A84E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818A852:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818A862
	adds r0, #0xFF
_0818A862:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818A876
	adds r0, #0xFF
_0818A876:
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
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	bne _0818A8B2
	ldr r0, _0818A8F4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x02C]
_0818A8B2:
	ldr r3, [sp, #0x030]
	subs r3, #0x01
	str r3, [sp, #0x030]
	cmp r3, #0x00
	blt _0818A8BE
	b _0818A712
_0818A8BE:
	ldr r4, [sp, #0x02C]
	cmp r4, #0x00
	beq _0818A8CC
	ldr r0, _0818A8F4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818A8CC:
	ldr r5, [sp, #0x01C]
	ldr r0, [sp, #0x020]
	adds r5, r5, r0
	ldr r1, [sp, #0x024]
	adds r1, #0x02
	mov r2, r8
	ldr r2, [r2, #0x0C]
	mov r9, r2
	mov r3, r9
	stm r3!, {r5}
	stm r3!, {r0}
	str r1, [r3, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0818A8F4: .4byte 0x03000D74
