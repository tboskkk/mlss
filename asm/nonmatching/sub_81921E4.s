	.syntax unified
	.text

	thumb_func_start sub_81921E4
sub_81921E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r0}
	mov r9, r0
	ldm r4!, {r7}
	ldm r4!, {r1}
	mov r10, r1
	ldr r6, [r5, #0x08]
	ldr r0, [r6, #0x34]
	str r0, [sp, #0x018]
	adds r0, r6, #0x0
	bl sub_80841B8
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x024]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x028]
	adds r1, #0x08
	str r1, [sp, #0x02C]
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x020]
_0819222C:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r0}
	str r0, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08192254
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0819224E
	adds r0, #0xFF
_0819224E:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08192264
_08192254:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08192260
	adds r0, #0xFF
_08192260:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08192264:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08192272
	adds r0, #0xFF
_08192272:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08192284
	adds r0, #0xFF
_08192284:
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
	mov r1, r8
	bl sub_807C564
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	bne _081922C0
	ldr r0, _08192308 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x01C]
_081922C0:
	ldr r1, [sp, #0x020]
	subs r1, #0x01
	str r1, [sp, #0x020]
	cmp r1, #0x00
	bge _0819222C
	ldr r0, [sp, #0x01C]
	cmp r0, #0x00
	beq _081922D8
	ldr r0, _08192308 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081922D8:
	mov r1, r9
	subs r0, r1, r7
	adds r0, #0x06
	mov r9, r0
	lsls r0, r7, #0x01
	adds r0, r0, r7
	movs r1, #0x05
	bl __divsi3
	adds r7, r0, #0x0
	movs r0, #0x06
	add r10, r0
	mov r1, r9
	strh r1, [r6, #0x04]
	strh r1, [r6, #0x06]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0819230C
	mov r1, r10
	negs r0, r1
	lsls r0, r0, #0x08
	b _08192310
_08192308: .4byte 0x03000D74
_0819230C:
	mov r1, r10
	lsls r0, r1, #0x08
_08192310:
	strh r0, [r6, #0x0C]
	ldr r4, [r5, #0x0C]
	mov r0, r9
	stm r4!, {r0}
	stm r4!, {r7}
	mov r1, r10
	str r1, [r4, #0x00]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
