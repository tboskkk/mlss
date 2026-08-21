	.syntax unified
	.text

	thumb_func_start sub_80F84AC
sub_80F84AC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	mov r8, r3
	movs r0, #0x04
	ldsh r1, [r4, r0]
	ldr r2, [r4, #0x08]
	adds r0, r6, #0x0
	bl sub_80F6B44
	adds r1, r5, #0x0
	adds r1, #0x18
	ldr r2, [r6, #0x2C]
	ldr r3, _080F84F4 @ =0x00001794
	adds r2, r2, r3
	adds r5, #0xA8
	movs r6, #0x00
	ldsh r3, [r4, r6]
	str r3, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r3, r5, #0x0
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F84F4: .4byte 0x00001794
