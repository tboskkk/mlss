	.syntax unified
	.text

	thumb_func_start sub_817969C
sub_817969C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r6, [r7, #0x0C]
	ldm r6!, {r0}
	mov r8, r0
	ldm r6!, {r1}
	str r1, [sp, #0x01C]
	ldm r6!, {r2}
	mov r10, r2
	ldr r0, [r7, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r3, #0x00
	str r3, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x02C]
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x030]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x034]
	movs r1, #0x07
	str r1, [sp, #0x028]
_081796E6:
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r3, r8
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _081796FE
	adds r0, #0xFF
_081796FE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r0, r8
	muls r0, r1
	cmp r0, #0x00
	bge _0817970C
	adds r0, #0xFF
_0817970C:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r8
	muls r0, r2
	cmp r0, #0x00
	bge _0817971A
	adds r0, #0xFF
_0817971A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r4, _08179800 @ =0x08198584
	mov r9, r4
	ldr r5, _08179804 @ =0x08198604
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08179730
	adds r0, #0x3F
_08179730:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _08179808 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08179746
	adds r0, #0x3F
_08179746:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08179752
	adds r0, #0xFF
_08179752:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r1, _08179804 @ =0x08198604
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _08179762
	adds r0, #0x3F
_08179762:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08179772
	adds r0, #0x3F
_08179772:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817977E
	adds r0, #0xFF
_0817977E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x014]
	adds r1, r3, #0x0
	mov r5, r9
	adds r5, #0xA4
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08179792
	adds r0, #0x3F
_08179792:
	asrs r0, r0, #0x06
	adds r2, r1, #0x0
	muls r2, r0
	mov r4, r12
	adds r4, #0xA4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _081797A6
	adds r0, #0x3F
_081797A6:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x00C]
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081797B4
	adds r0, #0xFF
_081797B4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _081797C2
	adds r0, #0x3F
_081797C2:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _081797D0
	adds r0, #0x3F
_081797D0:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081797DC
	adds r0, #0xFF
_081797DC:
	asrs r0, r0, #0x08
	mov r1, r10
	adds r2, r0, r1
	str r2, [sp, #0x00C]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817980C
	movs r3, #0x12
	ldsh r1, [r7, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081797FA
	adds r0, #0xFF
_081797FA:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817981C
_08179800: .4byte 0x08198584
_08179804: .4byte 0x08198604
_08179808: .4byte 0x08198504
_0817980C:
	movs r4, #0x12
	ldsh r1, [r7, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08179818
	adds r0, #0xFF
_08179818:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817981C:
	str r0, [sp, #0x00C]
	movs r5, #0x14
	ldsh r1, [r7, r5]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817982A
	adds r0, #0xFF
_0817982A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r7, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817983C
	adds r0, #0xFF
_0817983C:
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
	ldr r1, [sp, #0x024]
	cmp r1, #0x00
	bne _08179878
	ldr r0, _081798C4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x024]
_08179878:
	ldr r3, [sp, #0x028]
	subs r3, #0x01
	str r3, [sp, #0x028]
	cmp r3, #0x00
	blt _08179884
	b _081796E6
_08179884:
	ldr r4, [sp, #0x024]
	cmp r4, #0x00
	beq _08179892
	ldr r0, _081798C4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08179892:
	ldr r5, [sp, #0x01C]
	add r8, r5
	lsls r0, r5, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x01C]
	movs r0, #0x80
	negs r0, r0
	add r10, r0
	ldr r6, [r7, #0x0C]
	mov r1, r8
	stm r6!, {r1}
	ldr r2, [sp, #0x01C]
	stm r6!, {r2}
	mov r3, r10
	str r3, [r6, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081798C4: .4byte 0x03000D74
