	.syntax unified
	.text

	thumb_func_start sub_818F550
sub_818F550:
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
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x034]
	movs r2, #0x01
	str r2, [sp, #0x028]
_0818F5AA:
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
	mov r4, r10
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0818F5CA
	adds r0, #0xFF
_0818F5CA:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _0818F5D8
	adds r0, #0xFF
_0818F5D8:
	asrs r7, r0, #0x08
	str r7, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _0818F5E6
	adds r0, #0xFF
_0818F5E6:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r5, _0818F6BC @ =0x08198584
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _0818F5F8
	adds r0, #0x3F
_0818F5F8:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _0818F6C0 @ =0x08198504
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _0818F608
	adds r0, #0x3F
_0818F608:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818F614
	adds r0, #0xFF
_0818F614:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818F622
	adds r0, #0x3F
_0818F622:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0818F632
	adds r0, #0x3F
_0818F632:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818F63E
	adds r0, #0xFF
_0818F63E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r7, #0x0
	adds r5, #0x80
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _0818F650
	adds r0, #0x3F
_0818F650:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r3, r6, #0x0
	adds r3, #0x80
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _0818F662
	adds r0, #0x3F
_0818F662:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818F66E
	adds r0, #0xFF
_0818F66E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818F67C
	adds r0, #0x3F
_0818F67C:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0818F68C
	adds r0, #0x3F
_0818F68C:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818F698
	adds r0, #0xFF
_0818F698:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r6, r8
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818F6C4
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818F6B4
	adds r0, #0xFF
_0818F6B4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818F6D6
	.byte 0x00, 0x00
_0818F6BC: .4byte word_8198584 @ =0x08198584
_0818F6C0: .4byte word_8198504 @ =0x08198504
_0818F6C4:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818F6D2
	adds r0, #0xFF
_0818F6D2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818F6D6:
	str r0, [sp, #0x00C]
	mov r6, r8
	movs r0, #0x14
	ldsh r1, [r6, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818F6E6
	adds r0, #0xFF
_0818F6E6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r8
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818F6FA
	adds r0, #0xFF
_0818F6FA:
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
	bne _0818F736
	ldr r0, _0818F780 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r6, #0x01
	str r6, [sp, #0x024]
_0818F736:
	ldr r0, [sp, #0x028]
	subs r0, #0x01
	str r0, [sp, #0x028]
	cmp r0, #0x00
	blt _0818F742
	b _0818F5AA
_0818F742:
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	beq _0818F750
	ldr r0, _0818F780 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818F750:
	ldr r2, [sp, #0x01C]
	add r10, r2
	lsls r0, r2, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x01C]
	mov r3, r8
	ldr r3, [r3, #0x0C]
	mov r9, r3
	mov r4, r10
	mov r6, r9
	stm r6!, {r4}
	ldr r0, [sp, #0x01C]
	str r0, [r6, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818F780: .4byte 0x03000D74
