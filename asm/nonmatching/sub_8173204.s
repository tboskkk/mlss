	.syntax unified
	.text

	thumb_func_start sub_8173204
sub_8173204:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r7, r0, #0x0
	ldr r0, [r7, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r9, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	mov r10, r2
	ldr r0, [r7, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x01C]
	movs r3, #0x00
	str r3, [sp, #0x020]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x01C]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x028]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x02C]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x030]
	movs r2, #0x04
	str r2, [sp, #0x024]
_0817325C:
	mov r3, r8
	ldm r3!, {r0}
	str r0, [sp, #0x00C]
	ldm r3!, {r1}
	str r1, [sp, #0x010]
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r6, r9
	muls r6, r0
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817327C
	adds r0, #0xFF
_0817327C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817328A
	adds r0, #0xFF
_0817328A:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08173298
	adds r0, #0xFF
_08173298:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r4, #0x0
	ldr r0, _08173320 @ =0x08198584
	adds r0, #0x54
	mov r12, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081732AE
	adds r0, #0x3F
_081732AE:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _08173324 @ =0x08198558
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _081732BE
	adds r0, #0x3F
_081732BE:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081732CA
	adds r0, #0xFF
_081732CA:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r6, r12
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _081732DA
	adds r0, #0x3F
_081732DA:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _08173324 @ =0x08198558
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _081732EC
	adds r0, #0x3F
_081732EC:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081732F8
	adds r0, #0xFF
_081732F8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, _08173328 @ =0xFFFFFC00
	adds r0, r3, r1
	str r0, [sp, #0x010]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817332C
	movs r2, #0x12
	ldsh r1, [r7, r2]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _08173318
	adds r0, #0xFF
_08173318:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817333C
	.byte 0x00, 0x00
_08173320: .4byte 0x08198584
_08173324: .4byte 0x08198558
_08173328: .4byte 0xFFFFFC00
_0817332C:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _08173338
	adds r0, #0xFF
_08173338:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817333C:
	str r0, [sp, #0x00C]
	movs r6, #0x14
	ldsh r1, [r7, r6]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817334A
	adds r0, #0xFF
_0817334A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817335C
	adds r0, #0xFF
_0817335C:
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
	ldr r1, [sp, #0x020]
	cmp r1, #0x00
	bne _08173398
	ldr r0, _081733E0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x020]
_08173398:
	ldr r3, [sp, #0x024]
	subs r3, #0x01
	str r3, [sp, #0x024]
	cmp r3, #0x00
	blt _081733A4
	b _0817325C
_081733A4:
	ldr r6, [sp, #0x020]
	cmp r6, #0x00
	beq _081733B2
	ldr r0, _081733E0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081733B2:
	add r9, r10
	mov r1, r10
	lsls r0, r1, #0x01
	add r0, r10
	cmp r0, #0x00
	bge _081733C0
	adds r0, #0x03
_081733C0:
	asrs r0, r0, #0x02
	ldr r7, [r7, #0x0C]
	mov r8, r7
	mov r2, r9
	mov r3, r8
	stm r3!, {r2}
	str r0, [r3, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081733E0: .4byte 0x03000D74
