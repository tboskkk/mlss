	.syntax unified
	.text

	thumb_func_start sub_80F8438
sub_80F8438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	mov r8, r3
	ldr r0, [r4, #0x04]
	cmp r0, #0x01
	beq _080F8468
	cmp r0, #0x01
	bgt _080F8458
	cmp r0, #0x00
	beq _080F845E
	b _080F847C
_080F8458:
	cmp r0, #0x02
	beq _080F8472
	b _080F847C
_080F845E:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F78C4
	b _080F847A
_080F8468:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F7868
	b _080F847A
_080F8472:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F7804
_080F847A:
	adds r6, r0, #0x0
_080F847C:
	adds r1, r7, #0x0
	adds r1, #0x18
	ldr r2, [r5, #0x2C]
	ldr r0, _080F84A8 @ =0x00001794
	adds r2, r2, r0
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r4, r5]
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r0, r8
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F84A8: .4byte 0x00001794
