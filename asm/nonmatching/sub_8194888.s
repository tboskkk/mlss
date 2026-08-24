	.syntax unified
	.text

	thumb_func_start sub_8194888
sub_8194888:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
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
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r5, sp
	adds r5, #0x10
	str r5, [sp, #0x030]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x038]
	movs r2, #0x07
	str r2, [sp, #0x02C]
_081948E2:
	mov r3, r9
	ldm r3!, {r0}
	str r0, [sp, #0x00C]
	ldm r3!, {r1}
	str r1, [sp, #0x010]
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	ldr r4, [sp, #0x01C]
	muls r0, r4
	cmp r0, #0x00
	bge _08194900
	adds r0, #0xFF
_08194900:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	ldr r5, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r5
	cmp r0, #0x00
	bge _08194910
	adds r0, #0xFF
_08194910:
	asrs r6, r0, #0x08
	str r6, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _08194920
	adds r0, #0xFF
_08194920:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r4, _08194A04 @ =0x08198584
	mov r10, r4
	mov r7, r10
	adds r7, #0x40
	movs r5, #0x00
	ldsh r0, [r7, r5]
	cmp r0, #0x00
	bge _08194938
	adds r0, #0x3F
_08194938:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _08194A08 @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x40
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0819494E
	adds r0, #0x3F
_0819494E:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0819495A
	adds r0, #0xFF
_0819495A:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _08194968
	adds r0, #0x3F
_08194968:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08194978
	adds r0, #0x3F
_08194978:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08194984
	adds r0, #0xFF
_08194984:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r6, #0x0
	mov r5, r10
	movs r3, #0x20
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08194996
	adds r0, #0x3F
_08194996:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r12
	movs r3, #0x20
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _081949A6
	adds r0, #0x3F
_081949A6:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081949B2
	adds r0, #0xFF
_081949B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r5, r10
	movs r1, #0x20
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _081949C2
	adds r0, #0x3F
_081949C2:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	mov r3, r12
	movs r4, #0x20
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081949D4
	adds r0, #0x3F
_081949D4:
	asrs r0, r0, #0x06
	muls r0, r6
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081949E0
	adds r0, #0xFF
_081949E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08194A0C
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081949FC
	adds r0, #0xFF
_081949FC:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08194A1E
	.byte 0x00, 0x00
_08194A04: .4byte 0x08198584
_08194A08: .4byte 0x08198504
_08194A0C:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08194A1A
	adds r0, #0xFF
_08194A1A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08194A1E:
	str r0, [sp, #0x00C]
	mov r5, r8
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08194A2E
	adds r0, #0xFF
_08194A2E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08194A42
	adds r0, #0xFF
_08194A42:
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
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r4, [sp, #0x028]
	cmp r4, #0x00
	bne _08194A7E
	ldr r0, _08194ACC @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r5, #0x01
	str r5, [sp, #0x028]
_08194A7E:
	ldr r0, [sp, #0x02C]
	subs r0, #0x01
	str r0, [sp, #0x02C]
	cmp r0, #0x00
	blt _08194A8A
	b _081948E2
_08194A8A:
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	beq _08194A98
	ldr r0, _08194ACC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08194A98:
	ldr r2, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	adds r2, r2, r3
	str r2, [sp, #0x01C]
	lsls r0, r3, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x020]
	mov r4, r8
	ldr r4, [r4, #0x0C]
	mov r9, r4
	ldr r5, [sp, #0x01C]
	mov r0, r9
	stm r0!, {r5}
	ldr r1, [sp, #0x020]
	str r1, [r0, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08194ACC: .4byte 0x03000D74
