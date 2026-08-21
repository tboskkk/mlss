	.syntax unified
	.text

	thumb_func_start sub_80F0184
sub_80F0184:
	push {r4, r5, lr}
	ldr r5, _080F01C4 @ =0x03000FD0
	ldr r0, [r5, #0x00]
	ldr r4, _080F01C8 @ =0x000004AC
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r5, _080F01CC @ =0x03000FCC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01AC
	movs r1, #0x03
	bl sub_80E5968
	str r4, [r5, #0x00]
_080F01AC:
	ldr r5, _080F01D0 @ =0x03000FC8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01BC
	movs r1, #0x03
	bl sub_80E8EFC
	str r4, [r5, #0x00]
_080F01BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F01C4: .4byte 0x03000FD0
_080F01C8: .4byte 0x000004AC
_080F01CC: .4byte 0x03000FCC
_080F01D0: .4byte 0x03000FC8
