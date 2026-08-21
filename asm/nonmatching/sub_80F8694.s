	.syntax unified
	.text

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
