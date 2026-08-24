	.syntax unified
	.text

	thumb_func_start sub_8175768
sub_8175768:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	mov r10, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	str r0, [sp, #0x01C]
	ldm r7!, {r1}
	str r1, [sp, #0x020]
	ldm r7!, {r2}
	str r2, [sp, #0x024]
	ldm r7!, {r3}
	str r3, [sp, #0x028]
	ldm r7!, {r5}
	str r5, [sp, #0x02C]
	mov r0, r10
	ldr r0, [r0, #0x08]
	str r0, [sp, #0x030]
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x030]
	bl sub_80841B8
	str r0, [sp, #0x034]
	movs r1, #0x00
	str r1, [sp, #0x038]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x034]
	bl sub_807F9A8
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x040]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x044]
	mov r5, sp
	adds r5, #0x18
	str r5, [sp, #0x048]
	movs r0, #0x04
	str r0, [sp, #0x03C]
_081757C0:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _081757D6
	adds r0, #0xFF
_081757D6:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _081757E6
	adds r0, #0xFF
_081757E6:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081757F8
	adds r0, #0xFF
_081757F8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _08175940 @ =0x08198584
	mov r9, r3
	movs r0, #0xFF
	ldr r1, [sp, #0x02C]
	ands r0, r1
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08175816
	adds r0, #0x3F
_08175816:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08175944 @ =0x08198504
	mov r8, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0817582A
	adds r0, #0x3F
_0817582A:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08175836
	adds r0, #0xFF
_08175836:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08175844
	adds r0, #0x3F
_08175844:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175854
	adds r0, #0x3F
_08175854:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08175860
	adds r0, #0xFF
_08175860:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	mov r3, r9
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175872
	adds r0, #0x3F
_08175872:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r8
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08175882
	adds r0, #0x3F
_08175882:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817588E
	adds r0, #0xFF
_0817588E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r1, r9
	movs r5, #0x20
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _0817589E
	adds r0, #0x3F
_0817589E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	movs r5, #0x20
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _081758B0
	adds r0, #0x3F
_081758B0:
	asrs r0, r0, #0x06
	mov r2, r12
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081758C0
	adds r0, #0xFF
_081758C0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r4, #0x0
	mov r6, r9
	adds r6, #0x40
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _081758D4
	adds r0, #0x3F
_081758D4:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r8
	adds r5, #0x40
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _081758E6
	adds r0, #0x3F
_081758E6:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081758F2
	adds r0, #0xFF
_081758F2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08175900
	adds r0, #0x3F
_08175900:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08175910
	adds r0, #0x3F
_08175910:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817591C
	adds r0, #0xFF
_0817591C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r5, r10
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08175948
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08175938
	adds r0, #0xFF
_08175938:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817595A
	.byte 0x00, 0x00
_08175940: .4byte 0x08198584
_08175944: .4byte 0x08198504
_08175948:
	mov r3, r10
	movs r5, #0x12
	ldsh r1, [r3, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08175956
	adds r0, #0xFF
_08175956:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817595A:
	str r0, [sp, #0x00C]
	mov r0, r10
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817596A
	adds r0, #0xFF
_0817596A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r10
	movs r5, #0x16
	ldsh r1, [r3, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817597E
	adds r0, #0xFF
_0817597E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x040]
	ldr r2, [sp, #0x044]
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
	ldr r0, [sp, #0x048]
	ldr r1, [sp, #0x034]
	bl sub_807C564
	ldr r0, [sp, #0x038]
	cmp r0, #0x00
	bne _081759BA
	ldr r0, _08175A08 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x038]
_081759BA:
	ldr r2, [sp, #0x03C]
	subs r2, #0x01
	str r2, [sp, #0x03C]
	cmp r2, #0x00
	blt _081759C6
	b _081757C0
_081759C6:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	beq _081759D4
	ldr r0, _08175A08 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081759D4:
	ldr r5, [sp, #0x01C]
	ldr r0, [sp, #0x020]
	adds r5, r5, r0
	str r5, [sp, #0x01C]
	lsrs r0, r0, #0x1F
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	asrs r0, r0, #0x01
	str r0, [sp, #0x020]
	ldr r2, [sp, #0x024]
	ldr r3, [sp, #0x028]
	adds r2, r2, r3
	str r2, [sp, #0x024]
	adds r3, #0x01
	str r3, [sp, #0x028]
	ldr r5, [sp, #0x02C]
	adds r5, #0x06
	str r5, [sp, #0x02C]
	mov r0, r10
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08175A0C
	negs r0, r2
	b _08175A0E
_08175A08: .4byte 0x03000D74
_08175A0C:
	ldr r0, [sp, #0x024]
_08175A0E:
	cmp r0, #0x00
	bge _08175A14
	adds r0, #0x07
_08175A14:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x08
	ldr r1, [sp, #0x030]
	strh r0, [r1, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldr r3, [sp, #0x024]
	subs r0, r0, r3
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r5, r10
	ldr r7, [r5, #0x0C]
	ldr r0, [sp, #0x01C]
	stm r7!, {r0}
	ldr r1, [sp, #0x020]
	stm r7!, {r1}
	stm r7!, {r3}
	ldr r2, [sp, #0x028]
	stm r7!, {r2}
	ldr r3, [sp, #0x02C]
	str r3, [r7, #0x00]
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
