	.syntax unified
	.text

	thumb_func_start sub_8188E4C
sub_8188E4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r9, r0
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
	mov r1, r9
	ldr r0, [r1, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
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
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x040]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x044]
	movs r1, #0x04
	str r1, [sp, #0x038]
_08188EA0:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _08188EB6
	adds r0, #0xFF
_08188EB6:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08188EC6
	adds r0, #0xFF
_08188EC6:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _08188ED8
	adds r0, #0xFF
_08188ED8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _08189028 @ =0x08198584
	mov r10, r3
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08188EF6
	adds r0, #0x3F
_08188EF6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0818902C @ =0x08198504
	mov r8, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08188F0A
	adds r0, #0x3F
_08188F0A:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08188F16
	adds r0, #0xFF
_08188F16:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08188F24
	adds r0, #0x3F
_08188F24:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08188F34
	adds r0, #0x3F
_08188F34:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08188F40
	adds r0, #0xFF
_08188F40:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	mov r3, r10
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08188F52
	adds r0, #0x3F
_08188F52:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r8
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08188F62
	adds r0, #0x3F
_08188F62:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08188F6E
	adds r0, #0xFF
_08188F6E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r1, r10
	movs r5, #0x20
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _08188F7E
	adds r0, #0x3F
_08188F7E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	movs r5, #0x20
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08188F90
	adds r0, #0x3F
_08188F90:
	asrs r0, r0, #0x06
	mov r2, r12
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08188FA0
	adds r0, #0xFF
_08188FA0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r4, #0x0
	mov r6, r10
	adds r6, #0x80
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _08188FB4
	adds r0, #0x3F
_08188FB4:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r8
	adds r5, #0x80
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08188FC6
	adds r0, #0x3F
_08188FC6:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08188FD2
	adds r0, #0xFF
_08188FD2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08188FE0
	adds r0, #0x3F
_08188FE0:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08188FF0
	adds r0, #0x3F
_08188FF0:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08188FFC
	adds r0, #0xFF
_08188FFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x028]
	adds r2, r2, r5
	str r2, [sp, #0x00C]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08189030
	mov r3, r9
	movs r5, #0x12
	ldsh r1, [r3, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08189020
	adds r0, #0xFF
_08189020:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08189042
	.byte 0x00, 0x00
_08189028: .4byte 0x08198584
_0818902C: .4byte 0x08198504
_08189030:
	mov r0, r9
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818903E
	adds r0, #0xFF
_0818903E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08189042:
	str r0, [sp, #0x00C]
	mov r5, r9
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08189052
	adds r0, #0xFF
_08189052:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r9
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08189066
	adds r0, #0xFF
_08189066:
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
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _081890A2
	ldr r0, _081890FC @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x034]
_081890A2:
	ldr r1, [sp, #0x038]
	subs r1, #0x01
	str r1, [sp, #0x038]
	cmp r1, #0x00
	blt _081890AE
	b _08188EA0
_081890AE:
	ldr r2, [sp, #0x034]
	cmp r2, #0x00
	beq _081890BC
	ldr r0, _081890FC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081890BC:
	ldr r3, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	subs r3, r3, r5
	str r3, [sp, #0x01C]
	ldr r0, [sp, #0x024]
	adds r0, #0x08
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
	subs r1, r1, r2
	str r1, [sp, #0x028]
	mov r3, r9
	ldr r7, [r3, #0x0C]
	ldr r5, [sp, #0x01C]
	stm r7!, {r5}
	ldr r0, [sp, #0x020]
	stm r7!, {r0}
	ldr r1, [sp, #0x024]
	stm r7!, {r1}
	ldr r2, [sp, #0x028]
	stm r7!, {r2}
	ldr r3, [sp, #0x02C]
	str r3, [r7, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081890FC: .4byte 0x03000D74
