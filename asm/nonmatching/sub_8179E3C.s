	.syntax unified
	.text

	thumb_func_start sub_8179E3C
sub_8179E3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r7, r0, #0x0
	ldr r5, [r7, #0x0C]
	ldm r5!, {r0}
	mov r9, r0
	ldm r5!, {r1}
	str r1, [sp, #0x01C]
	ldm r5!, {r2}
	mov r10, r2
	ldm r5!, {r3}
	str r3, [sp, #0x020]
	ldr r0, [r7, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x030]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x038]
	movs r2, #0x04
	str r2, [sp, #0x02C]
_08179E8A:
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
	bge _08179EA2
	adds r0, #0xFF
_08179EA2:
	asrs r0, r0, #0x08
	mov r8, r0
	str r0, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _08179EB2
	adds r0, #0xFF
_08179EB2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08179EC0
	adds r0, #0xFF
_08179EC0:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _08179F4C @ =0x08198584
	mov r12, r4
	movs r6, #0x18
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08179ED4
	adds r0, #0x3F
_08179ED4:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r4, _08179F50 @ =0x08198504
	movs r6, #0x18
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08179EE4
	adds r0, #0x3F
_08179EE4:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08179EF0
	adds r0, #0xFF
_08179EF0:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r1, r12
	movs r6, #0x18
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _08179F00
	adds r0, #0x3F
_08179F00:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _08179F50 @ =0x08198504
	movs r6, #0x18
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _08179F12
	adds r0, #0x3F
_08179F12:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08179F1E
	adds r0, #0xFF
_08179F1E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x01C]
	add r2, r8
	str r2, [sp, #0x00C]
	mov r1, r10
	adds r0, r4, r1
	str r0, [sp, #0x010]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08179F54
	movs r3, #0x12
	ldsh r1, [r7, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08179F44
	adds r0, #0xFF
_08179F44:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08179F64
	.byte 0x00, 0x00
_08179F4C: .4byte word_8198584 @ =0x08198584
_08179F50: .4byte word_8198504 @ =0x08198504
_08179F54:
	movs r4, #0x12
	ldsh r1, [r7, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08179F60
	adds r0, #0xFF
_08179F60:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08179F64:
	str r0, [sp, #0x00C]
	movs r6, #0x14
	ldsh r1, [r7, r6]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08179F72
	adds r0, #0xFF
_08179F72:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08179F84
	adds r0, #0xFF
_08179F84:
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
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	bne _08179FC0
	ldr r0, _0817A008 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x028]
_08179FC0:
	ldr r3, [sp, #0x02C]
	subs r3, #0x01
	str r3, [sp, #0x02C]
	cmp r3, #0x00
	blt _08179FCC
	b _08179E8A
_08179FCC:
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	beq _08179FDA
	ldr r0, _0817A008 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08179FDA:
	movs r6, #0x80
	lsls r6, r6, #0x03
	add r9, r6
	ldr r0, [sp, #0x020]
	add r10, r0
	adds r0, #0x60
	ldr r5, [r7, #0x0C]
	mov r1, r9
	stm r5!, {r1}
	ldr r2, [sp, #0x01C]
	stm r5!, {r2}
	mov r3, r10
	stm r5!, {r3}
	str r0, [r5, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817A008: .4byte 0x03000D74
