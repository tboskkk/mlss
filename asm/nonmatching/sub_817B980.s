	.syntax unified
	.text

	thumb_func_start sub_817B980
sub_817B980:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldr r6, [r4, #0x08]
	ldr r0, [r6, #0x34]
	str r0, [sp, #0x018]
	adds r0, r6, #0x0
	bl sub_80841B8
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r9, r0
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x01C]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x020]
	add r3, sp, #0x018
	mov r10, r3
	mov r8, r9
_0817B9BC:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r0}
	str r0, [sp, #0x010]
	ldm r5!, {r1}
	ldr r3, _0817B9F0 @ =0xFFFFF400
	adds r0, r0, r3
	str r0, [sp, #0x010]
	ldr r0, _0817B9F4 @ =0xFFFFFF00
	adds r1, r1, r0
	str r1, [sp, #0x014]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817B9F8
	movs r3, #0x12
	ldsh r1, [r4, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817B9E8
	adds r0, #0xFF
_0817B9E8:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817BA08
	.byte 0x00, 0x00
_0817B9F0: .4byte 0xFFFFF400
_0817B9F4: .4byte 0xFFFFFF00
_0817B9F8:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817BA04
	adds r0, #0xFF
_0817BA04:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817BA08:
	str r0, [sp, #0x00C]
	movs r3, #0x14
	ldsh r1, [r4, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817BA16
	adds r0, #0xFF
_0817BA16:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817BA28
	adds r0, #0xFF
_0817BA28:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x020]
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
	mov r0, r10
	adds r1, r7, #0x0
	bl sub_807C564
	mov r3, r9
	cmp r3, #0x00
	bne _0817BA64
	ldr r0, _0817BA98 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r9, r0
_0817BA64:
	movs r3, #0x01
	negs r3, r3
	add r8, r3
	mov r0, r8
	cmp r0, #0x00
	bge _0817B9BC
	mov r3, r9
	cmp r3, #0x00
	beq _0817BA7E
	ldr r0, _0817BA98 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817BA7E:
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r6, #0x04]
	strh r0, [r6, #0x06]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817BA98: .4byte 0x03000D74
