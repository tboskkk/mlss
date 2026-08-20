	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80183A4
sub_80183A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r3, [sp, #0x024]
	cmp r3, #0x02
	bne _08018420
	mov r0, r12
	cmp r0, #0x20
	bne _080183D4
	ldr r0, _080183D0 @ =0x03001034
	ldr r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl _call_via_r3
	b _080184E0
_080183D0: .4byte 0x03001034
_080183D4:
	ldr r0, _080183FC @ =0x0300034C
	ldr r1, _08018400 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08018404
	mov r0, sp
	strh r7, [r0, #0x00]
	lsls r2, r5, #0x0A
	lsrs r2, r2, #0x0B
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0x0
	bl CpuSet
	b _080184E0
_080183FC: .4byte 0x0300034C
_08018400: .4byte 0x00000888
_08018404:
	mov r0, sp
	strh r7, [r0, #0x00]
	ldr r2, _0801841C @ =0x040000D4
	str r0, [r2, #0x00]
	str r4, [r2, #0x04]
	lsrs r0, r5, #0x01
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	b _080184E0
_0801841C: .4byte 0x040000D4
_08018420:
	ldr r0, _08018454 @ =0x04000208
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _08018458 @ =0x0300034C
	ldr r2, [r0, #0x04]
	movs r1, #0x80
	adds r6, r0, #0x0
	ldr r0, _0801845C @ =0x0007FFFF
	mov r8, r0
	ands r0, r5
	mov r8, r0
	movs r0, #0x01
	mov r9, r0
	mov r0, r9
	ands r3, r0
	lsls r3, r3, #0x05
	lsrs r0, r5, #0x02
	mov r10, r0
	lsrs r5, r5, #0x01
_08018446:
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08018460
	cmp r0, r4
	bne _080184C8
	b _08018466
	.byte 0x00, 0x00
_08018454: .4byte 0x04000208
_08018458: .4byte 0x0300034C
_0801845C: .4byte 0x0007FFFF
_08018460:
	ldrb r0, [r6, #0x08]
	adds r0, #0x01
	strb r0, [r6, #0x08]
_08018466:
	str r7, [r2, #0x00]
	str r4, [r2, #0x04]
	ldr r0, [r2, #0x08]
	ldr r1, _080184B0 @ =0xFFF80000
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	str r0, [r2, #0x08]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x08
	orrs r1, r0
	strb r1, [r2, #0x0A]
	movs r0, #0x00
	mov r4, r12
	cmp r4, #0x20
	bne _08018488
	movs r0, #0x01
_08018488:
	mov r4, r9
	ands r0, r4
	lsls r0, r0, #0x04
	movs r4, #0x11
	negs r4, r4
	ands r1, r4
	orrs r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x0A]
	mov r1, r12
	cmp r1, #0x20
	bne _080184B4
	movs r0, #0x85
	lsls r0, r0, #0x18
	mov r4, r10
	orrs r0, r4
	b _080184BA
_080184B0: .4byte 0xFFF80000
_080184B4:
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r0, r5
_080184BA:
	str r0, [r2, #0x0C]
	ldr r1, _080184C4 @ =0x04000208
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _080184E0
_080184C4: .4byte 0x04000208
_080184C8:
	subs r1, #0x01
	adds r2, #0x10
	cmp r1, #0x00
	bne _08018446
	ldr r1, _080184DC @ =0x04000208
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	b _080184E2
	.byte 0x00, 0x00
_080184DC: .4byte 0x04000208
_080184E0:
	movs r0, #0x01
_080184E2:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80184F4
sub_80184F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0x0
	movs r3, #0x00
	ldr r0, _08018578 @ =0x0300034C
	adds r1, r0, #0x0
	ldrb r0, [r1, #0x08]
	cmp r3, r0
	bge _0801858A
	mov r8, r1
	ldr r5, _0801857C @ =0x04000208
	mov r12, r5
	mov r10, r3
	movs r4, #0x00
_08018516:
	mov r6, r8
	ldr r0, [r6, #0x04]
	adds r0, r4, r0
	ldr r0, [r0, #0x04]
	cmp r0, r2
	bne _08018580
	movs r0, #0x00
	mov r7, r12
	strh r0, [r7, #0x00]
	ldrb r0, [r1, #0x08]
	subs r0, #0x01
	cmp r3, r0
	bge _0801855A
	ldr r0, _08018578 @ =0x0300034C
	mov r9, r0
	lsls r0, r3, #0x04
	adds r2, r0, #0x0
	adds r2, #0x10
_0801853A:
	mov r1, r9
	ldr r0, [r1, #0x04]
	adds r1, r4, r0
	adds r0, r2, r0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, #0x10
	adds r2, #0x10
	adds r3, #0x01
	mov r1, r9
	ldrb r0, [r1, #0x08]
	subs r0, #0x01
	cmp r3, r0
	blt _0801853A
_0801855A:
	mov r2, r8
	ldr r0, [r2, #0x04]
	adds r0, r4, r0
	mov r5, r10
	str r5, [r0, #0x00]
	str r5, [r0, #0x04]
	ldrb r0, [r2, #0x08]
	subs r0, #0x01
	strb r0, [r2, #0x08]
	movs r0, #0x01
	mov r6, r12
	strh r0, [r6, #0x00]
	movs r0, #0x01
	b _0801858C
	.byte 0x00, 0x00
_08018578: .4byte 0x0300034C
_0801857C: .4byte 0x04000208
_08018580:
	adds r4, #0x10
	adds r3, #0x01
	ldrb r7, [r1, #0x08]
	cmp r3, r7
	blt _08018516
_0801858A:
	movs r0, #0x00
_0801858C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_801859C
sub_801859C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	ldr r2, _080185E8 @ =0x0300034C
	ldr r1, _080185EC @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08018654
	ldr r4, [r2, #0x04]
	ldrb r6, [r2, #0x08]
	cmp r6, #0x00
	bne _080185C2
	b _08018712
_080185C2:
	ldr r0, _080185F0 @ =0x04000004
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080185D2
	b _08018712
_080185D2:
	ldr r5, _080185F4 @ =0x040000D4
	ldr r7, _080185F8 @ =0x03001034
_080185D6:
	ldrb r1, [r4, #0x0A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080185FC
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
	b _0801861E
	.byte 0x00, 0x00
_080185E8: .4byte 0x0300034C
_080185EC: .4byte 0x00000888
_080185F0: .4byte 0x04000004
_080185F4: .4byte 0x040000D4
_080185F8: .4byte 0x03001034
_080185FC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08018616
	ldr r0, [r4, #0x00]
	ldr r1, [r4, #0x04]
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x0D
	lsrs r2, r2, #0x0D
	ldr r3, [r7, #0x00]
	bl _call_via_r3
	b _08018628
_08018616:
	mov r1, sp
	ldr r0, [r4, #0x00]
	strh r0, [r1, #0x00]
	str r1, [r5, #0x00]
_0801861E:
	ldr r0, [r4, #0x04]
	str r0, [r5, #0x04]
	ldr r0, [r4, #0x0C]
	str r0, [r5, #0x08]
	ldr r0, [r5, #0x08]
_08018628:
	ldrb r1, [r4, #0x0A]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _08018638
	str r0, [r4, #0x04]
_08018638:
	subs r6, #0x01
	adds r4, #0x10
	cmp r6, #0x00
	beq _08018712
	ldr r0, _08018650 @ =0x04000004
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080185D6
	b _08018712
_08018650: .4byte 0x04000004
_08018654:
	ldr r4, [r2, #0x04]
	ldrb r5, [r2, #0x08]
	cmp r5, #0x00
	beq _08018712
	ldr r0, _08018698 @ =0x04000004
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08018712
	ldr r6, _0801869C @ =0x03001034
	ldr r7, _080186A0 @ =0x08198154
_0801866E:
	ldrb r1, [r4, #0x0A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080186B8
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080186A8
	ldr r0, _080186A4 @ =0x081980D8
	subs r0, r7, r0
	ldr r3, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r4, #0x00]
	ldr r1, [r4, #0x04]
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x0D
	lsrs r2, r2, #0x0D
	bl _call_via_r3
	b _080186EC
_08018698: .4byte 0x04000004
_0801869C: .4byte 0x03001034
_080186A0: .4byte 0x08198154
_080186A4: .4byte 0x081980D8
_080186A8:
	ldr r0, [r4, #0x00]
	ldr r1, [r4, #0x04]
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x0D
	lsrs r2, r2, #0x0E
	bl CpuSet
	b _080186EC
_080186B8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080186D2
	ldr r0, [r4, #0x00]
	ldr r1, [r4, #0x04]
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x0D
	lsrs r2, r2, #0x0D
	ldr r3, [r6, #0x00]
	bl _call_via_r3
	b _080186EC
_080186D2:
	mov r1, sp
	ldr r0, [r4, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x04]
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x0D
	lsrs r2, r2, #0x0E
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
_080186EC:
	ldrb r1, [r4, #0x0A]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080186FC
	str r0, [r4, #0x04]
_080186FC:
	subs r5, #0x01
	adds r4, #0x10
	cmp r5, #0x00
	beq _08018712
	ldr r0, _08018780 @ =0x04000004
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0801866E
_08018712:
	movs r5, #0x00
	mov r9, r5
	ldr r6, _08018784 @ =0x0300034C
	mov r8, r6
	ldr r4, [r6, #0x04]
	ldrb r0, [r6, #0x08]
	subs r0, #0x01
	mov r12, r8
	cmp r9, r0
	bge _08018776
_08018726:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bne _08018766
	mov r3, r9
	adds r2, r4, #0x0
	ldr r7, _08018784 @ =0x0300034C
	ldrb r7, [r7, #0x08]
	cmp r9, r7
	bge _0801875E
	ldr r1, _08018784 @ =0x0300034C
	movs r0, #0x00
	mov r10, r0
_0801873E:
	adds r3, #0x01
	adds r2, #0x10
	ldrb r5, [r1, #0x08]
	cmp r3, r5
	bge _0801875E
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	beq _0801873E
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	mov r6, r10
	str r6, [r2, #0x04]
_0801875E:
	ldr r7, _08018784 @ =0x0300034C
	ldrb r7, [r7, #0x08]
	cmp r3, r7
	beq _08018776
_08018766:
	movs r0, #0x01
	add r9, r0
	adds r4, #0x10
	mov r1, r8
	ldrb r0, [r1, #0x08]
	subs r0, #0x01
	cmp r9, r0
	blt _08018726
_08018776:
	movs r2, #0x00
	mov r5, r12
	ldr r1, [r5, #0x04]
	b _0801878C
	.byte 0x00, 0x00
_08018780: .4byte 0x04000004
_08018784: .4byte 0x0300034C
_08018788:
	adds r1, #0x10
	adds r2, #0x01
_0801878C:
	ldr r0, [r1, #0x04]
	cmp r0, #0x00
	bne _08018788
	mov r6, r12
	strb r2, [r6, #0x08]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80187A8
sub_80187A8:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_8018818
sub_8018818:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	ldr r4, _08018918 @ =0x0300034C
	adds r0, r4, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	ldrh r0, [r4, #0x28]
	lsrs r1, r1, #0x16
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r3, sp
	lsrs r0, r1, #0x16
	movs r2, #0x01
	ands r0, r2
	strb r0, [r3, #0x00]
	lsrs r0, r1, #0x14
	ands r0, r2
	strb r0, [r3, #0x01]
	lsrs r0, r1, #0x17
	ands r0, r2
	strb r0, [r3, #0x02]
	mov r0, sp
	lsrs r1, r1, #0x15
	ands r1, r2
	strb r1, [r0, #0x03]
	movs r6, #0x00
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r0, [r0, #0x00]
	lsls r3, r0, #0x1C
	lsrs r0, r3, #0x1E
	mov r8, r4
	cmp r6, r0
	bge _0801888A
	mov r2, sp
	mov r12, r3
	ldrb r5, [r2, #0x02]
	ldrb r0, [r2, #0x01]
	mov r9, r0
_08018870:
	ldrb r3, [r2, #0x00]
	strb r1, [r2, #0x00]
	adds r1, r5, #0x0
	mov r5, r9
	mov r9, r3
	adds r6, #0x01
	mov r4, r12
	lsrs r0, r4, #0x1E
	cmp r6, r0
	blt _08018870
	strb r3, [r2, #0x01]
	strb r5, [r2, #0x02]
	strb r1, [r2, #0x03]
_0801888A:
	mov r3, r8
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080188A6
	mov r0, sp
	ldrb r2, [r0, #0x00]
	mov r1, sp
	ldrb r0, [r0, #0x02]
	strb r0, [r1, #0x00]
	mov r0, sp
	strb r2, [r0, #0x02]
_080188A6:
	ldrb r1, [r3, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080188BE
	mov r0, sp
	ldrb r2, [r0, #0x01]
	mov r1, sp
	ldrb r0, [r0, #0x03]
	strb r0, [r1, #0x01]
	mov r0, sp
	strb r2, [r0, #0x03]
_080188BE:
	ldr r0, _0801891C @ =0x0000FF0F
	ands r7, r0
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x06
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x04
	orrs r1, r0
	mov r0, sp
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x07
	orrs r1, r0
	mov r0, sp
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x05
	orrs r1, r0
	orrs r7, r1
	mov r4, r8
	adds r4, #0x7C
	ldrh r1, [r4, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x3C]
	bics r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x3C]
	mov r0, r8
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	orrs r7, r0
	ldrh r0, [r4, #0x00]
	orrs r7, r0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x01
	bl sub_8018920
	strh r5, [r4, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018918: .4byte 0x0300034C
_0801891C: .4byte 0x0000FF0F
	thumb_func_start sub_8018920
sub_8018920:
	push {r4, r5, r6, r7, lr}
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	ldr r1, _08018960 @ =0x03000374
	adds r2, r2, r1
	lsls r0, r0, #0x16
	lsrs r5, r0, #0x16
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	bics r0, r1
	strh r0, [r2, #0x02]
	bics r1, r5
	strh r1, [r2, #0x04]
	movs r4, #0x00
	ldrh r7, [r2, #0x00]
	mov r12, r4
	adds r3, r2, #0x0
	adds r3, #0x0A
	ldr r6, _08018964 @ =0x0839EC6C
_08018948:
	ldrh r1, [r6, #0x00]
	ands r1, r5
	cmp r1, #0x00
	beq _0801897C
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018968
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x00]
	b _0801897E
_08018960: .4byte 0x03000374
_08018964: .4byte 0x0839EC6C
_08018968:
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0801897E
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x00]
	b _0801897E
_0801897C:
	strb r1, [r3, #0x00]
_0801897E:
	ldrh r1, [r6, #0x02]
	ands r1, r5
	cmp r1, #0x00
	beq _080189AA
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018996
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x01]
	b _080189AC
_08018996:
	ldrb r0, [r3, #0x01]
	subs r0, #0x01
	strb r0, [r3, #0x01]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080189AC
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x01]
	b _080189AC
_080189AA:
	strb r1, [r3, #0x01]
_080189AC:
	adds r3, #0x02
	adds r6, #0x04
	movs r0, #0x02
	add r12, r0
	mov r0, r12
	cmp r0, #0x07
	bls _08018948
	strh r4, [r2, #0x06]
	strh r5, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
