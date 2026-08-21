	.syntax unified
	.text

	thumb_func_start sub_817CD98
sub_817CD98:
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
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x01C]
	adds r0, #0x04
	str r0, [sp, #0x020]
	add r0, sp, #0x018
	mov r10, r0
	mov r8, r9
_0817CDD2:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	ldr r0, _0817CE00 @ =0xFFFFF800
	adds r1, r1, r0
	str r1, [sp, #0x010]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817CE04
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817CDFA
	adds r0, #0xFF
_0817CDFA:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817CE14
_0817CE00: .4byte 0xFFFFF800
_0817CE04:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817CE10
	adds r0, #0xFF
_0817CE10:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817CE14:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817CE22
	adds r0, #0xFF
_0817CE22:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817CE34
	adds r0, #0xFF
_0817CE34:
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
	mov r0, r9
	cmp r0, #0x00
	bne _0817CE70
	ldr r0, _0817CEA4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r9, r0
_0817CE70:
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	mov r0, r8
	cmp r0, #0x00
	bge _0817CDD2
	mov r0, r9
	cmp r0, #0x00
	beq _0817CE8A
	ldr r0, _0817CEA4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817CE8A:
	movs r0, #0xE0
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
_0817CEA4: .4byte 0x03000D74
