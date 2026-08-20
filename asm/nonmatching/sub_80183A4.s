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
