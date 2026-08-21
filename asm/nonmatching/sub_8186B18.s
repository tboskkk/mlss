	.syntax unified
	.text

	thumb_func_start sub_8186B18
sub_8186B18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r6}
	ldm r5!, {r0}
	str r0, [sp, #0x01C]
	ldr r7, [r4, #0x08]
	ldr r0, [r7, #0x34]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_80841B8
	mov r8, r0
	movs r0, #0x00
	mov r10, r0
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x020]
	adds r0, #0x04
	str r0, [sp, #0x024]
	adds r0, #0x04
	str r0, [sp, #0x028]
	mov r9, r10
_08186B58:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	adds r1, r1, r6
	str r1, [sp, #0x010]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08186B84
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08186B7E
	adds r0, #0xFF
_08186B7E:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08186B94
_08186B84:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08186B90
	adds r0, #0xFF
_08186B90:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08186B94:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08186BA2
	adds r0, #0xFF
_08186BA2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08186BB4
	adds r0, #0xFF
_08186BB4:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x024]
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
	ldr r0, [sp, #0x028]
	mov r1, r8
	bl sub_807C564
	mov r0, r10
	cmp r0, #0x00
	bne _08186BF0
	ldr r0, _08186C30 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r10, r0
_08186BF0:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	mov r0, r9
	cmp r0, #0x00
	bge _08186B58
	mov r0, r10
	cmp r0, #0x00
	beq _08186C0A
	ldr r0, _08186C30 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08186C0A:
	ldr r0, [sp, #0x01C]
	adds r6, r6, r0
	movs r0, #0xC0
	strh r0, [r7, #0x04]
	adds r0, #0xC0
	strh r0, [r7, #0x06]
	ldr r5, [r4, #0x0C]
	stm r5!, {r6}
	ldr r0, [sp, #0x01C]
	str r0, [r5, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08186C30: .4byte 0x03000D74
