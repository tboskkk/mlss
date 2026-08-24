	.syntax unified
	.text

	thumb_func_start sub_8178038
sub_8178038:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	mov r9, r0
	ldm r5!, {r1}
	str r1, [sp, #0x01C]
	ldm r5!, {r2}
	str r2, [sp, #0x020]
	ldm r5!, {r3}
	str r3, [sp, #0x024]
	ldm r5!, {r4}
	mov r10, r4
	ldm r5!, {r0}
	str r0, [sp, #0x028]
	mov r1, r8
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x02C]
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r2, #0x00
	str r2, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x03C]
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x040]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x044]
	movs r1, #0x05
	str r1, [sp, #0x038]
_08178094:
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
	bge _081780AC
	adds r0, #0xFF
_081780AC:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081780BC
	adds r0, #0xFF
_081780BC:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _081780CA
	adds r0, #0xFF
_081780CA:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r7, _08178150 @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _081780DC
	adds r0, #0x3F
_081780DC:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _08178154 @ =0x08198504
	movs r4, #0x18
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _081780EC
	adds r0, #0x3F
_081780EC:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081780F8
	adds r0, #0xFF
_081780F8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _08178106
	adds r0, #0x3F
_08178106:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x18
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08178116
	adds r0, #0x3F
_08178116:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178122
	adds r0, #0xFF
_08178122:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x024]
	add r2, r12
	str r2, [sp, #0x00C]
	mov r3, r10
	adds r0, r4, r3
	str r0, [sp, #0x010]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08178158
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817814A
	adds r0, #0xFF
_0817814A:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817816A
_08178150: .4byte word_8198584 @ =0x08198584
_08178154: .4byte word_8198504 @ =0x08198504
_08178158:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08178166
	adds r0, #0xFF
_08178166:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817816A:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817817A
	adds r0, #0xFF
_0817817A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817818E
	adds r0, #0xFF
_0817818E:
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
	ldr r0, [sp, #0x034]
	cmp r0, #0x00
	bne _081781CA
	ldr r0, _0817822C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x034]
_081781CA:
	ldr r2, [sp, #0x038]
	subs r2, #0x01
	str r2, [sp, #0x038]
	cmp r2, #0x00
	blt _081781D6
	b _08178094
_081781D6:
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	beq _081781E4
	ldr r0, _0817822C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081781E4:
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r9, r4
	ldr r0, [sp, #0x028]
	add r10, r0
	adds r0, #0x60
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x020]
	adds r1, r1, r2
	adds r2, #0x01
	movs r0, #0xA0
	subs r0, r0, r1
	ldr r3, [sp, #0x02C]
	strh r0, [r3, #0x04]
	strh r0, [r3, #0x06]
	mov r4, r8
	ldr r5, [r4, #0x0C]
	mov r0, r9
	stm r5!, {r0}
	stm r5!, {r1}
	stm r5!, {r2}
	ldr r1, [sp, #0x024]
	stm r5!, {r1}
	mov r2, r10
	stm r5!, {r2}
	ldr r3, [sp, #0x028]
	str r3, [r5, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817822C: .4byte 0x03000D74
