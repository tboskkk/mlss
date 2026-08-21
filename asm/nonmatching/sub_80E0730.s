	.syntax unified
	.text

	thumb_func_start sub_80E0730
sub_80E0730:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0x0
	ldr r0, _080E0844 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E083A
	ldr r0, _080E0848 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r4, _080E084C @ =0x000052F0
	add r4, r8
	movs r5, #0x9C
	lsls r5, r5, #0x02
	adds r0, r1, r5
	ldrb r3, [r0, #0x00]
	ldr r1, _080E0850 @ =0x08198584
	movs r0, #0xFF
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _080E076E
	adds r0, #0x3F
_080E076E:
	asrs r7, r0, #0x06
	ldr r0, _080E0854 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080E077E
	adds r0, #0x3F
_080E077E:
	asrs r6, r0, #0x06
	cmp r3, #0x00
	beq _080E083A
	mov r12, r4
	adds r5, r3, #0x0
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080E07CC
	ldr r1, [r4, #0x08]
	ldr r3, [r4, #0x00]
	adds r2, r1, #0x0
	muls r2, r7
	adds r0, r3, #0x0
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E07A4
	adds r0, #0xFF
_080E07A4:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x08]
	adds r2, r3, #0x0
	muls r2, r7
	adds r0, r1, #0x0
	muls r0, r6
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E07BA
	adds r0, #0xFF
_080E07BA:
	asrs r0, r0, #0x08
	mov r3, r12
	str r0, [r3, #0x00]
	ldr r0, _080E0858 @ =0x000052FC
	add r0, r8
	mov r12, r0
	subs r5, #0x01
	cmp r5, #0x00
	beq _080E083A
_080E07CC:
	mov r2, r12
	ldr r1, [r2, #0x08]
	ldr r3, [r2, #0x00]
	adds r2, r1, #0x0
	muls r2, r7
	adds r0, r3, #0x0
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E07E2
	adds r0, #0xFF
_080E07E2:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x08]
	adds r2, r3, #0x0
	muls r2, r7
	adds r0, r1, #0x0
	muls r0, r6
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E07F8
	adds r0, #0xFF
_080E07F8:
	asrs r0, r0, #0x08
	mov r3, r12
	str r0, [r3, #0x00]
	mov r4, r12
	adds r4, #0x0C
	ldr r1, [r4, #0x08]
	ldr r3, [r3, #0x0C]
	adds r2, r1, #0x0
	muls r2, r7
	adds r0, r3, #0x0
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E0816
	adds r0, #0xFF
_080E0816:
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	adds r2, r3, #0x0
	muls r2, r7
	adds r0, r1, #0x0
	muls r0, r6
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E082A
	adds r0, #0xFF
_080E082A:
	asrs r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x0C]
	movs r2, #0x18
	add r12, r2
	subs r5, #0x02
	cmp r5, #0x00
	bne _080E07CC
_080E083A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E0844: .4byte 0x03000FD8
_080E0848: .4byte 0x03000FDC
_080E084C: .4byte 0x000052F0
_080E0850: .4byte 0x08198584
_080E0854: .4byte 0x08198504
_080E0858: .4byte 0x000052FC
