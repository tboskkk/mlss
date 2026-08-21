	.syntax unified
	.text

	thumb_func_start sub_817EDBC
sub_817EDBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r0}
	str r0, [sp, #0x01C]
	ldm r5!, {r6}
	ldr r1, [r4, #0x08]
	mov r10, r1
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	mov r0, r10
	bl sub_80841B8
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r9, r0
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x020]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x024]
	adds r1, #0x08
	str r1, [sp, #0x028]
	mov r8, r9
_0817EE00:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	ldr r0, [sp, #0x01C]
	adds r1, r1, r0
	str r1, [sp, #0x010]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817EE2E
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817EE28
	adds r0, #0xFF
_0817EE28:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817EE3E
_0817EE2E:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817EE3A
	adds r0, #0xFF
_0817EE3A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817EE3E:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817EE4C
	adds r0, #0xFF
_0817EE4C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817EE5E
	adds r0, #0xFF
_0817EE5E:
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
	adds r1, r7, #0x0
	bl sub_807C564
	mov r1, r9
	cmp r1, #0x00
	bne _0817EE9A
	ldr r0, _0817EEC8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r9, r0
_0817EE9A:
	movs r1, #0x01
	negs r1, r1
	add r8, r1
	mov r0, r8
	cmp r0, #0x00
	bge _0817EE00
	mov r1, r9
	cmp r1, #0x00
	beq _0817EEB4
	ldr r0, _0817EEC8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817EEB4:
	adds r6, #0x08
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817EECC
	negs r0, r6
	lsls r0, r0, #0x08
	b _0817EECE
	.byte 0x00, 0x00
_0817EEC8: .4byte 0x03000D74
_0817EECC:
	lsls r0, r6, #0x08
_0817EECE:
	mov r1, r10
	strh r0, [r1, #0x0C]
	ldr r5, [r4, #0x0C]
	ldr r0, [sp, #0x01C]
	stm r5!, {r0}
	str r6, [r5, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
