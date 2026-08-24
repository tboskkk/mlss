	.syntax unified
	.text

	thumb_func_start sub_81799CC
sub_81799CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r7, r0, #0x0
	ldr r6, [r7, #0x0C]
	ldm r6!, {r0}
	mov r8, r0
	ldm r6!, {r1}
	mov r10, r1
	ldm r6!, {r2}
	str r2, [sp, #0x01C]
	ldr r3, [r7, #0x08]
	str r3, [sp, #0x020]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r5, sp
	adds r5, #0x10
	str r5, [sp, #0x030]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x038]
	movs r2, #0x07
	str r2, [sp, #0x02C]
_08179A1A:
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r3, r8
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08179A32
	adds r0, #0xFF
_08179A32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _08179A40
	adds r0, #0xFF
_08179A40:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r8
	muls r0, r2
	cmp r0, #0x00
	bge _08179A4E
	adds r0, #0xFF
_08179A4E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _08179B30 @ =0x08198584
	mov r9, r4
	ldr r5, _08179B34 @ =0x08198604
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08179A64
	adds r0, #0x3F
_08179A64:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _08179B38 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08179A7A
	adds r0, #0x3F
_08179A7A:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08179A86
	adds r0, #0xFF
_08179A86:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r1, _08179B34 @ =0x08198604
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _08179A96
	adds r0, #0x3F
_08179A96:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08179AA6
	adds r0, #0x3F
_08179AA6:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08179AB2
	adds r0, #0xFF
_08179AB2:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	adds r1, r3, #0x0
	mov r5, r9
	adds r5, #0xA4
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08179AC6
	adds r0, #0x3F
_08179AC6:
	asrs r0, r0, #0x06
	adds r2, r1, #0x0
	muls r2, r0
	mov r4, r12
	adds r4, #0xA4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _08179ADA
	adds r0, #0x3F
_08179ADA:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x00C]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08179AE8
	adds r0, #0xFF
_08179AE8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08179AF6
	adds r0, #0x3F
_08179AF6:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08179B04
	adds r0, #0x3F
_08179B04:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08179B10
	adds r0, #0xFF
_08179B10:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08179B3C
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08179B2A
	adds r0, #0xFF
_08179B2A:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08179B4C
_08179B30: .4byte word_8198584 @ =0x08198584
_08179B34: .4byte word_8198604 @ =0x08198604
_08179B38: .4byte word_8198504 @ =0x08198504
_08179B3C:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08179B48
	adds r0, #0xFF
_08179B48:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08179B4C:
	str r0, [sp, #0x00C]
	movs r4, #0x14
	ldsh r1, [r7, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08179B5A
	adds r0, #0xFF
_08179B5A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r5, #0x16
	ldsh r1, [r7, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08179B6C
	adds r0, #0xFF
_08179B6C:
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
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _08179BA8
	ldr r0, _08179C00 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x028]
_08179BA8:
	ldr r2, [sp, #0x02C]
	subs r2, #0x01
	str r2, [sp, #0x02C]
	cmp r2, #0x00
	blt _08179BB4
	b _08179A1A
_08179BB4:
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	beq _08179BC2
	ldr r0, _08179C00 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08179BC2:
	add r8, r10
	mov r4, r10
	lsls r0, r4, #0x03
	subs r0, r0, r4
	cmp r0, #0x00
	bge _08179BD0
	adds r0, #0x07
_08179BD0:
	asrs r0, r0, #0x03
	mov r10, r0
	ldr r5, [sp, #0x01C]
	subs r5, #0x80
	movs r0, #0x98
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	ldr r6, [r7, #0x0C]
	mov r2, r8
	stm r6!, {r2}
	mov r3, r10
	stm r6!, {r3}
	str r5, [r6, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08179C00: .4byte 0x03000D74
