	.syntax unified
	.text

	thumb_func_start sub_8193440
sub_8193440:
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
	mov r9, r1
	ldm r6!, {r2}
	str r2, [sp, #0x01C]
	ldr r3, [r7, #0x08]
	mov r10, r3
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	mov r0, r10
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r5, #0x00
	str r5, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x02C]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x030]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x034]
	movs r3, #0x05
	str r3, [sp, #0x028]
_0819348E:
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r5, r8
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _081934A6
	adds r0, #0xFF
_081934A6:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _081934B4
	adds r0, #0xFF
_081934B4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r8
	muls r0, r2
	cmp r0, #0x00
	bge _081934C2
	adds r0, #0xFF
_081934C2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	str r3, [sp, #0x038]
	ldr r0, _0819354C @ =0x08198584
	adds r0, #0x80
	mov r12, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081934D8
	adds r0, #0x3F
_081934D8:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x038]
	adds r5, r1, #0x0
	muls r5, r0
	str r5, [sp, #0x038]
	ldr r5, _08193550 @ =0x08198584
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _081934EE
	adds r0, #0x3F
_081934EE:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r5, [sp, #0x038]
	subs r0, r5, r0
	cmp r0, #0x00
	bge _081934FC
	adds r0, #0xFF
_081934FC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r12
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _0819350C
	adds r0, #0x3F
_0819350C:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _08193550 @ =0x08198584
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _0819351E
	adds r0, #0x3F
_0819351E:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0819352A
	adds r0, #0xFF
_0819352A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08193554
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08193544
	adds r0, #0xFF
_08193544:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08193564
	.byte 0x00, 0x00
_0819354C: .4byte 0x08198584
_08193550: .4byte 0x08198584
_08193554:
	movs r2, #0x12
	ldsh r1, [r7, r2]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08193560
	adds r0, #0xFF
_08193560:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08193564:
	str r0, [sp, #0x00C]
	movs r3, #0x14
	ldsh r1, [r7, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08193572
	adds r0, #0xFF
_08193572:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r5, #0x16
	ldsh r1, [r7, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08193584
	adds r0, #0xFF
_08193584:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
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
	ldr r0, [sp, #0x034]
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	bne _081935C0
	ldr r0, _08193620 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x024]
_081935C0:
	ldr r2, [sp, #0x028]
	subs r2, #0x01
	str r2, [sp, #0x028]
	cmp r2, #0x00
	blt _081935CC
	b _0819348E
_081935CC:
	ldr r3, [sp, #0x024]
	cmp r3, #0x00
	beq _081935DA
	ldr r0, _08193620 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081935DA:
	add r8, r9
	mov r5, r9
	lsls r0, r5, #0x01
	add r0, r9
	cmp r0, #0x00
	bge _081935E8
	adds r0, #0x03
_081935E8:
	asrs r0, r0, #0x02
	mov r9, r0
	ldr r0, [sp, #0x01C]
	adds r0, #0x01
	str r0, [sp, #0x01C]
	movs r1, #0xC8
	lsls r1, r1, #0x01
	adds r0, r1, #0x0
	ldr r2, [sp, #0x01C]
	subs r0, r0, r2
	mov r3, r10
	strh r0, [r3, #0x04]
	strh r0, [r3, #0x06]
	ldr r6, [r7, #0x0C]
	mov r5, r8
	stm r6!, {r5}
	mov r0, r9
	stm r6!, {r0}
	str r2, [r6, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08193620: .4byte 0x03000D74
