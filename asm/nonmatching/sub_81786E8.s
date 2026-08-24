	.syntax unified
	.text

	thumb_func_start sub_81786E8
sub_81786E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x054
	mov r8, r0
	ldr r5, [r0, #0x0C]
	ldm r5!, {r0}
	str r0, [sp, #0x01C]
	ldm r5!, {r1}
	str r1, [sp, #0x020]
	ldm r5!, {r2}
	str r2, [sp, #0x024]
	ldm r5!, {r3}
	str r3, [sp, #0x028]
	ldm r5!, {r4}
	str r4, [sp, #0x02C]
	ldm r5!, {r6}
	str r6, [sp, #0x030]
	ldm r5!, {r0}
	str r0, [sp, #0x034]
	mov r1, r8
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x038]
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	str r0, [sp, #0x03C]
	movs r2, #0x00
	str r2, [sp, #0x040]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x03C]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x048]
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x04C]
	mov r6, sp
	adds r6, #0x18
	str r6, [sp, #0x050]
	movs r0, #0x03
	str r0, [sp, #0x044]
_08178748:
	ldm r5!, {r0}
	str r0, [sp, #0x00C]
	ldm r5!, {r1}
	str r1, [sp, #0x010]
	ldm r5!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _0817875E
	adds r0, #0xFF
_0817875E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	ldr r4, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _0817876E
	adds r0, #0xFF
_0817876E:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	ldr r6, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r6
	cmp r0, #0x00
	bge _0817877E
	adds r0, #0xFF
_0817877E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r0, _0817886C @ =0x08198584
	mov r10, r0
	movs r4, #0x50
	add r4, r10
	mov r12, r4
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08178798
	adds r0, #0x3F
_08178798:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, _08178870 @ =0x08198504
	mov r9, r0
	ldr r4, _08178874 @ =0x08198554
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _081787AC
	adds r0, #0x3F
_081787AC:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081787B8
	adds r0, #0xFF
_081787B8:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	mov r1, r12
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _081787C8
	adds r0, #0x3F
_081787C8:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	ldr r3, _08178874 @ =0x08198554
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _081787DA
	adds r0, #0x3F
_081787DA:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081787E6
	adds r0, #0xFF
_081787E6:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	adds r1, r7, #0x0
	mov r2, r10
	movs r6, #0x20
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _081787F8
	adds r0, #0x3F
_081787F8:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r2, r9
	movs r6, #0x20
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _08178808
	adds r0, #0x3F
_08178808:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08178814
	adds r0, #0xFF
_08178814:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	mov r1, r10
	movs r6, #0x20
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _08178824
	adds r0, #0x3F
_08178824:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	mov r4, r9
	movs r6, #0x20
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08178836
	adds r0, #0x3F
_08178836:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08178842
	adds r0, #0xFF
_08178842:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x024]
	adds r0, r2, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08178878
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08178864
	adds r0, #0xFF
_08178864:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817888A
	.byte 0x00, 0x00
_0817886C: .4byte 0x08198584
_08178870: .4byte 0x08198504
_08178874: .4byte 0x08198554
_08178878:
	mov r6, r8
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08178886
	adds r0, #0xFF
_08178886:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817888A:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817889A
	adds r0, #0xFF
_0817889A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r8
	movs r6, #0x16
	ldsh r1, [r4, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081788AE
	adds r0, #0xFF
_081788AE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x048]
	ldr r2, [sp, #0x04C]
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
	ldr r0, [sp, #0x050]
	ldr r1, [sp, #0x03C]
	bl sub_807C564
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	bne _081788EA
	ldr r0, _08178964 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x040]
_081788EA:
	ldr r2, [sp, #0x044]
	subs r2, #0x01
	str r2, [sp, #0x044]
	cmp r2, #0x00
	blt _081788F6
	b _08178748
_081788F6:
	ldr r3, [sp, #0x040]
	cmp r3, #0x00
	beq _08178904
	ldr r0, _08178964 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08178904:
	ldr r4, [sp, #0x01C]
	ldr r6, [sp, #0x020]
	adds r4, r4, r6
	str r4, [sp, #0x01C]
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	adds r0, r0, r1
	str r0, [sp, #0x024]
	adds r1, #0x60
	str r1, [sp, #0x028]
	cmp r0, #0x00
	ble _0817894A
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	str r0, [sp, #0x020]
	movs r2, #0x00
	str r2, [sp, #0x024]
	ldr r3, [sp, #0x02C]
	adds r3, #0x02
	str r3, [sp, #0x02C]
	cmp r3, #0x00
	ble _08178936
	movs r4, #0x00
	str r4, [sp, #0x02C]
_08178936:
	ldr r6, [sp, #0x02C]
	lsls r6, r6, #0x08
	str r6, [sp, #0x028]
	ldr r0, [sp, #0x034]
	subs r0, #0x02
	str r0, [sp, #0x034]
	cmp r0, #0x00
	bge _0817894A
	movs r1, #0x00
	str r1, [sp, #0x034]
_0817894A:
	ldr r2, [sp, #0x030]
	ldr r3, [sp, #0x034]
	adds r2, r2, r3
	str r2, [sp, #0x030]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08178968
	negs r0, r2
	lsls r0, r0, #0x08
	b _0817896C
_08178964: .4byte 0x03000D74
_08178968:
	ldr r6, [sp, #0x030]
	lsls r0, r6, #0x08
_0817896C:
	ldr r1, [sp, #0x038]
	strh r0, [r1, #0x0C]
	movs r0, #0xB9
	lsls r0, r0, #0x01
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r2, r8
	ldr r5, [r2, #0x0C]
	ldr r3, [sp, #0x01C]
	stm r5!, {r3}
	ldr r4, [sp, #0x020]
	stm r5!, {r4}
	ldr r6, [sp, #0x024]
	stm r5!, {r6}
	ldr r0, [sp, #0x028]
	stm r5!, {r0}
	ldr r1, [sp, #0x02C]
	stm r5!, {r1}
	ldr r2, [sp, #0x030]
	stm r5!, {r2}
	ldr r3, [sp, #0x034]
	str r3, [r5, #0x00]
	add sp, #0x054
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
