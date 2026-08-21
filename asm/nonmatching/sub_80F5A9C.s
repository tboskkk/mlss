	.syntax unified
	.text

	thumb_func_start sub_80F5A9C
sub_80F5A9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r3, r1, #0x0
	ldr r0, _080F5AC0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F5AC4
	cmp r0, #0x01
	beq _080F5B12
	b _080F5B36
_080F5AC0: .4byte 0x03000FD8
_080F5AC4:
	ldr r7, [r2, #0x00]
	movs r0, #0x00
	mov r8, r0
	adds r6, r5, #0x0
	adds r6, #0xF6
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, r7
	bgt _080F5B0A
	ldr r4, _080F5AEC @ =0x00000111
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F5AF0
	ldr r0, [r3, #0x14]
	str r0, [r3, #0x00]
	movs r0, #0x00
	b _080F5B4E
_080F5AEC: .4byte 0x00000111
_080F5AF0:
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8086700
	mov r0, r8
	strh r0, [r6, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	mov r1, r8
	strh r1, [r0, #0x00]
	b _080F5B3A
_080F5B0A:
	ldrh r0, [r6, #0x00]
	subs r0, r0, r7
	strh r0, [r6, #0x00]
	b _080F5B36
_080F5B12:
	ldr r7, [r2, #0x00]
	movs r4, #0x03
	mov r8, r4
	adds r2, r5, #0x0
	adds r2, #0xF6
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r1, r3, r7
	adds r0, r5, #0x0
	adds r0, #0xF8
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _080F5B30
	subs r7, r0, r3
_080F5B30:
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	strh r0, [r2, #0x00]
_080F5B36:
	adds r4, r5, #0x0
	adds r4, #0x08
_080F5B3A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	mov r2, r8
	movs r3, #0x00
	bl sub_807D5E8
	movs r0, #0x01
_080F5B4E:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
