	.syntax unified
	.text

	thumb_func_start sub_80F889C
sub_80F889C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _080F88B6
	cmp r0, #0x01
	beq _080F88BC
	ldr r0, [r4, #0x2C]
	b _080F88CC
_080F88B6:
	ldr r6, [r4, #0x2C]
	adds r0, r6, #0x0
	b _080F88CC
_080F88BC:
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r4, #0x2C]
	adds r6, r1, r0
	adds r0, r1, #0x0
_080F88CC:
	adds r1, r7, #0x0
	adds r1, #0x18
	ldr r3, _080F88FC @ =0x00001794
	adds r2, r0, r3
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r4, #0x00
	ldsh r0, [r5, r4]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldrh r4, [r0, #0x00]
	movs r0, #0x01
	ands r0, r4
	str r0, [sp, #0x004]
	mov r0, r12
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F88FC: .4byte 0x00001794
