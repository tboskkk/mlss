	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F857C
sub_80F857C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F858A
	cmp r2, #0x01
	beq _080F859C
	b _080F85AA
_080F858A:
	ldr r0, _080F8598 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x01
	b _080F85A8
_080F8598: .4byte 0x03000FD8
_080F859C:
	ldr r0, _080F85B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
_080F85A8:
	strb r1, [r0, #0x00]
_080F85AA:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F85B0: .4byte 0x03000FD8
	thumb_func_start sub_80F85B4
sub_80F85B4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x04
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x08
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r4, [r4, #0x00]
	cmp r4, #0x07
	bgt _080F85FC
	ldr r0, _080F85F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F860C
	.byte 0x00, 0x00
_080F85F8: .4byte 0x03000FD8
_080F85FC:
	ldr r1, _080F8620 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F860C:
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8620: .4byte 0x03000FDC
	thumb_func_start sub_80F8624
sub_80F8624:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F8640 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F8644
	subs r0, #0x01
	b _080F8646
_080F8640: .4byte 0x0000179C
_080F8644:
	subs r0, #0x07
_080F8646:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r6, #0x04]
	adds r2, r2, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r3, [r6, #0x08]
	adds r3, r3, r0
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	bl sub_80F79F0
	movs r0, #0x00
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F8694
sub_80F8694:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F86AC @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F86B0
	subs r0, #0x01
	b _080F86B2
	.byte 0x00, 0x00
_080F86AC: .4byte 0x0000179C
_080F86B0:
	subs r0, #0x07
_080F86B2:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r0, #0x00
	ldsh r3, [r4, r0]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_80F79F0
	movs r0, #0x00
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
