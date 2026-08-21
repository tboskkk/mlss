	.syntax unified
	.text

	thumb_func_start sub_81858C4
sub_81858C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r0}
	mov r8, r0
	ldm r4!, {r0}
	str r0, [sp, #0x01C]
	ldm r4!, {r6}
	ldm r4!, {r7}
	ldr r0, [r5, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	mov r9, r0
	movs r0, #0x00
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x018]
	mov r1, r9
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x024]
	adds r0, #0x04
	str r0, [sp, #0x028]
	adds r0, #0x04
	str r0, [sp, #0x02C]
	ldr r0, [sp, #0x020]
	mov r10, r0
_0818590A:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	add r2, r8
	str r2, [sp, #0x00C]
	adds r1, r1, r6
	str r1, [sp, #0x010]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818593A
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08185934
	adds r0, #0xFF
_08185934:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818594A
_0818593A:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08185946
	adds r0, #0xFF
_08185946:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818594A:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08185958
	adds r0, #0xFF
_08185958:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818596A
	adds r0, #0xFF
_0818596A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x028]
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
	ldr r0, [sp, #0x02C]
	mov r1, r9
	bl sub_807C564
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	bne _081859A6
	ldr r0, _081859F8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x020]
_081859A6:
	movs r0, #0x01
	negs r0, r0
	add r10, r0
	mov r0, r10
	cmp r0, #0x00
	bge _0818590A
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _081859C0
	ldr r0, _081859F8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081859C0:
	ldr r0, [sp, #0x01C]
	add r8, r0
	subs r7, #0x18
	ldr r0, _081859FC @ =0xFFFFFF00
	cmp r7, r0
	bge _081859D6
	movs r7, #0x80
	lsls r7, r7, #0x01
	ldr r0, [sp, #0x01C]
	negs r0, r0
	str r0, [sp, #0x01C]
_081859D6:
	adds r6, r6, r7
	adds r6, #0x80
	ldr r4, [r5, #0x0C]
	mov r0, r8
	stm r4!, {r0}
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	stm r4!, {r6}
	str r7, [r4, #0x00]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081859F8: .4byte 0x03000D74
_081859FC: .4byte 0xFFFFFF00
