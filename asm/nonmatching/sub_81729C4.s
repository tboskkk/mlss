	.syntax unified
	.text

	thumb_func_start sub_81729C4
sub_81729C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r9
	ldr r4, [r4, #0x08]
	str r4, [sp, #0x024]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r7, #0x00
	str r7, [sp, #0x02C]
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
	movs r3, #0x03
	str r3, [sp, #0x030]
_08172A2E:
	mov r4, r8
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	mov r7, r10
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08172A4E
	adds r0, #0xFF
_08172A4E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _08172A5C
	adds r0, #0xFF
_08172A5C:
	asrs r6, r0, #0x08
	str r6, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _08172A6A
	adds r0, #0xFF
_08172A6A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r7, _08172B48 @ =0x08198584
	adds r7, #0x40
	movs r4, #0x00
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _08172A7E
	adds r0, #0x3F
_08172A7E:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _08172B4C @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x40
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08172A94
	adds r0, #0x3F
_08172A94:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08172AA0
	adds r0, #0xFF
_08172AA0:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _08172AAE
	adds r0, #0x3F
_08172AAE:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08172ABE
	adds r0, #0x3F
_08172ABE:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08172ACA
	adds r0, #0xFF
_08172ACA:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r6, #0x0
	ldr r5, _08172B48 @ =0x08198584
	adds r5, #0x80
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x00
	bge _08172ADE
	adds r0, #0x3F
_08172ADE:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r12
	adds r3, #0x80
	movs r7, #0x00
	ldsh r0, [r3, r7]
	cmp r0, #0x00
	bge _08172AF0
	adds r0, #0x3F
_08172AF0:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08172AFC
	adds r0, #0xFF
_08172AFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08172B0A
	adds r0, #0x3F
_08172B0A:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _08172B1A
	adds r0, #0x3F
_08172B1A:
	asrs r0, r0, #0x06
	muls r0, r6
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08172B26
	adds r0, #0xFF
_08172B26:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r7, r9
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08172B50
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08172B42
	adds r0, #0xFF
_08172B42:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08172B62
_08172B48: .4byte 0x08198584
_08172B4C: .4byte 0x08198504
_08172B50:
	mov r3, r9
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08172B5E
	adds r0, #0xFF
_08172B5E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08172B62:
	str r0, [sp, #0x00C]
	mov r7, r9
	movs r0, #0x14
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08172B72
	adds r0, #0xFF
_08172B72:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r9
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08172B86
	adds r0, #0xFF
_08172B86:
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
	ldr r4, [sp, #0x02C]
	cmp r4, #0x00
	bne _08172BC2
	ldr r0, _08172C28 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r7, #0x01
	str r7, [sp, #0x02C]
_08172BC2:
	ldr r0, [sp, #0x030]
	subs r0, #0x01
	str r0, [sp, #0x030]
	cmp r0, #0x00
	blt _08172BCE
	b _08172A2E
_08172BCE:
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	beq _08172BDC
	ldr r0, _08172C28 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08172BDC:
	ldr r2, [sp, #0x01C]
	add r10, r2
	lsls r0, r2, #0x01
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08172BEA
	adds r0, #0x03
_08172BEA:
	asrs r0, r0, #0x02
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	adds r3, #0x01
	str r3, [sp, #0x020]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	subs r0, r0, r3
	ldr r7, [sp, #0x024]
	strh r0, [r7, #0x04]
	strh r0, [r7, #0x06]
	mov r0, r9
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r10
	mov r2, r8
	stm r2!, {r1}
	ldr r3, [sp, #0x01C]
	stm r2!, {r3}
	ldr r4, [sp, #0x020]
	str r4, [r2, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08172C28: .4byte 0x03000D74
