	.syntax unified
	.text

	thumb_func_start sub_8180988
sub_8180988:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r9
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r5, #0x00
	str r5, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x028]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x03C]
	movs r3, #0x07
	str r3, [sp, #0x030]
_081809EE:
	mov r4, r9
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r9, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	ldr r5, [sp, #0x01C]
	muls r0, r5
	cmp r0, #0x00
	bge _08180A0C
	adds r0, #0xFF
_08180A0C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08180A1C
	adds r0, #0xFF
_08180A1C:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r4, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08180A2E
	adds r0, #0xFF
_08180A2E:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _08180B20 @ =0x08198584
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08180A4A
	adds r0, #0x3F
_08180A4A:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08180B24 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08180A5E
	adds r0, #0x3F
_08180A5E:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08180A6A
	adds r0, #0xFF
_08180A6A:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08180A78
	adds r0, #0x3F
_08180A78:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08180A88
	adds r0, #0x3F
_08180A88:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180A94
	adds r0, #0xFF
_08180A94:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r2, _08180B20 @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _08180AA6
	adds r0, #0x3F
_08180AA6:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r10
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08180AB6
	adds r0, #0x3F
_08180AB6:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08180AC2
	adds r0, #0xFF
_08180AC2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r4, _08180B20 @ =0x08198584
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08180AD2
	adds r0, #0x3F
_08180AD2:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08180AE4
	adds r0, #0x3F
_08180AE4:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180AF4
	adds r0, #0xFF
_08180AF4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x024]
	adds r0, r2, r5
	str r0, [sp, #0x010]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08180B28
	mov r2, r8
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08180B18
	adds r0, #0xFF
_08180B18:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08180B3A
	.byte 0x00, 0x00
_08180B20: .4byte word_8198584 @ =0x08198584
_08180B24: .4byte word_8198504 @ =0x08198504
_08180B28:
	mov r5, r8
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08180B36
	adds r0, #0xFF
_08180B36:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08180B3A:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08180B4A
	adds r0, #0xFF
_08180B4A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08180B5E
	adds r0, #0xFF
_08180B5E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x034]
	ldr r2, [sp, #0x038]
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
	ldr r0, [sp, #0x03C]
	ldr r1, [sp, #0x028]
	bl sub_807C564
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _08180B9A
	ldr r0, _08180BE0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x02C]
_08180B9A:
	ldr r2, [sp, #0x030]
	subs r2, #0x01
	str r2, [sp, #0x030]
	cmp r2, #0x00
	blt _08180BA6
	b _081809EE
_08180BA6:
	ldr r3, [sp, #0x02C]
	cmp r3, #0x00
	beq _08180BB4
	ldr r0, _08180BE0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08180BB4:
	ldr r4, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	subs r4, r4, r5
	adds r5, #0x20
	ldr r0, [sp, #0x024]
	adds r0, #0x03
	mov r1, r8
	ldr r1, [r1, #0x0C]
	mov r9, r1
	mov r2, r9
	stm r2!, {r4}
	stm r2!, {r5}
	str r0, [r2, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08180BE0: .4byte 0x03000D74
