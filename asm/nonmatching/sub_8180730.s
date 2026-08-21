	.syntax unified
	.text

	thumb_func_start sub_8180730
sub_8180730:
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
	mov r10, r1
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r9
	adds r3, #0x04
	mov r9, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r5, #0x00
	str r5, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x034]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x038]
	movs r3, #0x07
	str r3, [sp, #0x02C]
_08180796:
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
	mov r5, r10
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _081807B6
	adds r0, #0xFF
_081807B6:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _081807C4
	adds r0, #0xFF
_081807C4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _081807D2
	adds r0, #0xFF
_081807D2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r6, _081808C0 @ =0x08198584
	adds r6, #0x80
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _081807E6
	adds r0, #0x3F
_081807E6:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _081808C4 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _081807FC
	adds r0, #0x3F
_081807FC:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08180808
	adds r0, #0xFF
_08180808:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08180816
	adds r0, #0x3F
_08180816:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08180826
	adds r0, #0x3F
_08180826:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180832
	adds r0, #0xFF
_08180832:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	movs r0, #0xFF
	ldr r3, [sp, #0x020]
	ands r0, r3
	lsls r1, r0, #0x01
	ldr r0, _081808C0 @ =0x08198584
	adds r4, r1, r0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	bge _0818084E
	adds r0, #0x3F
_0818084E:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r0, r12
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08180860
	adds r0, #0x3F
_08180860:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818086C
	adds r0, #0xFF
_0818086C:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _0818087A
	adds r0, #0x3F
_0818087A:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0818088A
	adds r0, #0x3F
_0818088A:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180896
	adds r0, #0xFF
_08180896:
	asrs r0, r0, #0x08
	ldr r5, _081808C8 @ =0xFFFFF000
	adds r0, r0, r5
	str r0, [sp, #0x010]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081808CC
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081808B8
	adds r0, #0xFF
_081808B8:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081808DE
	.byte 0x00, 0x00
_081808C0: .4byte 0x08198584
_081808C4: .4byte 0x08198504
_081808C8: .4byte 0xFFFFF000
_081808CC:
	mov r5, r8
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081808DA
	adds r0, #0xFF
_081808DA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081808DE:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081808EE
	adds r0, #0xFF
_081808EE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08180902
	adds r0, #0xFF
_08180902:
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
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _0818093E
	ldr r0, _08180984 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x028]
_0818093E:
	ldr r2, [sp, #0x02C]
	subs r2, #0x01
	str r2, [sp, #0x02C]
	cmp r2, #0x00
	blt _0818094A
	b _08180796
_0818094A:
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	beq _08180958
	ldr r0, _08180984 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08180958:
	mov r4, r10
	ldr r5, [sp, #0x01C]
	subs r4, r4, r5
	adds r5, #0x20
	ldr r0, [sp, #0x020]
	adds r0, #0x03
	mov r1, r8
	ldr r1, [r1, #0x0C]
	mov r9, r1
	mov r2, r9
	stm r2!, {r4}
	stm r2!, {r5}
	str r0, [r2, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08180984: .4byte 0x03000D74
