	.syntax unified
	.text

	thumb_func_start sub_80F034C
sub_80F034C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r8, r1
	ldr r2, [r4, #0x00]
	ldr r3, _080F03BC @ =0x08CDC2F8
	str r3, [r2, #0x18]
	cmp r1, #0x00
	bne _080F037E
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r4, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F037E:
	bl sub_80E8DC0
	ldr r0, _080F03C0 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080F03A0
	ldr r0, [r4, #0x00]
	ldr r1, _080F03C4 @ =0x08CDBD68
	str r1, [r0, #0x18]
	movs r1, #0x00
	bl process_remove
_080F03A0:
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080F03B0
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080F03B0:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F03BC: .4byte word_8CDC2F8 @ =0x08CDC2F8
_080F03C0: .4byte 0x03000FD0
_080F03C4: .4byte 0x08CDBD68
