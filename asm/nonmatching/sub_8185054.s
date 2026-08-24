	.syntax unified
	.text

	thumb_func_start sub_8185054
sub_8185054:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r6, r0, #0x0
	ldr r0, [r6, #0x0C]
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
	ldr r3, [r6, #0x08]
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r5, #0x00
	str r5, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x034]
	movs r2, #0x07
	str r2, [sp, #0x028]
_081850B0:
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
	mov r5, r9
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _081850D0
	adds r0, #0xFF
_081850D0:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _081850DE
	adds r0, #0xFF
_081850DE:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _081850EC
	adds r0, #0xFF
_081850EC:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r0, _08185170 @ =0x08198584
	adds r0, #0x80
	mov r12, r0
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _08185102
	adds r0, #0x3F
_08185102:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _08185174 @ =0x08198504
	adds r5, r0, #0x0
	adds r5, #0x80
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x00
	bge _08185116
	adds r0, #0x3F
_08185116:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08185122
	adds r0, #0xFF
_08185122:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r12
	movs r7, #0x00
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _08185132
	adds r0, #0x3F
_08185132:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08185142
	adds r0, #0x3F
_08185142:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818514E
	adds r0, #0xFF
_0818514E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08185178
	movs r3, #0x12
	ldsh r1, [r6, r3]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08185168
	adds r0, #0xFF
_08185168:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08185188
	.byte 0x00, 0x00
_08185170: .4byte word_8198584 @ =0x08198584
_08185174: .4byte word_8198504 @ =0x08198504
_08185178:
	movs r5, #0x12
	ldsh r1, [r6, r5]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08185184
	adds r0, #0xFF
_08185184:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08185188:
	str r0, [sp, #0x00C]
	movs r7, #0x14
	ldsh r1, [r6, r7]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08185196
	adds r0, #0xFF
_08185196:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r6, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081851A8
	adds r0, #0xFF
_081851A8:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x02C]
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
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	bne _081851E4
	ldr r0, _08185238 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x024]
_081851E4:
	ldr r3, [sp, #0x028]
	subs r3, #0x01
	str r3, [sp, #0x028]
	cmp r3, #0x00
	blt _081851F0
	b _081850B0
_081851F0:
	ldr r5, [sp, #0x024]
	cmp r5, #0x00
	beq _081851FE
	ldr r0, _08185238 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081851FE:
	add r9, r10
	mov r7, r10
	lsls r0, r7, #0x03
	subs r0, r0, r7
	cmp r0, #0x00
	bge _0818520C
	adds r0, #0x07
_0818520C:
	asrs r0, r0, #0x03
	mov r10, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r1, [sp, #0x01C]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	ldr r6, [r6, #0x0C]
	mov r8, r6
	mov r2, r9
	mov r3, r8
	stm r3!, {r2}
	mov r5, r10
	str r5, [r3, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08185238: .4byte 0x03000D74
