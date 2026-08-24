	.syntax unified
	.text

	thumb_func_start sub_81910A8
sub_81910A8:
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
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x034]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x038]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x03C]
	movs r2, #0x03
	str r2, [sp, #0x030]
_0819110E:
	mov r3, r9
	ldm r3!, {r0}
	str r0, [sp, #0x00C]
	ldm r3!, {r1}
	str r1, [sp, #0x010]
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	ldr r4, [sp, #0x01C]
	muls r0, r4
	cmp r0, #0x00
	bge _0819112C
	adds r0, #0xFF
_0819112C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r6, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _0819113C
	adds r0, #0xFF
_0819113C:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0819114C
	adds r0, #0xFF
_0819114C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _08191234 @ =0x08198584
	mov r10, r3
	movs r0, #0xFF
	ldr r6, [sp, #0x024]
	ands r0, r6
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0819116A
	adds r0, #0x3F
_0819116A:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08191238 @ =0x08198504
	mov r12, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0819117E
	adds r0, #0x3F
_0819117E:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0819118A
	adds r0, #0xFF
_0819118A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08191198
	adds r0, #0x3F
_08191198:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _081911A8
	adds r0, #0x3F
_081911A8:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081911B4
	adds r0, #0xFF
_081911B4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r7, #0x0
	mov r5, r10
	adds r5, #0x80
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _081911C8
	adds r0, #0x3F
_081911C8:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r12
	adds r4, #0x80
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _081911DA
	adds r0, #0x3F
_081911DA:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081911E6
	adds r0, #0xFF
_081911E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _081911F4
	adds r0, #0x3F
_081911F4:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08191204
	adds r0, #0x3F
_08191204:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08191210
	adds r0, #0xFF
_08191210:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0819123C
	movs r5, #0x12
	ldsh r1, [r4, r5]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0819122C
	adds r0, #0xFF
_0819122C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0819124E
	.byte 0x00, 0x00
_08191234: .4byte 0x08198584
_08191238: .4byte 0x08198504
_0819123C:
	mov r6, r8
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0819124A
	adds r0, #0xFF
_0819124A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0819124E:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0819125E
	adds r0, #0xFF
_0819125E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08191272
	adds r0, #0xFF
_08191272:
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
	ldr r6, [sp, #0x02C]
	cmp r6, #0x00
	bne _081912AE
	ldr r0, _081912F0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x02C]
_081912AE:
	ldr r1, [sp, #0x030]
	subs r1, #0x01
	str r1, [sp, #0x030]
	cmp r1, #0x00
	blt _081912BA
	b _0819110E
_081912BA:
	ldr r2, [sp, #0x02C]
	cmp r2, #0x00
	beq _081912C8
	ldr r0, _081912F0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081912C8:
	ldr r3, [sp, #0x024]
	subs r3, #0x03
	mov r4, r8
	ldr r4, [r4, #0x0C]
	mov r9, r4
	ldr r5, [sp, #0x01C]
	mov r6, r9
	stm r6!, {r5}
	ldr r0, [sp, #0x020]
	stm r6!, {r0}
	str r3, [r6, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081912F0: .4byte 0x03000D74
