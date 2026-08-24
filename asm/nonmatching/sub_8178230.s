	.syntax unified
	.text

	thumb_func_start sub_8178230
sub_8178230:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	mov r9, r0
	ldm r5!, {r1}
	str r1, [sp, #0x01C]
	ldm r5!, {r2}
	str r2, [sp, #0x020]
	ldm r5!, {r3}
	mov r10, r3
	ldm r5!, {r4}
	str r4, [sp, #0x024]
	mov r7, r8
	ldr r7, [r7, #0x08]
	str r7, [sp, #0x028]
	ldr r0, [r7, #0x34]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r0, #0x00
	str r0, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x03C]
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x040]
	movs r4, #0x09
	str r4, [sp, #0x034]
_08178288:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	mov r7, r9
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _081782A0
	adds r0, #0xFF
_081782A0:
	asrs r6, r0, #0x08
	str r6, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081782AE
	adds r0, #0xFF
_081782AE:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _081782BC
	adds r0, #0xFF
_081782BC:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r0, _08178344 @ =0x08198584
	mov r12, r0
	movs r4, #0x18
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _081782D0
	adds r0, #0x3F
_081782D0:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r7, _08178348 @ =0x08198504
	movs r4, #0x18
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _081782E0
	adds r0, #0x3F
_081782E0:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081782EC
	adds r0, #0xFF
_081782EC:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r7, r12
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _081782FC
	adds r0, #0x3F
_081782FC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _08178348 @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r2, r7]
	cmp r0, #0x00
	bge _0817830E
	adds r0, #0x3F
_0817830E:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817831A
	adds r0, #0xFF
_0817831A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r1, r10
	adds r0, r4, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817834C
	movs r3, #0x12
	ldsh r1, [r2, r3]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817833C
	adds r0, #0xFF
_0817833C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817835E
	.byte 0x00, 0x00
_08178344: .4byte 0x08198584
_08178348: .4byte 0x08198504
_0817834C:
	mov r4, r8
	movs r7, #0x12
	ldsh r1, [r4, r7]
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817835A
	adds r0, #0xFF
_0817835A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817835E:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817836E
	adds r0, #0xFF
_0817836E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08178382
	adds r0, #0xFF
_08178382:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x038]
	ldr r2, [sp, #0x03C]
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
	ldr r0, [sp, #0x040]
	ldr r1, [sp, #0x02C]
	bl sub_807C564
	ldr r7, [sp, #0x030]
	cmp r7, #0x00
	bne _081783BE
	ldr r0, _08178424 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x030]
_081783BE:
	ldr r1, [sp, #0x034]
	subs r1, #0x01
	str r1, [sp, #0x034]
	cmp r1, #0x00
	blt _081783CA
	b _08178288
_081783CA:
	ldr r2, [sp, #0x030]
	cmp r2, #0x00
	beq _081783D8
	ldr r0, _08178424 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081783D8:
	movs r3, #0x80
	lsls r3, r3, #0x03
	add r9, r3
	ldr r4, [sp, #0x024]
	add r10, r4
	adds r4, #0x60
	str r4, [sp, #0x024]
	ldr r7, [sp, #0x01C]
	ldr r0, [sp, #0x020]
	adds r7, r7, r0
	adds r0, #0x01
	str r0, [sp, #0x020]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r0, r1, #0x0
	subs r0, r0, r7
	ldr r2, [sp, #0x028]
	strh r0, [r2, #0x04]
	strh r0, [r2, #0x06]
	mov r3, r8
	ldr r5, [r3, #0x0C]
	mov r4, r9
	stm r5!, {r4}
	stm r5!, {r7}
	ldr r7, [sp, #0x020]
	stm r5!, {r7}
	mov r0, r10
	stm r5!, {r0}
	ldr r1, [sp, #0x024]
	str r1, [r5, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08178424: .4byte 0x03000D74
