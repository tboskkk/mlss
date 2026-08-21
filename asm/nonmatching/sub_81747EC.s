	.syntax unified
	.text

	thumb_func_start sub_81747EC
sub_81747EC:
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
	str r1, [sp, #0x01C]
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r9
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
	movs r3, #0x05
	str r3, [sp, #0x030]
_08174852:
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
	ldr r5, [sp, #0x01C]
	muls r0, r5
	cmp r0, #0x00
	bge _08174870
	adds r0, #0xFF
_08174870:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08174880
	adds r0, #0xFF
_08174880:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	ldr r4, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08174890
	adds r0, #0xFF
_08174890:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r0, _08174978 @ =0x08198584
	mov r10, r0
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	mov r3, r10
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _081748B0
	adds r0, #0x3F
_081748B0:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0817497C @ =0x08198504
	mov r12, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _081748C4
	adds r0, #0x3F
_081748C4:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081748D0
	adds r0, #0xFF
_081748D0:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _081748DE
	adds r0, #0x3F
_081748DE:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _081748EE
	adds r0, #0x3F
_081748EE:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081748FA
	adds r0, #0xFF
_081748FA:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r7, #0x0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817490C
	adds r0, #0x3F
_0817490C:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r12
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817491C
	adds r0, #0x3F
_0817491C:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08174928
	adds r0, #0xFF
_08174928:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r10
	movs r4, #0x18
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _08174938
	adds r0, #0x3F
_08174938:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r5, r12
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _0817494A
	adds r0, #0x3F
_0817494A:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08174956
	adds r0, #0xFF
_08174956:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r4, r9
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08174980
	movs r5, #0x12
	ldsh r1, [r4, r5]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08174972
	adds r0, #0xFF
_08174972:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08174992
_08174978: .4byte 0x08198584
_0817497C: .4byte 0x08198504
_08174980:
	mov r0, r9
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817498E
	adds r0, #0xFF
_0817498E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08174992:
	str r0, [sp, #0x00C]
	mov r3, r9
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081749A2
	adds r0, #0xFF
_081749A2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r9
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081749B6
	adds r0, #0xFF
_081749B6:
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
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	bne _081749F2
	ldr r0, _08174A48 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x02C]
_081749F2:
	ldr r3, [sp, #0x030]
	subs r3, #0x01
	str r3, [sp, #0x030]
	cmp r3, #0x00
	blt _081749FE
	b _08174852
_081749FE:
	ldr r4, [sp, #0x02C]
	cmp r4, #0x00
	beq _08174A0C
	ldr r0, _08174A48 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08174A0C:
	ldr r5, [sp, #0x01C]
	ldr r0, [sp, #0x020]
	adds r5, r5, r0
	str r5, [sp, #0x01C]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08174A20
	adds r0, #0x03
_08174A20:
	asrs r0, r0, #0x02
	ldr r2, [sp, #0x024]
	adds r2, #0x03
	mov r3, r9
	ldr r3, [r3, #0x0C]
	mov r8, r3
	ldr r4, [sp, #0x01C]
	mov r5, r8
	stm r5!, {r4}
	stm r5!, {r0}
	str r2, [r5, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08174A48: .4byte 0x03000D74
