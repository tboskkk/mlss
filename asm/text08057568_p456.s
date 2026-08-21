	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E05B0
sub_80E05B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	ldr r0, _080E0718 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E05CE
	b _080E0708
_080E05CE:
	ldr r0, _080E071C @ =0x03000FDC
	ldr r5, [r0, #0x00]
	ldr r7, _080E0720 @ =0x000052F0
	adds r7, r7, r5
	mov r9, r7
	adds r3, #0x10
	adds r0, r1, r3
	ldrb r6, [r0, #0x00]
	ldr r1, _080E0724 @ =0x08198584
	movs r0, #0xFF
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _080E05F2
	adds r0, #0x3F
_080E05F2:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _080E0728 @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080E0604
	adds r0, #0x3F
_080E0604:
	asrs r7, r0, #0x06
	cmp r6, #0x00
	ble _080E06C6
	ldr r2, _080E072C @ =0x000052F4
	adds r2, r2, r5
	mov r12, r2
	adds r4, r6, #0x0
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _080E0658
	ldr r1, [r2, #0x00]
	ldr r3, [r2, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E062E
	adds r0, #0xFF
_080E062E:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x00]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0644
	adds r0, #0xFF
_080E0644:
	asrs r0, r0, #0x08
	mov r3, r12
	str r0, [r3, #0x04]
	movs r0, #0xA6
	lsls r0, r0, #0x07
	adds r0, r0, r5
	mov r12, r0
	subs r4, r6, #0x1
	cmp r4, #0x00
	beq _080E06C6
_080E0658:
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r3, [r2, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E066E
	adds r0, #0xFF
_080E066E:
	asrs r0, r0, #0x08
	mov r5, r12
	str r0, [r5, #0x00]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0684
	adds r0, #0xFF
_080E0684:
	asrs r0, r0, #0x08
	mov r1, r12
	str r0, [r1, #0x04]
	mov r5, r12
	adds r5, #0x0C
	ldr r1, [r1, #0x0C]
	ldr r3, [r5, #0x04]
	mov r2, r8
	muls r2, r1
	adds r0, r3, #0x0
	muls r0, r7
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E06A2
	adds r0, #0xFF
_080E06A2:
	asrs r0, r0, #0x08
	mov r2, r12
	str r0, [r2, #0x0C]
	mov r2, r8
	muls r2, r3
	adds r0, r1, #0x0
	muls r0, r7
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E06B8
	adds r0, #0xFF
_080E06B8:
	asrs r0, r0, #0x08
	str r0, [r5, #0x04]
	movs r3, #0x18
	add r12, r3
	subs r4, #0x02
	cmp r4, #0x00
	bne _080E0658
_080E06C6:
	mov r5, r8
	cmp r5, #0x00
	bge _080E0708
	movs r4, #0x00
	subs r6, #0x01
	cmp r4, r6
	bge _080E0708
	lsls r0, r6, #0x01
	adds r0, r0, r6
	lsls r0, r0, #0x02
	add r0, r9
	mov r8, r0
	mov r2, r9
_080E06E0:
	mov r1, sp
	adds r0, r2, #0x0
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	adds r1, r2, #0x0
	mov r0, r8
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	mov r1, r8
	mov r0, sp
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	adds r2, #0x0C
	adds r4, #0x01
	movs r7, #0x0C
	negs r7, r7
	add r8, r7
	subs r6, #0x01
	cmp r4, r6
	blt _080E06E0
_080E0708:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E0718: .4byte 0x03000FD8
_080E071C: .4byte 0x03000FDC
_080E0720: .4byte 0x000052F0
_080E0724: .4byte 0x08198584
_080E0728: .4byte 0x08198504
_080E072C: .4byte 0x000052F4
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
	thumb_func_start sub_80E085C
sub_80E085C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	ldr r0, _080E09C4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0x98
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E087C
	b _080E09B2
_080E087C:
	ldr r0, _080E09C8 @ =0x03000FDC
	ldr r6, [r0, #0x00]
	ldr r4, _080E09CC @ =0x000052F0
	adds r4, r4, r6
	mov r9, r4
	movs r7, #0x9C
	lsls r7, r7, #0x02
	adds r0, r1, r7
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r1, _080E09D0 @ =0x08198584
	movs r0, #0xFF
	ands r0, r2
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _080E08A4
	adds r0, #0x3F
_080E08A4:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _080E09D4 @ =0x08198504
	adds r0, r2, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080E08B6
	adds r0, #0x3F
_080E08B6:
	asrs r0, r0, #0x06
	mov r12, r0
	mov r7, r10
	cmp r7, #0x00
	ble _080E096C
	mov r3, r9
	mov r5, r10
	movs r0, #0x01
	ands r0, r7
	cmp r0, #0x00
	beq _080E0908
	ldr r4, [r3, #0x00]
	ldr r1, [r3, #0x04]
	mov r2, r8
	muls r2, r4
	mov r0, r12
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E08E0
	adds r0, #0xFF
_080E08E0:
	asrs r0, r0, #0x08
	mov r2, r9
	str r0, [r2, #0x00]
	mov r2, r8
	muls r2, r1
	mov r0, r12
	muls r0, r4
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E08F6
	adds r0, #0xFF
_080E08F6:
	asrs r0, r0, #0x08
	mov r3, r9
	str r0, [r3, #0x04]
	ldr r4, _080E09D8 @ =0x000052FC
	adds r3, r6, r4
	mov r5, r10
	subs r5, #0x01
	cmp r5, #0x00
	beq _080E096C
_080E0908:
	ldr r4, [r3, #0x00]
	ldr r1, [r3, #0x04]
	mov r2, r8
	muls r2, r4
	mov r0, r12
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E091C
	adds r0, #0xFF
_080E091C:
	asrs r0, r0, #0x08
	str r0, [r3, #0x00]
	mov r2, r8
	muls r2, r1
	mov r0, r12
	muls r0, r4
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0930
	adds r0, #0xFF
_080E0930:
	asrs r0, r0, #0x08
	str r0, [r3, #0x04]
	adds r6, r3, #0x0
	adds r6, #0x0C
	ldr r4, [r3, #0x0C]
	ldr r1, [r6, #0x04]
	mov r2, r8
	muls r2, r4
	mov r0, r12
	muls r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080E094C
	adds r0, #0xFF
_080E094C:
	asrs r0, r0, #0x08
	str r0, [r3, #0x0C]
	mov r2, r8
	muls r2, r1
	mov r0, r12
	muls r0, r4
	adds r0, r2, r0
	cmp r0, #0x00
	bge _080E0960
	adds r0, #0xFF
_080E0960:
	asrs r0, r0, #0x08
	str r0, [r6, #0x04]
	adds r3, #0x18
	subs r5, #0x02
	cmp r5, #0x00
	bne _080E0908
_080E096C:
	mov r6, r8
	cmp r6, #0x00
	bge _080E09B2
	movs r5, #0x00
	movs r7, #0x01
	negs r7, r7
	add r10, r7
	cmp r5, r10
	bge _080E09B2
	mov r1, r10
	lsls r0, r1, #0x01
	add r0, r10
	lsls r0, r0, #0x02
	mov r2, r9
	adds r3, r0, r2
_080E098A:
	mov r1, sp
	adds r0, r2, #0x0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	adds r1, r2, #0x0
	adds r0, r3, #0x0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	adds r1, r3, #0x0
	mov r0, sp
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	adds r2, #0x0C
	adds r5, #0x01
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	add r10, r0
	cmp r5, r10
	blt _080E098A
_080E09B2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E09C4: .4byte 0x03000FD8
_080E09C8: .4byte 0x03000FDC
_080E09CC: .4byte 0x000052F0
_080E09D0: .4byte 0x08198584
_080E09D4: .4byte 0x08198504
_080E09D8: .4byte 0x000052FC
