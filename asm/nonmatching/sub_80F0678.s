	.syntax unified
	.text

	thumb_func_start sub_80F0678
sub_80F0678:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	mov r9, r3
	ldr r1, [r6, #0x14]
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x02
	adds r1, #0x28
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bne _080F06BA
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	ldr r3, [r4, #0x0C]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
	bl sub_80EA670
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080F06BA:
	mov r1, r8
	adds r1, #0x18
	ldr r0, _080F06E8 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	movs r0, #0xE3
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r9
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F06E8: .4byte 0x03000FC0
