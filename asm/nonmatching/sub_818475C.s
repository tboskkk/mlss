	.syntax unified
	.text

	thumb_func_start sub_818475C
sub_818475C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
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
	ldr r0, [r3, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r4, #0x00
	str r4, [sp, #0x024]
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
	movs r3, #0x03
	str r3, [sp, #0x028]
_081847B6:
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
	bge _081847D6
	adds r0, #0xFF
_081847D6:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _081847E4
	adds r0, #0xFF
_081847E4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _081847F2
	adds r0, #0xFF
_081847F2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r6, _081848D4 @ =0x08198584
	adds r6, #0x80
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _08184806
	adds r0, #0x3F
_08184806:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _081848D8 @ =0x08198504
	mov r12, r0
	mov r5, r12
	adds r5, #0x80
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _0818481C
	adds r0, #0x3F
_0818481C:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08184828
	adds r0, #0xFF
_08184828:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08184836
	adds r0, #0x3F
_08184836:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08184846
	adds r0, #0x3F
_08184846:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08184852
	adds r0, #0xFF
_08184852:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r7, #0x0
	ldr r5, _081848D4 @ =0x08198584
	adds r5, #0x40
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08184866
	adds r0, #0x3F
_08184866:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r12
	adds r3, #0x40
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08184878
	adds r0, #0x3F
_08184878:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08184884
	adds r0, #0xFF
_08184884:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08184892
	adds r0, #0x3F
_08184892:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081848A2
	adds r0, #0x3F
_081848A2:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081848AE
	adds r0, #0xFF
_081848AE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r0, r8
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081848DC
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081848CC
	adds r0, #0xFF
_081848CC:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081848EE
	.byte 0x00, 0x00
_081848D4: .4byte 0x08198584
_081848D8: .4byte 0x08198504
_081848DC:
	mov r0, r8
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081848EA
	adds r0, #0xFF
_081848EA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081848EE:
	str r0, [sp, #0x00C]
	mov r4, r8
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081848FE
	adds r0, #0xFF
_081848FE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08184912
	adds r0, #0xFF
_08184912:
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
	ldr r4, [sp, #0x024]
	cmp r4, #0x00
	bne _0818494E
	ldr r0, _0818499C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x024]
_0818494E:
	ldr r1, [sp, #0x028]
	subs r1, #0x01
	str r1, [sp, #0x028]
	cmp r1, #0x00
	blt _0818495A
	b _081847B6
_0818495A:
	ldr r2, [sp, #0x024]
	cmp r2, #0x00
	beq _08184968
	ldr r0, _0818499C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08184968:
	ldr r3, [sp, #0x01C]
	add r10, r3
	lsls r0, r3, #0x03
	subs r0, r0, r3
	cmp r0, #0x00
	bge _08184976
	adds r0, #0x07
_08184976:
	asrs r0, r0, #0x03
	str r0, [sp, #0x01C]
	mov r4, r8
	ldr r4, [r4, #0x0C]
	mov r9, r4
	mov r0, r10
	mov r1, r9
	stm r1!, {r0}
	ldr r2, [sp, #0x01C]
	str r2, [r1, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818499C: .4byte 0x03000D74
