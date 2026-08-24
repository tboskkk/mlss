	.syntax unified
	.text

	thumb_func_start sub_80E94AC
sub_80E94AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	mov r9, r1
	mov r8, r2
	adds r5, r3, #0x0
	movs r7, #0x00
	str r7, [r6, #0x0C]
	str r7, [r6, #0x00]
	cmp r2, #0x00
	beq _080E9584
	cmp r5, #0x00
	beq _080E9584
	lsls r4, r5, #0x01
	adds r4, r4, r5
	lsls r4, r4, #0x02
	ldr r2, _080E9504 @ =0x08200188
	movs r0, #0x01
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r6, #0x0C]
	ldr r0, _080E9508 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [r6, #0x0C]
	str r0, [r6, #0x04]
	str r7, [r0, #0x00]
	ldr r2, [r6, #0x0C]
	mov r0, r9
	str r0, [r2, #0x04]
	mov r0, r8
	str r0, [r2, #0x08]
	subs r5, #0x01
	cmp r5, #0x00
	bne _080E950C
	str r5, [r6, #0x08]
	b _080E9584
_080E9504: .4byte dword_8200188 @ =0x08200188
_080E9508: .4byte 0x03001034
_080E950C:
	subs r5, #0x01
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x02
	adds r4, r2, r0
	str r4, [r6, #0x08]
	cmp r5, #0x00
	beq _080E9580
	adds r3, r0, #0x0
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _080E9552
	cmp r1, #0x03
	bge _080E9546
	cmp r1, #0x02
	bge _080E953A
	subs r3, #0x0C
	subs r5, #0x01
	adds r0, r2, r3
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
_080E953A:
	subs r3, #0x0C
	subs r5, #0x01
	ldr r0, [r6, #0x0C]
	adds r0, r0, r3
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
_080E9546:
	subs r3, #0x0C
	subs r5, #0x01
	ldr r0, [r6, #0x0C]
	adds r0, r0, r3
	str r0, [r4, #0x00]
	b _080E957A
_080E9552:
	adds r1, r3, #0x0
	subs r1, #0x0C
	ldr r0, [r6, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r2, r3, #0x0
	subs r2, #0x18
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	str r1, [r0, #0x00]
	adds r0, r3, #0x0
	subs r0, #0x24
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	str r2, [r1, #0x00]
	subs r3, #0x30
	subs r5, #0x04
	ldr r0, [r6, #0x0C]
	adds r0, r0, r3
	str r0, [r2, #0x00]
_080E957A:
	adds r4, r0, #0x0
	cmp r5, #0x00
	bne _080E9552
_080E9580:
	movs r0, #0x00
	str r0, [r4, #0x00]
_080E9584:
	adds r0, r6, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
