	.syntax unified
	.text

	thumb_func_start sub_8188BF4
sub_8188BF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	mov r8, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	mov r9, r0
	ldm r7!, {r1}
	str r1, [sp, #0x01C]
	ldm r7!, {r2}
	str r2, [sp, #0x020]
	ldm r7!, {r3}
	str r3, [sp, #0x024]
	mov r4, r8
	ldr r4, [r4, #0x08]
	str r4, [sp, #0x028]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r5, #0x00
	str r5, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x038]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x03C]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x040]
	movs r2, #0x05
	str r2, [sp, #0x034]
_08188C48:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08188C60
	adds r0, #0xFF
_08188C60:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _08188C6E
	adds r0, #0xFF
_08188C6E:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08188C7E
	adds r0, #0xFF
_08188C7E:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x020]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _08188D68 @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08188C9A
	adds r0, #0x3F
_08188C9A:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08188D6C @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08188CAE
	adds r0, #0x3F
_08188CAE:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08188CBA
	adds r0, #0xFF
_08188CBA:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08188CC8
	adds r0, #0x3F
_08188CC8:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08188CD8
	adds r0, #0x3F
_08188CD8:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08188CE4
	adds r0, #0xFF
_08188CE4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08188D68 @ =0x08198584
	adds r5, #0x80
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _08188CF8
	adds r0, #0x3F
_08188CF8:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	adds r4, #0x80
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08188D0A
	adds r0, #0x3F
_08188D0A:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08188D16
	adds r0, #0xFF
_08188D16:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08188D24
	adds r0, #0x3F
_08188D24:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08188D34
	adds r0, #0x3F
_08188D34:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08188D44
	adds r0, #0xFF
_08188D44:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08188D70
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08188D60
	adds r0, #0xFF
_08188D60:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08188D82
	.byte 0x00, 0x00
_08188D68: .4byte word_8198584 @ =0x08198584
_08188D6C: .4byte word_8198504 @ =0x08198504
_08188D70:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08188D7E
	adds r0, #0xFF
_08188D7E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08188D82:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08188D92
	adds r0, #0xFF
_08188D92:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08188DA6
	adds r0, #0xFF
_08188DA6:
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
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bne _08188DE2
	ldr r0, _08188E48 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x030]
_08188DE2:
	ldr r2, [sp, #0x034]
	subs r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x00
	blt _08188DEE
	b _08188C48
_08188DEE:
	ldr r3, [sp, #0x030]
	cmp r3, #0x00
	beq _08188DFC
	ldr r0, _08188E48 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08188DFC:
	ldr r4, [sp, #0x01C]
	add r9, r4
	ldr r5, [sp, #0x020]
	subs r5, #0x03
	str r5, [sp, #0x020]
	ldr r6, [sp, #0x024]
	adds r6, #0x08
	str r6, [sp, #0x024]
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r6, r0
	ble _08188E16
	str r0, [sp, #0x024]
_08188E16:
	mov r0, sp
	ldrh r1, [r0, #0x24]
	ldr r0, [sp, #0x028]
	strh r1, [r0, #0x04]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x06]
	mov r3, r8
	ldr r7, [r3, #0x0C]
	mov r4, r9
	stm r7!, {r4}
	ldr r5, [sp, #0x01C]
	stm r7!, {r5}
	ldr r6, [sp, #0x020]
	stm r7!, {r6}
	ldr r0, [sp, #0x024]
	str r0, [r7, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08188E48: .4byte 0x03000D74
