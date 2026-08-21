	.syntax unified
	.text

	thumb_func_start sub_8178BC0
sub_8178BC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	mov r10, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r10
	ldr r0, [r3, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r5, sp
	adds r5, #0x10
	str r5, [sp, #0x038]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x034]
	movs r2, #0x03
	str r2, [sp, #0x02C]
_08178C1A:
	mov r3, r8
	ldm r3!, {r1}
	str r1, [sp, #0x00C]
	ldm r3!, {r2}
	str r2, [sp, #0x010]
	adds r4, r3, #0x0
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldm r4!, {r3}
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r4, r0, #0x03
	str r4, [sp, #0x00C]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x03
	mov r12, r0
	str r0, [sp, #0x010]
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r3, r0, #0x03
	str r3, [sp, #0x014]
	adds r2, r3, #0x0
	movs r0, #0xFF
	ldr r5, [sp, #0x020]
	ands r0, r5
	lsls r1, r0, #0x01
	ldr r0, _08178DC4 @ =0x08198584
	adds r6, r1, r0
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _08178C60
	adds r0, #0x3F
_08178C60:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08178DC8 @ =0x08198504
	mov r9, r0
	adds r5, r1, r0
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08178C74
	adds r0, #0x3F
_08178C74:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08178C80
	adds r0, #0xFF
_08178C80:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08178C8E
	adds r0, #0x3F
_08178C8E:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08178C9E
	adds r0, #0x3F
_08178C9E:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178CAA
	adds r0, #0xFF
_08178CAA:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08178DC4 @ =0x08198584
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08178CBC
	adds r0, #0x3F
_08178CBC:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r9
	movs r5, #0x18
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08178CCC
	adds r0, #0x3F
_08178CCC:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08178CD8
	adds r0, #0xFF
_08178CD8:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r1, _08178DC4 @ =0x08198584
	movs r3, #0x18
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08178CE8
	adds r0, #0x3F
_08178CE8:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r5, r9
	movs r3, #0x18
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08178CFA
	adds r0, #0x3F
_08178CFA:
	asrs r0, r0, #0x06
	mov r5, r12
	muls r5, r0
	adds r0, r5, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178D0A
	adds r0, #0xFF
_08178D0A:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	ldr r0, [sp, #0x01C]
	adds r2, r2, r0
	str r2, [sp, #0x010]
	mov r5, r10
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08178D22
	adds r0, #0xFF
_08178D22:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x00C]
	mov r4, r10
	movs r5, #0x14
	ldsh r1, [r4, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08178D36
	adds r0, #0xFF
_08178D36:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r0, r10
	movs r2, #0x16
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08178D4A
	adds r0, #0xFF
_08178D4A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x038]
	ldr r2, [sp, #0x030]
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
	ldr r0, [sp, #0x034]
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	bne _08178D86
	ldr r0, _08178DCC @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r4, #0x01
	str r4, [sp, #0x028]
_08178D86:
	ldr r5, [sp, #0x02C]
	subs r5, #0x01
	str r5, [sp, #0x02C]
	cmp r5, #0x00
	blt _08178D92
	b _08178C1A
_08178D92:
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	beq _08178DA0
	ldr r0, _08178DCC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08178DA0:
	ldr r1, [sp, #0x020]
	adds r1, #0x0B
	mov r2, r10
	ldr r2, [r2, #0x0C]
	mov r8, r2
	ldr r3, [sp, #0x01C]
	mov r4, r8
	stm r4!, {r3}
	str r1, [r4, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08178DC4: .4byte 0x08198584
_08178DC8: .4byte 0x08198504
_08178DCC: .4byte 0x03000D74
