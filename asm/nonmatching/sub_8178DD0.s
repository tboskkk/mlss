	.syntax unified
	.text

	thumb_func_start sub_8178DD0
sub_8178DD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
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
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r10
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
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x03C]
	movs r3, #0x03
	str r3, [sp, #0x030]
_08178E36:
	mov r4, r8
	ldm r4!, {r1}
	str r1, [sp, #0x00C]
	ldm r4!, {r2}
	str r2, [sp, #0x010]
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
	ldr r5, [sp, #0x024]
	ands r0, r5
	lsls r1, r0, #0x01
	ldr r0, _08178FEC @ =0x08198584
	adds r6, r1, r0
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _08178E7A
	adds r0, #0x3F
_08178E7A:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08178FF0 @ =0x08198504
	mov r9, r0
	adds r5, r1, r0
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08178E8E
	adds r0, #0x3F
_08178E8E:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08178E9A
	adds r0, #0xFF
_08178E9A:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08178EA8
	adds r0, #0x3F
_08178EA8:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08178EB8
	adds r0, #0x3F
_08178EB8:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178EC4
	adds r0, #0xFF
_08178EC4:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08178FEC @ =0x08198584
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08178ED6
	adds r0, #0x3F
_08178ED6:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r9
	movs r5, #0x18
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08178EE6
	adds r0, #0x3F
_08178EE6:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08178EF2
	adds r0, #0xFF
_08178EF2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r1, _08178FEC @ =0x08198584
	movs r3, #0x18
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08178F02
	adds r0, #0x3F
_08178F02:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r5, r9
	movs r3, #0x18
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08178F14
	adds r0, #0x3F
_08178F14:
	asrs r0, r0, #0x06
	mov r5, r12
	muls r5, r0
	adds r0, r5, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178F24
	adds r0, #0xFF
_08178F24:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	ldr r1, [sp, #0x01C]
	adds r0, r4, r1
	str r0, [sp, #0x00C]
	ldr r4, [sp, #0x020]
	adds r2, r2, r4
	str r2, [sp, #0x010]
	mov r5, r10
	movs r4, #0x12
	ldsh r1, [r5, r4]
	cmp r0, #0x00
	bge _08178F40
	adds r0, #0xFF
_08178F40:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x00C]
	mov r5, r10
	movs r0, #0x14
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08178F54
	adds r0, #0xFF
_08178F54:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r10
	movs r4, #0x16
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08178F68
	adds r0, #0xFF
_08178F68:
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
	ldr r5, [sp, #0x02C]
	cmp r5, #0x00
	bne _08178FA4
	ldr r0, _08178FF4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x02C]
_08178FA4:
	ldr r1, [sp, #0x030]
	subs r1, #0x01
	str r1, [sp, #0x030]
	cmp r1, #0x00
	blt _08178FB0
	b _08178E36
_08178FB0:
	ldr r2, [sp, #0x02C]
	cmp r2, #0x00
	beq _08178FBE
	ldr r0, _08178FF4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08178FBE:
	ldr r3, [sp, #0x024]
	adds r3, #0x0B
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ldr r4, [sp, #0x01C]
	adds r4, r4, r0
	ldr r5, [sp, #0x020]
	adds r5, r5, r0
	mov r0, r10
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	stm r1!, {r4}
	stm r1!, {r5}
	str r3, [r1, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08178FEC: .4byte word_8198584 @ =0x08198584
_08178FF0: .4byte word_8198504 @ =0x08198504
_08178FF4: .4byte 0x03000D74
