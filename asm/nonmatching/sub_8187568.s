	.syntax unified
	.text

	thumb_func_start sub_8187568
sub_8187568:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
	mov r9, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	str r0, [sp, #0x01C]
	ldm r7!, {r1}
	str r1, [sp, #0x020]
	ldm r7!, {r2}
	str r2, [sp, #0x024]
	ldm r7!, {r3}
	str r3, [sp, #0x028]
	ldm r7!, {r5}
	str r5, [sp, #0x02C]
	mov r1, r9
	ldr r0, [r1, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r2, #0x00
	str r2, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x03C]
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x040]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x044]
	movs r1, #0x04
	str r1, [sp, #0x038]
_081875BC:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x01C]
	muls r0, r3
	cmp r0, #0x00
	bge _081875D2
	adds r0, #0xFF
_081875D2:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _081875E2
	adds r0, #0xFF
_081875E2:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r1, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _081875F4
	adds r0, #0xFF
_081875F4:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	ldr r3, _08187744 @ =0x08198584
	mov r10, r3
	movs r0, #0xFF
	ldr r1, [sp, #0x024]
	ands r0, r1
	lsls r1, r0, #0x01
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08187612
	adds r0, #0x3F
_08187612:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08187748 @ =0x08198504
	mov r8, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08187626
	adds r0, #0x3F
_08187626:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08187632
	adds r0, #0xFF
_08187632:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08187640
	adds r0, #0x3F
_08187640:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08187650
	adds r0, #0x3F
_08187650:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818765C
	adds r0, #0xFF
_0818765C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r1, r12
	mov r3, r10
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818766E
	adds r0, #0x3F
_0818766E:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r3, r8
	movs r5, #0x20
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818767E
	adds r0, #0x3F
_0818767E:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818768A
	adds r0, #0xFF
_0818768A:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r1, r10
	movs r5, #0x20
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _0818769A
	adds r0, #0x3F
_0818769A:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	movs r5, #0x20
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _081876AC
	adds r0, #0x3F
_081876AC:
	asrs r0, r0, #0x06
	mov r2, r12
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081876BC
	adds r0, #0xFF
_081876BC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r1, r4, #0x0
	mov r6, r10
	adds r6, #0x80
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _081876D0
	adds r0, #0x3F
_081876D0:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r8
	adds r5, #0x80
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _081876E2
	adds r0, #0x3F
_081876E2:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081876EE
	adds r0, #0xFF
_081876EE:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _081876FC
	adds r0, #0x3F
_081876FC:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _0818770C
	adds r0, #0x3F
_0818770C:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08187718
	adds r0, #0xFF
_08187718:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x028]
	adds r2, r2, r5
	str r2, [sp, #0x00C]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818774C
	mov r3, r9
	movs r5, #0x12
	ldsh r1, [r3, r5]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818773C
	adds r0, #0xFF
_0818773C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818775E
	.byte 0x00, 0x00
_08187744: .4byte 0x08198584
_08187748: .4byte 0x08198504
_0818774C:
	mov r0, r9
	movs r3, #0x12
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818775A
	adds r0, #0xFF
_0818775A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818775E:
	str r0, [sp, #0x00C]
	mov r5, r9
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818776E
	adds r0, #0xFF
_0818776E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r2, r9
	movs r3, #0x16
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08187782
	adds r0, #0xFF
_08187782:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x040]
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
	ldr r0, [sp, #0x044]
	ldr r1, [sp, #0x030]
	bl sub_807C564
	ldr r5, [sp, #0x034]
	cmp r5, #0x00
	bne _081877BE
	ldr r0, _08187818 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x034]
_081877BE:
	ldr r1, [sp, #0x038]
	subs r1, #0x01
	str r1, [sp, #0x038]
	cmp r1, #0x00
	blt _081877CA
	b _081875BC
_081877CA:
	ldr r2, [sp, #0x034]
	cmp r2, #0x00
	beq _081877D8
	ldr r0, _08187818 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081877D8:
	ldr r3, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	subs r3, r3, r5
	str r3, [sp, #0x01C]
	ldr r0, [sp, #0x024]
	adds r0, #0x08
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
	subs r1, r1, r2
	str r1, [sp, #0x028]
	mov r3, r9
	ldr r7, [r3, #0x0C]
	ldr r5, [sp, #0x01C]
	stm r7!, {r5}
	ldr r0, [sp, #0x020]
	stm r7!, {r0}
	ldr r1, [sp, #0x024]
	stm r7!, {r1}
	ldr r2, [sp, #0x028]
	stm r7!, {r2}
	ldr r3, [sp, #0x02C]
	str r3, [r7, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08187818: .4byte 0x03000D74
