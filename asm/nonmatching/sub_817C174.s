	.syntax unified
	.text

	thumb_func_start sub_817C174
sub_817C174:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r6}
	ldm r4!, {r0}
	str r0, [sp, #0x01C]
	ldm r4!, {r7}
	ldm r4!, {r1}
	str r1, [sp, #0x020]
	ldr r0, [r5, #0x08]
	mov r8, r0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	mov r0, r8
	bl sub_80841B8
	mov r9, r0
	movs r1, #0x00
	str r1, [sp, #0x024]
	ldr r0, [sp, #0x018]
	mov r1, r9
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x028]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x02C]
	adds r0, #0x08
	str r0, [sp, #0x030]
	ldr r1, [sp, #0x024]
	mov r10, r1
_0817C1C0:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	adds r2, r2, r6
	str r2, [sp, #0x00C]
	adds r1, r1, r7
	str r1, [sp, #0x010]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817C1F0
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817C1EA
	adds r0, #0xFF
_0817C1EA:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817C200
_0817C1F0:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817C1FC
	adds r0, #0xFF
_0817C1FC:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817C200:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817C20E
	adds r0, #0xFF
_0817C20E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817C220
	adds r0, #0xFF
_0817C220:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
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
	ldr r0, [sp, #0x030]
	mov r1, r9
	bl sub_807C564
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	bne _0817C25C
	ldr r0, _0817C2A4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x024]
_0817C25C:
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r0, r10
	cmp r0, #0x00
	bge _0817C1C0
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	beq _0817C276
	ldr r0, _0817C2A4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817C276:
	ldr r0, [sp, #0x01C]
	adds r6, r6, r0
	ldr r1, [sp, #0x020]
	adds r7, r7, r1
	movs r0, #0xC0
	mov r1, r8
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	ldr r4, [r5, #0x0C]
	stm r4!, {r6}
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	stm r4!, {r7}
	ldr r1, [sp, #0x020]
	str r1, [r4, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817C2A4: .4byte 0x03000D74
