	.syntax unified
	.text

	thumb_func_start sub_80E85C4
sub_80E85C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x00C]
	adds r7, r1, #0x0
	ldrh r0, [r7, #0x3C]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x01
	bge _080E85E0
	b _080E86EC
_080E85E0:
	cmp r1, #0x02
	ble _080E85EA
	cmp r1, #0x03
	beq _080E866C
	b _080E86EC
_080E85EA:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E85F6
	adds r0, r1, #0x7
_080E85F6:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r5, r0, #0x0
	cmp r0, #0x00
	bge _080E860C
	adds r5, r0, #0x7
_080E860C:
	asrs r5, r5, #0x03
	lsls r5, r5, #0x03
	subs r5, r0, r5
	movs r3, #0x38
	adds r3, r3, r7
	mov r10, r3
	ldrb r4, [r3, #0x00]
	movs r0, #0x39
	adds r0, r0, r7
	mov r9, r0
	ldrb r6, [r0, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r1, _080E8664 @ =0x03000F8C
	mov r12, r1
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r2
	adds r2, #0x08
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r3, r5, #0x0
	adds r3, #0x08
	subs r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x0D
	add r8, r4
	mov r4, r8
	str r4, [sp, #0x000]
	subs r6, #0x01
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x0D
	adds r5, r5, r6
	str r5, [sp, #0x004]
	ldr r4, _080E8668 @ =0x55555555
	str r4, [sp, #0x008]
	mov r5, r12
	ldr r4, [r5, #0x00]
	bl _call_via_r4
	mov r2, r10
	mov r5, r9
	b _080E874C
	.byte 0x00, 0x00
_080E8664: .4byte 0x03000F8C
_080E8668: .4byte 0x55555555
_080E866C:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E8678
	adds r0, r1, #0x7
_080E8678:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r5, r0, #0x0
	cmp r0, #0x00
	bge _080E868E
	adds r5, r0, #0x7
_080E868E:
	asrs r5, r5, #0x03
	lsls r5, r5, #0x03
	subs r5, r0, r5
	adds r3, r7, #0x0
	adds r3, #0x38
	str r3, [sp, #0x010]
	ldrb r4, [r3, #0x00]
	movs r0, #0x39
	adds r0, r0, r7
	mov r9, r0
	ldrb r6, [r0, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r1, _080E86E4 @ =0x03000F8C
	mov r12, r1
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r2
	adds r2, #0x08
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r3, r5, #0x0
	adds r3, #0x08
	subs r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x0D
	add r8, r4
	mov r4, r8
	str r4, [sp, #0x000]
	subs r6, #0x01
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x0D
	adds r5, r5, r6
	str r5, [sp, #0x004]
	ldr r4, _080E86E8 @ =0x88888888
	str r4, [sp, #0x008]
	mov r5, r12
	ldr r4, [r5, #0x00]
	bl _call_via_r4
	ldr r2, [sp, #0x010]
	mov r5, r9
	b _080E874C
_080E86E4: .4byte 0x03000F8C
_080E86E8: .4byte 0x88888888
_080E86EC:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E86F8
	adds r0, r1, #0x7
_080E86F8:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r3, r0, #0x0
	cmp r0, #0x00
	bge _080E870E
	adds r3, r0, #0x7
_080E870E:
	asrs r3, r3, #0x03
	lsls r3, r3, #0x03
	subs r3, r0, r3
	movs r4, #0x38
	adds r4, r4, r7
	mov r9, r4
	ldrb r4, [r4, #0x00]
	movs r5, #0x39
	adds r5, r5, r7
	mov r8, r5
	ldrb r5, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r6, _080E87A4 @ =0x03000F8C
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r4, r4, #0x03
	adds r4, r2, r4
	str r4, [sp, #0x000]
	lsls r5, r5, #0x03
	adds r5, r3, r5
	str r5, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	ldr r4, [r6, #0x00]
	bl _call_via_r4
	mov r2, r9
	mov r5, r8
_080E874C:
	ldr r0, [r7, #0x2C]
	ldr r3, [sp, #0x00C]
	ldr r1, [r3, #0x04]
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	ldrb r3, [r2, #0x00]
	adds r3, #0x01
	ldrb r2, [r5, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x02
	muls r2, r3
	lsls r2, r2, #0x03
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	adds r2, r7, #0x0
	strb r4, [r2, #0x0C]
	movs r0, #0x36
	ldsh r1, [r2, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E8784
	adds r0, r1, #0x7
_080E8784:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r3, #0x0
	adds r4, #0x09
	ldrb r0, [r5, #0x00]
	subs r1, r0, #0x4
	cmp r1, #0x05
	bgt _080E87AC
	ldr r0, _080E87A8 @ =0x083B9530
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	adds r0, r4, r0
	b _080E87B0
_080E87A4: .4byte 0x03000F8C
_080E87A8: .4byte 0x083B9530
_080E87AC:
	adds r0, r3, #0x0
	adds r0, #0x0C
_080E87B0:
	strb r0, [r2, #0x0D]
	ldrb r0, [r2, #0x12]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	subs r0, #0x01
	ands r1, r0
	subs r0, #0x0A
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0x12]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
