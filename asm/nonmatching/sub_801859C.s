	.syntax unified
	.text

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
