	.syntax unified
	.text

	thumb_func_start sub_817AC00
sub_817AC00:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r5, r0, #0x0
	ldr r0, [r5, #0x0C]
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
	ldr r0, [r5, #0x08]
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
	mov r7, sp
	adds r7, #0x14
	str r7, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x030]
	movs r1, #0x01
	str r1, [sp, #0x024]
_0817AC58:
	mov r2, r8
	ldm r2!, {r0}
	str r0, [sp, #0x00C]
	ldm r2!, {r1}
	str r1, [sp, #0x010]
	adds r3, r2, #0x0
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r6, r9
	muls r6, r0
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817AC7A
	adds r0, #0xFF
_0817AC7A:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817AC88
	adds r0, #0xFF
_0817AC88:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817AC96
	adds r0, #0xFF
_0817AC96:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r7, _0817AD14 @ =0x08198584
	mov r12, r7
	mov r6, r12
	movs r7, #0x18
	ldsh r0, [r6, r7]
	cmp r0, #0x00
	bge _0817ACAC
	adds r0, #0x3F
_0817ACAC:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _0817AD18 @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r6, r7]
	cmp r0, #0x00
	bge _0817ACBC
	adds r0, #0x3F
_0817ACBC:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817ACC8
	adds r0, #0xFF
_0817ACC8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r12
	movs r7, #0x18
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _0817ACD8
	adds r0, #0x3F
_0817ACD8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x18
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0817ACE8
	adds r0, #0x3F
_0817ACE8:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817ACF4
	adds r0, #0xFF
_0817ACF4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817AD1C
	movs r3, #0x12
	ldsh r1, [r5, r3]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817AD0E
	adds r0, #0xFF
_0817AD0E:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817AD2C
_0817AD14: .4byte word_8198584 @ =0x08198584
_0817AD18: .4byte word_8198504 @ =0x08198504
_0817AD1C:
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817AD28
	adds r0, #0xFF
_0817AD28:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817AD2C:
	str r0, [sp, #0x00C]
	movs r7, #0x14
	ldsh r1, [r5, r7]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817AD3A
	adds r0, #0xFF
_0817AD3A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817AD4C
	adds r0, #0xFF
_0817AD4C:
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
	bne _0817AD88
	ldr r0, _0817ADD0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x020]
_0817AD88:
	ldr r3, [sp, #0x024]
	subs r3, #0x01
	str r3, [sp, #0x024]
	cmp r3, #0x00
	blt _0817AD94
	b _0817AC58
_0817AD94:
	ldr r6, [sp, #0x020]
	cmp r6, #0x00
	beq _0817ADA2
	ldr r0, _0817ADD0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817ADA2:
	add r9, r10
	mov r7, r10
	lsls r0, r7, #0x02
	movs r1, #0x05
	bl __divsi3
	mov r10, r0
	ldr r5, [r5, #0x0C]
	mov r8, r5
	mov r0, r9
	mov r1, r8
	stm r1!, {r0}
	mov r2, r10
	str r2, [r1, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817ADD0: .4byte 0x03000D74
