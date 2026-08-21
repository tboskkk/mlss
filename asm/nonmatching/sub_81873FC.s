	.syntax unified
	.text

	thumb_func_start sub_81873FC
sub_81873FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r0}
	mov r8, r0
	ldm r4!, {r1}
	str r1, [sp, #0x01C]
	ldm r4!, {r0}
	mov r9, r0
	ldm r4!, {r1}
	str r1, [sp, #0x020]
	ldm r4!, {r0}
	mov r10, r0
	ldm r4!, {r1}
	str r1, [sp, #0x024]
	ldr r6, [r5, #0x08]
	ldr r0, [r6, #0x34]
	str r0, [sp, #0x018]
	adds r0, r6, #0x0
	bl sub_80841B8
	adds r7, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x028]
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x030]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x034]
	adds r1, #0x08
	str r1, [sp, #0x038]
	ldr r0, [sp, #0x028]
	str r0, [sp, #0x02C]
_08187452:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	add r2, r8
	str r2, [sp, #0x00C]
	add r1, r9
	str r1, [sp, #0x010]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08187482
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818747C
	adds r0, #0xFF
_0818747C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08187492
_08187482:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818748E
	adds r0, #0xFF
_0818748E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08187492:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081874A0
	adds r0, #0xFF
_081874A0:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081874B2
	adds r0, #0xFF
_081874B2:
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
	adds r1, r7, #0x0
	bl sub_807C564
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	bne _081874EE
	ldr r0, _08187524 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x028]
_081874EE:
	ldr r1, [sp, #0x02C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r1, #0x00
	bge _08187452
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	beq _08187506
	ldr r0, _08187524 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08187506:
	ldr r1, [sp, #0x01C]
	add r8, r1
	ldr r0, [sp, #0x020]
	add r9, r0
	movs r1, #0x04
	add r10, r1
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08187528
	mov r1, r10
	negs r0, r1
	lsls r0, r0, #0x08
	b _0818752C
_08187524: .4byte 0x03000D74
_08187528:
	mov r1, r10
	lsls r0, r1, #0x08
_0818752C:
	strh r0, [r6, #0x0C]
	ldr r0, [sp, #0x024]
	subs r0, #0x0C
	str r0, [sp, #0x024]
	strh r0, [r6, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x24]
	strh r0, [r6, #0x06]
	ldr r4, [r5, #0x0C]
	mov r1, r8
	stm r4!, {r1}
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	mov r1, r9
	stm r4!, {r1}
	ldr r0, [sp, #0x020]
	stm r4!, {r0}
	mov r1, r10
	stm r4!, {r1}
	ldr r0, [sp, #0x024]
	str r0, [r4, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
