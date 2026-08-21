	.syntax unified
	.text

	thumb_func_start sub_818781C
sub_818781C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r6}
	ldm r5!, {r7}
	ldr r0, [r4, #0x08]
	mov r8, r0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	mov r0, r8
	bl sub_80841B8
	mov r9, r0
	movs r1, #0x00
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x018]
	mov r1, r9
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x020]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x024]
	adds r0, #0x08
	str r0, [sp, #0x028]
	movs r1, #0x04
	mov r10, r1
_08187860:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	adds r1, r1, r7
	str r1, [sp, #0x010]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818788C
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08187886
	adds r0, #0xFF
_08187886:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818789C
_0818788C:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08187898
	adds r0, #0xFF
_08187898:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818789C:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081878AA
	adds r0, #0xFF
_081878AA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081878BC
	adds r0, #0xFF
_081878BC:
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
	mov r1, r9
	bl sub_807C564
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	bne _081878F8
	ldr r0, _08187934 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x01C]
_081878F8:
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r0, r10
	cmp r0, #0x00
	bge _08187860
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	beq _08187912
	ldr r0, _08187934 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08187912:
	ldr r0, _08187938 @ =0xFFFFFC00
	adds r7, r7, r0
	subs r6, #0x20
	mov r1, r8
	strh r6, [r1, #0x04]
	strh r6, [r1, #0x06]
	ldr r5, [r4, #0x0C]
	stm r5!, {r6}
	str r7, [r5, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08187934: .4byte 0x03000D74
_08187938: .4byte 0xFFFFFC00
