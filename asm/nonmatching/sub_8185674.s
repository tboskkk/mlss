	.syntax unified
	.text

	thumb_func_start sub_8185674
sub_8185674:
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
	mov r3, r8
	ldr r3, [r3, #0x08]
	str r3, [sp, #0x020]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
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
	movs r3, #0x03
	str r3, [sp, #0x02C]
_081856D2:
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
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081856F2
	adds r0, #0xFF
_081856F2:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _08185700
	adds r0, #0xFF
_08185700:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _0818570E
	adds r0, #0xFF
_0818570E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r6, _081857F0 @ =0x08198584
	adds r6, #0x80
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _08185722
	adds r0, #0x3F
_08185722:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _081857F4 @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x80
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08185738
	adds r0, #0x3F
_08185738:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08185744
	adds r0, #0xFF
_08185744:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08185752
	adds r0, #0x3F
_08185752:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08185762
	adds r0, #0x3F
_08185762:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818576E
	adds r0, #0xFF
_0818576E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r7, #0x0
	ldr r5, _081857F0 @ =0x08198584
	adds r5, #0x40
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08185782
	adds r0, #0x3F
_08185782:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r12
	adds r3, #0x40
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08185794
	adds r0, #0x3F
_08185794:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081857A0
	adds r0, #0xFF
_081857A0:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _081857AE
	adds r0, #0x3F
_081857AE:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081857BE
	adds r0, #0x3F
_081857BE:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081857CA
	adds r0, #0xFF
_081857CA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081857F8
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081857E8
	adds r0, #0xFF
_081857E8:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818580A
	.byte 0x00, 0x00
_081857F0: .4byte 0x08198584
_081857F4: .4byte 0x08198504
_081857F8:
	mov r0, r8
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08185806
	adds r0, #0xFF
_08185806:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818580A:
	str r0, [sp, #0x00C]
	mov r4, r8
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818581A
	adds r0, #0xFF
_0818581A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818582E
	adds r0, #0xFF
_0818582E:
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
	bne _0818586A
	ldr r0, _081858C0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x028]
_0818586A:
	ldr r1, [sp, #0x02C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r1, #0x00
	blt _08185876
	b _081856D2
_08185876:
	ldr r2, [sp, #0x028]
	cmp r2, #0x00
	beq _08185884
	ldr r0, _081858C0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08185884:
	ldr r3, [sp, #0x01C]
	add r10, r3
	lsls r0, r3, #0x03
	subs r0, r0, r3
	cmp r0, #0x00
	bge _08185892
	adds r0, #0x07
_08185892:
	asrs r0, r0, #0x03
	str r0, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r4, [sp, #0x020]
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	mov r0, r8
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r10
	mov r2, r9
	stm r2!, {r1}
	ldr r3, [sp, #0x01C]
	str r3, [r2, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081858C0: .4byte 0x03000D74
